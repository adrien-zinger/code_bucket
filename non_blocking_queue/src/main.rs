use std::sync::{
    atomic::{AtomicPtr, AtomicU32, Ordering},
    Arc,
};

struct NonBlockingQueue {
    head: AtomicPtr<Ptr>,
    tail: AtomicPtr<Ptr>,
}

struct Ptr {
    value: *const u32,
    count: AtomicU32,
    next: AtomicPtr<Ptr>,
}

impl NonBlockingQueue {
    fn new() -> Self {
        let ptr = Box::new(Ptr {
            value: core::ptr::null(),
            count: AtomicU32::default(),
            next: AtomicPtr::default(),
        });

        let ptr: *mut Ptr = Box::leak(ptr);

        Self {
            head: AtomicPtr::new(ptr),
            tail: AtomicPtr::new(ptr),
        }
    }

    fn enqueue(&self, value: *const u32) {
        let ptr = Box::new(Ptr {
            value,
            count: AtomicU32::default(),
            next: AtomicPtr::default(),
        });

        let ptr = Box::into_raw(ptr);

        loop {
            let tail = self.tail.load(Ordering::Acquire);
            let next = unsafe { (*tail).next.load(Ordering::Acquire) };
            if tail == self.tail.load(Ordering::Acquire) {
                if next.is_null() {
                    unsafe {
                        (*ptr)
                            .count
                            .store((*tail).count.load(Ordering::Acquire) + 1, Ordering::Release);
                        if (*tail)
                            .next
                            .compare_exchange(next, ptr, Ordering::Acquire, Ordering::Acquire)
                            .is_ok()
                        {
                            let _ = self.tail.compare_exchange(
                                tail,
                                ptr,
                                Ordering::Acquire,
                                Ordering::Acquire,
                            );

                            return;
                        }
                    }
                } else {
                    let _ = self.tail.compare_exchange(
                        tail,
                        next,
                        Ordering::Acquire,
                        Ordering::Acquire,
                    );
                }
            }
        }
    }

    fn dequeue(&self) -> Option<*const u32> {
        loop {
            let head = self.head.load(Ordering::Acquire);
            let tail = self.tail.load(Ordering::Acquire);
            let next = unsafe { (*head).next.load(Ordering::Acquire) };
            if head == self.head.load(Ordering::Acquire) {
                if std::ptr::eq(head, tail) {
                    if next.is_null() {
                        return None;
                    }
                    unsafe { (*next).count.fetch_add(1, Ordering::Acquire) };
                    let _ = self.tail.compare_exchange(
                        tail,
                        next,
                        Ordering::Acquire,
                        Ordering::Acquire,
                    );
                } else {
                    let ret = unsafe { (*next).value };
                    unsafe {
                        (*next)
                            .count
                            .store((*head).count.load(Ordering::Acquire) + 1, Ordering::Release);
                    };
                    if self
                        .head
                        .compare_exchange(head, next, Ordering::Acquire, Ordering::Acquire)
                        .is_ok()
                    {
                        // Le fait qu'on puisse déréférencer sans crainte dans cet algorithme
                        // réside dans le fait qu'on attende que cette echange soit fait. Après
                        // l'échange de head et next, la head précédente est inaxéssible à tout
                        // autre threads. Donc on ne se trouvera jamais avec un pointeur null à
                        // déréférencer.
                        unsafe { core::mem::drop(Box::from_raw(head)) };
                        return Some(ret);
                    }
                }
            }
        }
    }

    fn print(&self) {
        let mut curr = self.head.load(Ordering::Acquire);
        let mut next = unsafe { (*curr).next.load(Ordering::Acquire) };
        while !next.is_null() {
            println!("val {}", unsafe { *(*next).value });
            curr = unsafe { (*curr).next.load(Ordering::Acquire) };
            next = unsafe { (*curr).next.load(Ordering::Acquire) };
        }
    }
}

fn single_thread() {
    let q = NonBlockingQueue::new();
    let v = 5;
    q.enqueue(&v);
    println!("done");
    q.enqueue(&v);
    q.print();
    let v2 = q.dequeue().expect("some");
    println!("{}", unsafe { *v2 });
    q.dequeue().expect("some");
}

fn _multi_threads() {
    let q1 = Arc::new(NonBlockingQueue::new());
    let q2 = q1.clone();
    let v: *mut u32 = &mut 5;
    let value = AtomicPtr::new(v);
    let th = std::thread::spawn(move || {
        for _ in 0..100 {
            let v = value.load(Ordering::Acquire);
            q2.enqueue(v);
        }
    });

    let mut counter = 0;
    for _ in 0..200 {
        if q1.dequeue().is_some() {
            println!("dequeued {}", counter);
            counter += 1;
        }
    }

    th.join().expect("expected a end");
}

fn main() {
    single_thread();
    _multi_threads();
}

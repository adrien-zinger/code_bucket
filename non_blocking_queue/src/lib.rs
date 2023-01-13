#![crate_type = "staticlib"]

#[cfg(test)]
use std::sync::Arc;
use std::{
    ffi::c_void,
    sync::atomic::{AtomicPtr, AtomicU32, Ordering},
};

pub struct NonBlockingQueue<T> {
    head: AtomicPtr<Ptr<T>>,
    tail: AtomicPtr<Ptr<T>>,
}

struct Ptr<T> {
    value: *mut T,
    count: AtomicU32,
    next: AtomicPtr<Ptr<T>>,
}

impl<T> NonBlockingQueue<T> {
    pub fn new() -> Self {
        let ptr = Box::new(Ptr {
            value: core::ptr::null_mut(),
            count: AtomicU32::default(),
            next: AtomicPtr::default(),
        });

        let ptr: *mut Ptr<T> = Box::into_raw(ptr);

        Self {
            head: AtomicPtr::new(ptr),
            tail: AtomicPtr::new(ptr),
        }
    }

    pub fn enqueue(&self, value: *mut T) {
        let ptr = Box::new(Ptr {
            value,
            count: AtomicU32::default(),
            next: AtomicPtr::default(),
        });

        let ptr = Box::into_raw(ptr);

        loop {
            let tail = self.tail.load(Ordering::SeqCst);
            let next = unsafe { (*tail).next.load(Ordering::SeqCst) };
            if unsafe {
                (*tail).count.load(Ordering::SeqCst)
                    == (*self.tail.load(Ordering::SeqCst))
                        .count
                        .load(Ordering::SeqCst)
            } {
                if next.is_null() {
                    unsafe {
                        (*ptr)
                            .count
                            .store((*tail).count.load(Ordering::SeqCst) + 1, Ordering::SeqCst);
                        if (*tail)
                            .next
                            .compare_exchange(next, ptr, Ordering::SeqCst, Ordering::SeqCst)
                            .is_ok()
                        {
                            let _ = self.tail.compare_exchange(
                                tail,
                                ptr,
                                Ordering::SeqCst,
                                Ordering::SeqCst,
                            );

                            return;
                        }
                    }
                } else {
                    let _ =
                        self.tail
                            .compare_exchange(tail, next, Ordering::SeqCst, Ordering::SeqCst);
                }
            }
        }
    }

    pub fn dequeue(&self) -> Option<*mut T> {
        loop {
            let head = self.head.load(Ordering::SeqCst);
            let tail = self.tail.load(Ordering::SeqCst);
            let next = unsafe { (*head).next.load(Ordering::SeqCst) };
            if unsafe {
                (*head).count.load(Ordering::SeqCst)
                    == (*self.head.load(Ordering::SeqCst))
                        .count
                        .load(Ordering::SeqCst)
            } {
                if std::ptr::eq(head, tail) {
                    if next.is_null() {
                        return None;
                    }
                    unsafe { (*next).count.fetch_add(1, Ordering::SeqCst) };
                    let _ =
                        self.tail
                            .compare_exchange(tail, next, Ordering::SeqCst, Ordering::SeqCst);
                } else {
                    let ret = unsafe { (*next).value };
                    unsafe {
                        (*next)
                            .count
                            .store((*head).count.load(Ordering::SeqCst) + 1, Ordering::SeqCst);
                    };
                    if self
                        .head
                        .compare_exchange(head, next, Ordering::SeqCst, Ordering::SeqCst)
                        .is_ok()
                    {
                        // Le miracle qu'on puisse déréférencer sans crainte dans cet algorithme
                        // réside du fait qu'on attende que cette echange soit fait. Après
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
}

impl<T> Drop for NonBlockingQueue<T> {
    fn drop(&mut self) {
        while self.dequeue().is_some() {}

        let head = self.head.load(Ordering::SeqCst);
        unsafe { core::mem::drop(Box::from_raw(head)) };
    }
}

impl<T> Default for NonBlockingQueue<T> {
    fn default() -> Self {
        Self::new()
    }
}

#[no_mangle]
#[allow(clippy::missing_safety_doc)]
pub unsafe extern "C" fn new_queue() -> *mut c_void {
    let queue = Box::new(NonBlockingQueue::<c_void>::new());
    Box::into_raw(queue) as *mut c_void
}

#[no_mangle]
#[allow(clippy::missing_safety_doc)]
pub unsafe extern "C" fn push(queue: *mut c_void, value: *mut c_void) {
    (*(queue as *mut NonBlockingQueue<c_void>)).enqueue(value);
}

#[no_mangle]
#[allow(clippy::missing_safety_doc)]
pub unsafe extern "C" fn pop(queue: *mut c_void) -> *mut c_void {
    match (*(queue as *mut NonBlockingQueue<c_void>)).dequeue() {
        Some(value) => value,
        _ => core::ptr::null_mut(),
    }
}

#[no_mangle]
#[allow(clippy::missing_safety_doc)]
pub unsafe extern "C" fn free_queue(queue: *mut c_void) {
    std::mem::drop(Box::from_raw(queue as *mut NonBlockingQueue<c_void>));
}

#[cfg(test)]
fn single_thread() {
    let q = NonBlockingQueue::new();
    let mut v = 5;
    q.enqueue(&mut v);
    println!("done");
    q.enqueue(&mut v);
    let v2 = q.dequeue().expect("some");
    println!("{}", unsafe { *v2 });
    q.dequeue().expect("some");
}

#[cfg(test)]
fn _multi_threads() {
    let q1 = Arc::new(NonBlockingQueue::new());
    let q2 = q1.clone();
    let v: *mut u32 = &mut 5;
    let value = AtomicPtr::new(v);
    let th = std::thread::spawn(move || {
        for _ in 0..100 {
            let v = value.load(Ordering::SeqCst);
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

#[cfg(test)]
#[test]
fn multi_multi_threads() {
    let q1 = Arc::new(NonBlockingQueue::new());
    let q2 = q1.clone();
    let q3 = q1.clone();
    let v: *mut u32 = &mut 5;
    let value = AtomicPtr::new(v);
    let value2 = AtomicPtr::new(v);

    let th = std::thread::spawn(move || {
        for _ in 0..100 {
            let v = value.load(Ordering::SeqCst);
            q2.enqueue(v);
        }
    });

    let th2 = std::thread::spawn(move || {
        for _ in 0..100 {
            let v = value2.load(Ordering::SeqCst);
            q3.enqueue(v);
        }
    });

    std::thread::sleep(std::time::Duration::from_secs(1));
    let mut counter = 0;
    for _ in 0..300 {
        if q1.dequeue().is_some() {
            println!("dequeued {}", counter);
            counter += 1;
        }
    }

    println!("ho");

    th.join().expect("expected a end");
    th2.join().expect("expected a end");
}

#[test]
fn test_lib() {
    single_thread();
    //multi_threads();
}

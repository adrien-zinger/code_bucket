use non_blocking_queue::NonBlockingQueue;
use maybe_static::maybe_static;

struct Item(i8);
struct Container {
    queue: NonBlockingQueue<Item>,
}

impl Container {
    fn new() -> Self {
        Container {
            queue: NonBlockingQueue::<Item>::new(),
        }
    }
    fn add(&self, item: Item) -> &'static Item {
        let leak = Box::into_raw(Box::new(item));
        self.queue.enqueue(leak);
        unsafe { leak.as_ref().unwrap() }
    }
    unsafe fn clear(&self) {
        // Nettoyage des variable.  Ceci invalide toutes les references
        // récupérées précédemment. Il faut donc appeler cette fonction
        // en connaissance de cause.
        while let Some(raw) = self.queue.dequeue() {
            let _ = unsafe { Box::from_raw(raw) };
        }
    }
}


fn get_container() -> &'static Container {
    maybe_static!(Container, || Container::new())
}

fn store(item: Item) -> &'static Item {
    get_container().add(item)
}

fn main() {
    // make static
    let item_ref = store(Item(42));
    println!("{}", item_ref.0);

    // Nettoye seulement l'interieur mais ne détruit pas complètement le
    // Container.
    unsafe { get_container().clear() };
}

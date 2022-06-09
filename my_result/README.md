# Use the `Try` trait to create your own results


I often see in rust code that kind of stuff

```rust
fn foo() -> Result<Option<Option<WhatTheL>>> {
	// smart implementation
}
```

And I always wonder why we don't just return an enum. **Yes**, it's idiomatic,
and **yes**, sometimes you want to make a visual difference between an error
and a simple `Nothing to return`. In the case above `Something that contains
nothing`.

Let's look at another paradigm that we could apply in that case of hell.



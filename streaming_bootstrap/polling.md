## Polling solution

### Some words about polling

Polling can be used when you don't need real-time updates, which cause frequent
changes in data and can crash your system if you decide to receive updates every
single time something changes.

<p align="center">
  <img width="400" src="webhooks_vs_polling.png">
</p>

As you can see, polling take much more bandwidth than his cousin webhooks. This
is the reason why we prefer to think at webhooks when we have a realtime
problem. But the solution can be adopted if you don't care about speed and timing.

A famous tool used today in production use polling, maybe you now git? If
you're interested about how git http servers work today, have a look on their
protocol! [git-http-protocol](https://www.git-scm.com/docs/http-protocol)

Basically, to clone or fetch data from a git repository with a smart server,
a classic conversation looks like:

C: what do you have?
S: those heads
C: Give me that head from here
S: Ok, here it is

By repeating the step multiple times, you can hope to bootstrap a database in
realtime. But you need to include the concept of `HEAD` in the DB.

### Head

The concept of `HEAD` is a requirement to poll a database running in
production. The head of the database can be a checksum of any entry in the
database, a timestamp of the latest modification, a slot of modifications,
or anything that permit the check of data coherency between 2 versions, and
get a diff.

![](polling_flowchart.svg)

The head track an history of modifications. Each time the DB is updated, the
head move and if we can't recompute the diff in a reasonable time, we store the
modification in cache too. In the chart here, a client is about to bootstrap
the database. But between the first ask, and the send of a chunk, there is no
guaranty that database hasn't been updated. So the we need to send also
_diff(head_asked, db_head)_, and the new _head_ before asking another chunk.

We will see in the solution, why the client has to be fast.

### Solution

As the previous solution, we use some routes for our shared database. But we
changed some of these. Now, we have seen that in the chart in
[the head chapter](###head), we need to now the head. So we replaced the
`/size` route by `/info`. The command return a tuple (head, size) that will
initialize our copy database.

We also replaced the `/bootstrap` used to register our node, by `/fetch` that
is a GET command, use to fetch a limited chunk of database and update the
bootstrap progression status.

```rust
(&Method::GET, "/info") => Ok(Response::new(Body::from(
    serde_json::to_string(&db.info().await).unwrap(),
))),
(&Method::GET, "/fetch") => {
    let (begin, end, head) =
        deserialize::<(usize, usize, u32)>(&to_bytes(req.into_body()).await);
    Ok(Response::new(Body::from(
        serde_json::to_string(&db.fetch(begin, end, head).await).unwrap(),
    )))
}
```

The ShareDB, has also been updated, now, when we receive some modifications, we
notify the cache that something has just been modifyed and we keep an history
of the modifications. When we append something into the cache, we update the
head of the database. As well, fetchers can be aware of any new entries between
two fetch commands.

```rust
let mut guard = self.0.lock().await;
for m in &modifs {
    match m {
        EntryModif::Delete(key) => guard.data.remove(key),
        EntryModif::Update((key, val)) => guard.data.insert(key.clone(), val.clone()),
    };
}
guard.cache.append(modifs);
```

The fact that all modifications since the initialization are sent in the
fetches isn't enough to ensure consistency. Because of the ordering, even if
the size increased between two fetch calls, we risk to lost the data overflow.
To fix that, we also need to inform the fetcher about the new size of the
shared database.

```rust
pub async fn fetch(&self, begin: usize, end: usize, head: u32) -> FetchResult {
    let guard = self.0.lock().await;
    let entries = take_chunk(
        &guard.data,
        begin,
        std::cmp::min(crate::MAX_CHUNK_SIZE, end - begin),
    );
    FetchResult {
        head: guard.cache.head(),
        entries,
        diff: guard.cache.diff(head),
        db_len: guard.data.len(),
    }
}
```

The fetching loop is verbose but very straightforward, basically it update the
status of the bootstraping process and append monotonically his own
duplicated shared database.

The difference with the webhook solution is that the node has to understand
itself if he is enough up to date (in a _Stale_ state).

### Bandwidth, speed and multithreading

Polling takes bandwitdh, consider that instead of one call, we need to
continously fetch chunks of datas and keep a local state.

We cannot just increase the fetch calls period, because in a real production,
the cache just can't contains all modifications. Imagin that the bootstraper
node (the one that fetch), makes too much times between two fetches:
The remote can have lost some historic modifications and there is no reasonable
way to retrieve them. So the fetcher is forced to restart a full bootstrap.

The multithreading of the boostrap is not as easy than the webhook solution.
If the head increase monotonically, we can update ourself with the
`max_in(res_heads)`. But the bandwidth will jump if we split the calls between
remote nodes for the reason explained just in the next paragraph.

You can notice that we don't care about the localization in memory of the diff.
We always send all modifications, whatever the index in the database. Consider
limiting us to the asked chunk, or a new _begin/end_ limit. The complexity of
the filter will be very high. If you think about that, it also force us to
limit the size of the cache buffer.

```rust
/// Implementation of `ModifsCache`: diff(u32)
///
/// Get a list of EntryModif between the given `head` and the current
/// head of the SharedDB.
pub fn diff(&self, head: u32 /*, begin, end indexes */) -> Vec<EntryModif> {
    let mut ret = vec![];
    for (h, modifs) in &self.0 {
        if head == *h {
            break;
        } else {
            // add a filter here for each modification, find the index
            // in the BTreeMap and check if in range begin..end
            ret.append(&mut modifs.clone());
        }
    }
    ret
}
```

### Source code

You can find the full source code in the github repository [here](https://github.com/adrien-zinger/bootstrap_polling_sample).

<b>[&larr; webhook](webhook.md)</b>&emsp;&emsp;<b style="margin-left: 30px">[notes &rarr;](notes.md)</b>

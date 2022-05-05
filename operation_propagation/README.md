# Propagation in unstructured P2P

github preview [click here](http://htmlpreview.github.io/?https://github.com/adrien-zinger/presentations/blob/main/operation_propagation/github_preview.html)

I don't want to talk about a data that can be dead over time, here is a paper on [https://cs.stanford.edu/~jure/pubs/p2p-infocom07.pdf]

> Abstract— Consider a network of, say, sensors, or P2P nodes,
> or bluetooth-enabled cell-phones, where nodes transmit
> information to each other and where links and nodes can go up or
> down. Consider also a ‘datum’, that is, a piece of information,
> like a report of an emergency condition in a sensor network,
> a national traditional song, or a mobile phone virus. How often
> should nodes transmit the datum to each other, so that the datum
> can survive (or, in the virus case, under what conditions will the
> virus die out)? Clearly, the link and node fault probabilities are
> important — what else is needed to ascertain the survivability
> of the datum?
> We propose and solve the problem using non-linear dynamical
> systems and fixed point stability theorems. We provide a closed-
> form formula that, surprisingly, depends on only one additional
> parameter, the largest eigenvalue of the connectivity matrix.
> We illustrate the accuracy of our analysis on realistic and real
> settings, like mote sensor networks from Intel and MIT, as well
> as Gnutella and P2P networks.


For the moment, I want to talk about "persistent" data in
a relatively stable network, with no emergency.

## Problems

1. Reduce bandwidth of the general network
2. Increase the probability of a successful communication between peers
3. Don't propagate fake news.

The context is similar to a blockchain network that first need to propagate an
information in order to collect it in a pool of possible commands to apply.
Light propagation of an information, like an alert notification, in a network
is also a possible context.

There is a lot of very interesting papers about it. You can find mathematics,
theoretical formula about data persistency. I barely recommend to read a little
bit those paper because they reflects the rude reality of what your network can
endure in a big bug. The big bug for me is the fatal moment where the network
derail, you don't know how to reproduce it, _you know nothing_.

## The propagation

Consider that you get a network of nodes and each node can be the input for an
arbitrary user command. Any of the nodes know a set of other nodes in the 
network and communicate exclusively through that ones.

A dummy implementation would be to send to every connected nodes the
information. It works, but in an unstructured network, the distant
node cannot know which one already received the data. So if you send an
information, you will also receive it back. And more you get nodes, more you
will receive that data again and again.

We understand that more you're network grow up, more the global bandwidth will
be used. So we need a strategy to reduce that.

Strategies on the paper board:
1. Check before sending if the distant node already have or not the data.
2. Inject in the information a raw signature to inform that you forward it.
3. Send a SHA of the information and let distant ask for the full body if needed.

The first proposal seems similar to the third but weaker. And in a growable network
we cannot consider the second one.

// todo graph of data send
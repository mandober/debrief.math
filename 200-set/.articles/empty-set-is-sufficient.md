# The empty set is the sufficient set

The empty set is really the only necessary set, aside the general notion of sets as unordered collections.

Namely, whatever way (as a primitive/axiom, as a definition) we use to establish the existence of sets in general (as containers), we might as well use it again to establish the existence of the empty set.

We kick start math from scratch: there was only void, but a rebel yell "Let there be sets!" (+25 pts Fiat Lux) accomplishes seemingly nothing because we have absolutely nothing to put into sets. We need objects (+10 pts Side mission unlocked). An object can be put in a set, which promotes the object into an *element* (+100 pts Extra Attribute) or a *member* (+10 Synonymous Mouse) of that set. An object is really anything conceivable, including sets (+200 Level Up). We can use sets as bona fide objects and put sets into sets. However, how do we handle "sets"? It would be preferable to have one concrete set, particularly since it is going to be our #1 object.

"Let there be the empty set!" should eventually come to mind, because if we are to have one concrete (and redundantly actual) set, we cannot really invoke any other set (at his point) except *the empty set*. It is the only one that can be completely specified, for now. Voilà, we have sets, in some general sense (can be employed as containers) and we have one concrete set, the empty set, that we can use as an object (it cannot be used as a container anyway), as the object!

Let's do the obvious construction and put the lotion in the basket. Zut! We now have a *singleton set*, i.e. a one-element set or 1-set. We now make a quick inventory and realize we have: the empty set (our 1st object), and a singleton set - our second object ever. Putain!

With these two objects we can already dream about defining the natural numbers. The empty set will represent 0, and the set containing the empty set will represent 1. Youpi!

Current inventory
  - sets (in general)
  - 2 concrete sets = 2 concrete objects
    - the empty set
      - `{}`
      - set, object
      - cardinality: 0
      - 0-set
      - attributes and roles
        - is set
        - is object
        - is element
    - the set containing the empty set
      - a singleton set
      - `{{}}`
      - attributes and roles
        - is set
        - is object
        - is element
      - cardinality: 1
      - 1-set

From here, there are two paths you can go by, but in the long run, there won't be time to change the road you're on. I hope so. Let's pick the deep road.

A rank represents the maximim depth of a nested set:
- rank 0: a set depth 0, {}, no nesting
- rank 1: depth 1, {{}}, one level of nesting
- rank 2: depth 2, {{{}}}, two levels of nesting

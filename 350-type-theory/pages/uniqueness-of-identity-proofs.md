# Uniqueness of identity proofs

https://ncatlab.org/nlab/show/axiom+UIP

In type theory what is called the *UIP axiom*, i.e. the axiom of *uniqueness of identity proofs* (UIP), is an axiom that when added to intensional type theory turns it into a propositionally extensional type theory.

The UIP axiom asserts that any two terms of the same identity type `Idᴀ(x,y)` are themselves propositionally equal (in the corresponding higher identity type).

This is contrary to the univalence axiom, which makes sense only in the absence of UIP.


(HoTT book §7.2) In §3.1, we have defined a type `X` to be a set, if for all `x, y : X` and `p, q : x =x= y` we have `p = q`. In conventional type theory, this property goes by the name of uniqueness of identity proofs.

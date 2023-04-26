# Type Theory :: Introduction :: Logic and Type Theory



In logic, we talk about a prop `φ` having a proof or about `φ` being provable. Saying that a prop `φ` has a proof, one of which is `p`, is different from saying that φ is provable, which means that `φ` has a proof but we don't care about it, we just care that (at least) one exists. Logic, unlike TT, doesn't talk about the equality of proofs.

In Logic, a proposition is represented by a formula `φ`. Formula `φ` is a logical statement. If `φ` has a proof, call it `p`, then we say that *`p` is a proof of `φ`*. This means that we have actually produced one particular proof, `p`, which is witnessing that `φ` holds. A related statement is to say that *`φ` is provable*. "Provable" means that there exists a proof, but we're not specifically giving one - we are just saying that a proof exists, without actually demonstrating a particular one.

These two statements are both valid options on how we think about propositions, but they are different. The first one, "`p` is a proof of `φ`" leads to the idea of propositions-as-proofs, where `φ` is (represented by) a type. Moreover, `φ` as a type is inhabited - it has at least one element, `p`. So, `p` is a term (or value) of type `φ` and (therefore) a proof that (the proposition represented by the type) `φ` holds. In fact, under the CHI (which most type theories are based on), the elements (terms, values, points) of a type (of any type) are actually also (its) proofs.

This is maybe more intuitive for some types than others. The terms of identity types are perhaps more easily recognized as being proofs (even though really comprehending identity type is more difficult than understanding a type like ℕ) compared to the terms of a type like ℕ. But, in fact, the terms of ℕ can also be viewed as proofs - each one is dually an element and the proof, that the element it denotes, is indeed an element of ℕ. It's as if the inference rule for ℕ as labelled by the elements themselves. In case of 0, the proof that 0 is in ℕ is 0 itself; the proof that 3 is in ℕ, is `S (S (S 0))`, which is 3 itself.

So under the CHI view, what we are really doing in TT is studying proofs. If we have constructed a proof of `φ` and there is some other proof of `φ`, then we observe and study the difference between them. Such two proofs are both elements of `φ`, but they are different elements. They are distinct because they were constructed in different ways - their derivation trees are diferent.

On the other hand, the statement that *`φ` is provable* has no structure; the only thing it communicates is that a proof of `φ` exists. When we say that `φ` is provable, we should think of `φ` as all the proofs crunched together into a single unit of probability.

To say that we study proofs of `φ` means that, of course, we will distinguish different proofs. But to say that we study whether `φ` is provable means we don't care what the proofs are, we just care that there are proofs; they're all equal as far as we're concerned when we only care about whether they exist. This aspect suggests that `φ` should have at most one element (all proofs squashed into one element which indicates that proofs exists).

- *`φ` is provable* corresponds to *there is an element of `φ`*
- *`φ` is not provable* corresponds to *there is no element of `φ`*

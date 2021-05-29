# Linear logic

Traditional logic encourages reckless use of resources. Weakening discards assumptions, Contraction duplicates assumptions. This makes sense for logic where truth is free, and hence for for some PLs where copying a value is as cheap as copying a pointer. But it is not always sensible. Linear logic encourages more careful use of resources.

In PL terms, this corresponds to a language that allows control over duplication and discarding for some variables, but is still powerful enough that all traditional programs may be expressed within it.

So rather than getting rid of Contraction and Weakening entirely, if they are used in a proof that will be explicitly visible in the proposition proved.

The restriction of Contraction and Weakening profoundly changes the nature of the logical connectives:
- implication is now written `A −◦ B` *consume A yielding B* (the symbol `−◦` on its own is called lollipop)
- there are two distinct ways to formulate conjunction, corresponding to two distinct connectives in linear logic. These are written `A ⊗ B` "both A and B" and `A & B` "choose from A and B" (`⊗` is called "tensor", `&` is "with")
- Disjunction is written `A ⊕ B` "either A or B"
- Finally, a new form of proposition is introduced to indicate where Contraction or Weakening may be used. It is written `!A` and pronounced "of course A" (`!` is "bang")

Let A,B,C range over propositions, and X range over propositional constants. The grammar of linear propositions is as follows:

> A,B,C := X | A −◦ B | A ⊗ B | A & B | A ⊕ B | !A

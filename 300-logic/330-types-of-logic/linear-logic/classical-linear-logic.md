# Classical linear logic

https://en.wikipedia.org/wiki/Linear_logic

Linear Logic (LL) is a substructural logic proposed by Jean-Yves Girard as a refinement of classical logic and intuitionistic logic, joining the dualities of the CL with many of the constructive properties of the IL.

LL lends itself to many different presentations, explanations, and intuitions. Proof-theoretically, it derives from an analysis of classical *sequent calculus* in which the use of contraction and weakening is controlled.

Operationally, this means that logical deduction is no longer merely about an ever-expanding collection of persistent "truths", but also a way of manipulating resources that cannot always be duplicated or thrown away at will. 

In terms of simple denotational models, LL may be seen as refining the interpretation of IL by replacing cartesian (closed) categories by symmetric monoidal (closed) categories, or the interpretation of classical logic by replacing Boolean algebras by C*-algebras.


The language of Classical Linear Logic (CLL) is defined inductively:

```
A := p
   | pᗮ (⊥ is superscripted) in further text p⊥ ≡ p'
   | A ⊗ A
   | A ⊕ A
   | A & A
   | A ⅋ A
   | !A
   | ?A
   | 1 | 0 | ⊤ | ⊥
```

- `p` and `pᗮ` range over logical atoms
- connectives `&`, `⊕`, `⊤`, `0` are called *additives*
- connectives `⊗`, `⅋`, `1`, `⊥` are called *multiplicatives*
- connectives `!` and `?` are called *exponentials*

Terminology:
- `&` additive conjunction, "with"
- `⊕` additive disjunction, "plus"
- `⊗` multiplicative conjunction, "times", "tensor"
- `⅋` multiplicative disjunction, "par" (`8`)
- `!` "of course", "bang"
- `?` "why not"


connectives | additive | multiplicative
------------|----------|----------------
conjunction | &    (⊤) | ⊗    (1)
disjunction | ⊕   (0) | ⅋     (⊥)



Properties:
- associative and commutative:  `&`, `⊕`, `⊗`, `⅋`
- `⊤` is the unit for `&`
- `0` is the unit for `⊕`
- `1` is the unit for `⊗`
- `⊥` is the unit for `⅋`


Every proposition `A` in CLL has a dual `A'`

Proposition             | Dual
------------------------|---------------------
(A)' = A'               | (A')' = A
(A ⊗ B)' = A' ⅋ B'     | (A ⅋ B)' = A' ⊗ B'
(A ⊕ B)' = A' & B'     | (A & B)' = A' ⊕ B'
(1)' = ⊥                | (⊥)' = 1
(0)' = ⊤                | (⊤)' = 0
(!A)' = ?(A')           | (?A)' = !(A')

polarity | add  | mul | exp
---------|------|-----|-----------
pos      | ⊕ 0 | ⊗ 1 | !
neg      | & ⊤  | ⅋ ⊤ | ?




Observe that (-)⊥ is an involution, i.e., A⊥⊥ = A for all propositions. A⊥ is also called the linear negation of A.

The columns of the table suggest another way of classifying the connectives of linear logic, termed polarity: the connectives negated in the left column (⊗, ⊕, 1, 0, !) are called positive, while their duals on the right (⅋, &, ⊥, ⊤, ?) are called negative; cf. table on the right.

*Linear implication* is not included in the grammar of connectives, but is definable in CLL using linear negation and multiplicative disjunction, by 
`A ⊸ B := A⊥ ⅋ B`. The connective `⊸` is sometimes pronounced "lollipop"

> `A ⊸ B` ≡ `A' ⅋ B`

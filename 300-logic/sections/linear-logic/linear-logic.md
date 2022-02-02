# Linear logic

https://en.wikipedia.org/wiki/Linear_logic
https://plato.stanford.edu/entries/logic-linear/
https://ncatlab.org/nlab/show/linear+logic


In classical logic, `φ ⊢ ψ` means that given the truth of `φ`, you can conclude that `ψ` is true; once you have proven that `ψ` is true, that has no bearing on the truth of `φ` - that premise remains true just as it ever was.

For example, you can prove `c` by *reusing the premise* `a` in   
`(a -> b -> c) -> (a -> b) -> a |- c`


Linear logic, proposed by Jean-Yves Girard, is a type of *substructural logic* that deals with premise (re)use differently - it matters whether and exactly how many times a premise is used.

In linear logic, each premise *must be used precisely once* to construct the conclusion. So, a premise cannot be ignored, you must use it, but only once. Via CHI, this translates into PL that an arg to a function cannot be dropped, but it has to be used exactly once; which already implies its purpose as a resource management tool.

In proof theory, the structural rules are not about manipulations of the formulas, but about the manipulations of the proof structure itself. In the classical logic setting within the sequent calculus framework, the structural rule of *contraction* states that collapsing a duplicated premise is allowed; in general, decreasing the number of instances (copies) of identical premise is permitted. Its dual structural rule is called *weakening* and it allows reusing the same premise multiple times. Linear logic places strict restrictions on these two rules.

Operationally, it means that logical deduction is no longer merely about collecting persistent "truths", but a way of manipulating resources that cannot be duplicated or dropped.

In terms of simple denotational models, linear logic may be seen as refining the interpretation of intuitionistic logic by replacing *cartesian closed categories* by *symmetric monoidal categories*, or the interpretation of classical logic by replacing `Boolean algebras` by `C*-algebras`.

Linear logic is useful for reasoning about resources because each premise (hypothesis) must be used and used once.

## Formal grammar

Linear types introduce the new "lollipop" arrow, `⊸` (latex: `\multimap`)

```js bnf
F := F ⨂ F
   | 1
   | F & F
   | ⟙
   | F ⨁ F
   | 0
   | F ⊸ F
   | !F
```

- `α ⊗ β`    α and β hold simultaneously
- `1`          nothing holds
- `α & β`     α and β hold although not necessarily simultaneously
- `⟙`          tautology
- `α ⊕ β`    α and β hold
- `0`          absurdity
- `α ⊸ β`   if α holds then β holds
- `!α`         α holds arbitrarily often

## Syntax

The language of classical linear logic (CLL) is defined inductively by the BNF notation

```js bnf
// 12 cases
A := p
   | p⊥
   | ⟙        add conj unit
   | A & A     add conj
   | 1                        mul conj unit
   | A ⊗ A                    mul conj
   | 0         add disj unit
   | A ⊕ A    add disj
   | ⟘                        mul disj unit
   | A ⅋ A                    mul disj
   | !A       exp
   | ?A       exp
```

- Here `p` and `p⊥` range over logical atoms
- the connectives `!` and `?` are called *exponentials*
- the connectives `&`, `⊕`, `⊤`, and `0` are called *additives*
- the connectives `⊗`, `⅋`, `1`, and `⊥` are called *multiplicatives*

Terminology:
- `&` additive        conjunction (with)
- `⊗` multiplicative conjunction (times, tensor)
+ `⊕` additive       disjunction (plus)
+ `⅋` multiplicative disjunction (par)
- `!` of course (bang)
- `?` why not

- binary connectives (⊗, ⊕, &, ⅋) are associative and commutative
- `⊤` is the unit for additive       conjunction `&`
- `1` is the unit for multiplicative conjunction `⊗`
- `0` is the unit for additive       disjunction `⊕`
- `⊥` is the unit for multiplicative disjunction `⅋`

Every proposition `A` in CLL has a dual `A⊥`, defined as follows:
- `(p)⊥ = p⊥` and `(p⊥)⊥ = p`



## Refs

https://www.youtube.com/results?search_query=Linear+logic

* Foundations of Programming Languages:
Linear Logic with Paul Downen at OPLSS 2018
https://www.youtube.com/watch?v=ff-RX6ICKWg

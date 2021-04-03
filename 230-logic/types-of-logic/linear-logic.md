# Linear logic

https://en.wikipedia.org/wiki/Linear_logic
https://plato.stanford.edu/entries/logic-linear/
https://ncatlab.org/nlab/show/linear+logic

* In classical logic, `φ ⊢ ψ` means that given the truth of φ, you can conclude that ψ is true. Once you have proven that ψ is true, that has no bearing on the truth of φ: that premise is still true just as it ever was. For example, if you have 3 premises `A -> B`, `A -> C`, `A`, you can prove `B` and `C` by *reusing* `A` premise. So, it is possible to derive: `A -> B, A -> C, A ⊢ B ∨ C`.

* **Linear logic** is a type of *substructural logic*, proposed by Jean-Yves Girard, that restricts the reusing aspect of classical logic wrt premises. In linear logic, each premise **must be used exactly once** to construct the conclusion (it must be used, and it must be used only once).

* Ideas from linear logic have been influential in design of PLs because of its emphasis on the restriction of resources, duality and interaction.

* In proof theory, linear logic derives from an analysis of classical sequent calculus in which the use of structural rules of *contraction* and *weakening* are carefully controlled.

* Operationally, this means that logical deduction is no longer merely about collecting persistent "truths", but it is also a way of manipulating resources that cannot freely be duplicated or thrown away.

* In terms of simple denotational models, linear logic may be seen as refining the interpretation of intuitionistic logic by replacing *cartesian closed categories* by *symmetric monoidal categories*, or the interpretation of classical logic by replacing `Boolean algebras` by `C*-algebras`.

* Linear logic is useful for reasoning about resources for each hypothesis must be used exactly once.

* Linear types introduce the new "lollipop" arrow, `⊸` (latex: `\multimap`)


```js
Syntax          Meaning

F := F ⨂ F      α and β hold simultaneously, α ⊗ β
   | 1          nothing holds
   | F & F      α and β hold but not necessarily simultaneously, α & β
   | ⊤          tautology
   | F ⨁ F      α and β hold, α ⊕ β
   | 0          absurdity
   | F ⊸ F      if α holds then β holds, α ⊸ β
   | !F         α holds arbitrarily often, !α
```

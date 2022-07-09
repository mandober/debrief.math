# Curry-Howard correspondence

Curry-Howard style correspondences establish a tight conection between various logics on the one hand and explicitly computational calculi on the other. The canonical example is the correspondence between simple type theory (with arrow types) and natural deduction in the implicational fragment of propositional intuitionistic/minimal logic. I understand that adding dependent types to the underlying type theory corresponds to the addition of quantifiers in the paired logic. Likewise, one can think of the passage from simple type theory to System F as corresponding to the addition of universal quantification over propositional variables. But I'm a bit unclear on what the addition of proper type operators corresponds to. What are the "proper type operators"? Ah, yes, sorry, I meant the `λω` axis of the λ cube. My references is Geuvers and Nederpelt's book "Type Theory and Formal Proof" and Sørensen and Urzyczyn's book "Lectures on the Curry-Howard Isomorphism".

## Curry-Howard correspondence

https://www.haskellforall.com/2017/02/the-curry-howard-correspondence-between.html

The Curry-Howard correspondence says that we can use the type checker of a PL as a proof checker. Any time we want to prove a logical proposition we can
- translate a logical proposition to the corresponding type in the PL
- create a value in the PL that has the given type
- use the type-checker to verify that the value has the specified type

For example

```hs agda
-- logical proposition
∀A(((A ∈ Prop) -> ∀x(x ∈ A)) -> A)
-- logical proposition, sort of
∀(a ∈ Prop) . ∀(x ∈ a) : a

-- PL expression and the corresponding type
∀(a : Type) → ∀(x : a) → a

-- in Haskell
id :: ∀ (a :: Type) → a → a
id @a x = x

-- in Agda
id : ∀ (A : Type) → (x : A) → A
id A x = x
```













## Links

https://math.stackexchange.com/questions/tagged/type-theory

https://en.wikipedia.org/wiki/Curry%E2%80%93Howard_correspondence

* Under the Curry-Howard correspondence or proofs-as-programs, do we also have programs-as-proofs and what would some arbitrary program prove?
https://math.stackexchange.com/questions/4349050/


https://math.stackexchange.com/questions/570298/curry-howard-correspondence-proof-theory?rq=1

https://math.stackexchange.com/questions/458991/confusion-about-homotopy-type-theory-terminology

https://math.stackexchange.com/questions/589717/introductory-books-as-preparation-to-read-voevodsky-homotopy-theory-hott-book

https://math.stackexchange.com/questions/3466976/online-reference-book-for-implementing-concepts-in-type-theory

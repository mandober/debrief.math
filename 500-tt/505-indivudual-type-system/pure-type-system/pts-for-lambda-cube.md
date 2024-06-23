# PTS for lambda cube

A Pure Type System (PTS) is defined by a triple `(S,A,R)` where
- S Sorts,  set of sorts, `{s}` where `s` is a sort like `★`, `◻`, `△`
- A Axioms, set of axioms, A ⊆ S², A ⊆ S ⨯ S, {(s₁, s₂)}
- R Rules,  set of rules,  R ⊆ S³, R ⊆ S ⨯ S ⨯ S, {(s₁, s₂, s₃)}


All (higher) languages in the *λ-cube* can be described by a PTS with
- 2 sorts: `S = {★, ◻}` and
- a set of axioms, `A = {(★ : ◻)}`, since `★ : ◻` holds for all λ-cube calculi
where
- the sort `★` represents *terms* (outside λ-cube it may stand for types)
- the sort `◻` represents *types* (outside λ-cube it may stand for kinds)

- The calculi have different set of rules.

Axioms of the λ-cube
- `(★, ★)` terms depending on terms
- `(★, ◻)` terms depending on types (polymorphism)
- `(◻, ★)` types depending on terms (dependent types)
- `(◻, ◻)` types depending on types (type ctors)


Calc   | Rules                        | Set of rules
-------|------------------------------|-----------------------------------
λ→     | (★,★)                       | R = {(★,★)}
λ2     | (★,★) (★,◻)                | R = {(★,★), (★,◻)}
λΠ     | (★,★)        (◻,★)         | R = {(★,★), (◻,★)}
λω     | (★,★)               (◻,◻)  | R = {(★,★), (◻,◻)}
λ2Π    | (★,★) (★,◻) (◻,★)         | R = {(★,★), (★,◻), (◻,★)}
λΠω    | (★,★)        (◻,★) (◻,◻)  | R = {(★,★), (◻,★), (◻,◻)}
λ2ω    | (★,★) (★,◻)        (◻,◻)  | R = {(★,★), (★,◻), (◻,◻) }
λ2Πω   | (★,★) (★,◻) (◻,★) (◻,◻)  | R = {(★,★), (★,◻), (◻,★), (◻,◻)}

sorts (★, ◻, △)
- ★ terms
- ◻ types
- △ kinds (not in any λ-cube calculus)


STLC, λ→
- only terms depend on terms, s₁ : s₂, ★ : ★
- S sort: ★ (terms), `S = {★}`
- A axioms: A ⊆ S², A ⊆ {★} × {★}, `A = {(★, ★)}`
- R rules: R ⊆ S³, R ⊆ {★} × {★} × {★}, `R = {(★, ★, ★)}`

# PTS for lambda cube

(𝓢,𝓐,𝓡)
- 𝓢 Sorts, a set of sorts,     `S`
- 𝓐 Axioms, a set of axioms, `S ⨯ S`
- 𝓡 Rules, a set of rules, `S ⨯ S ⨯ S`

All (higher) languages in the λ-cube can be described by a PTS with 2 sorts:
- 𝓢 = {★, ◻}
- 𝓐 = {(★ : ◻)}
- `★ : ◻` holds for all λ-cube calculi
- The sort `★` represents terms (outside λ-cube it may stand for types)
- The sort `◻` represents types (outside λ-cube it may stand for kinds)
- The calculi differ in the set of rules.

Features of the λ-cube
- `(★, ★)` Terms depending on terms
- `(★, ◻)` Terms depending on types (polymorphism)
- `(◻, ★)` Types depending on terms (dependent types)
- `(◻, ◻)` Types depending on types (type ctors)


Calculus   | Rules
-----------|------------------------------
λ→         | (★,★)
λ2         | (★,★)  (★,◻)
λΠ         | (★,★)          (◻,★)
λω         | (★,★)                  (◻,◻)
λ2Π        | (★,★)  (★,◻)  (◻,★)
λΠω        | (★,★)          (◻,★)  (◻,◻)
λ2ω        | (★,★)  (★,◻)          (◻,◻)
λ2Πω       | (★,★)  (★,◻)  (◻,★)  (◻,◻)

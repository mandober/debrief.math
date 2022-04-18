## Ordered pair definitions

The definitions of an order pair in term of sets.

If we hold that set theory is the foundation of mathematics, then all the mathematical objects should be derivable from sets. That is, an object like ordered pair may be introduced as a primitive (or with an axiom), or, preferably, as a definition in terms of sets. A set theory that manages to do the latter is deemed more elegant than a set theory that chooses the former (elegant theories live on, inelegant risk oblivion).

Hence, if the ordered pair is not taken as primitive, it must be defined in terms of sets. Several set-theoretic definitions have been given over the years, but the Kuratowski's definition is the most accepted one.

Ordered pair definitions:
- Kuratowski:               `(a,b) := { { a   } , {a,b}     }`
- Wiener:                   `(a,b) := { {{a},∅} , {{b}}     }`
- Empty Set Formalization:  `(a,b) := { { a ,∅} , { b ,{∅}} }`
- Hausdorff:                `(a,b) := { {{a},@} , {{b},%}   }`
  where `@` and `%` are objects distinct from `a` and `b` and each other)
  `@ = ∅`, `% = {∅}` thus  `(a,b) := { {{a},∅} , {{b},{∅}}  }`

- Cantor-Frege
- Morse
- Quine-Rosser: `(A,B) := φ[A] ⋃ ψ[B] = {φ(a). a ∈ A} ⋃ {ψ(b). b ∈ B}`
- Axiomatic


## Formalizations

P    | (a,b)              | a         | b       | a = b
-----|--------------------|-----------|---------|-------
Kur  | { {a}, {a,b} }     | {a}       | {a,b}   | {a}
Kur= | { {a} }            | {a}       | {a}     | 
Wie  | { {{a},∅}, {{b}} } | {{a},∅}   | {{b}}   | 
Wie= | { {{a},∅}, {{a}} } | {{a},∅}   | {{a}}   | {{a},∅} ≠ {{a}}


P | Kurat   | Wiene | ESF     | Hausd   | Hausd-1   |
--|---------|-------|---------|---------|-----------|
a | {a}     | {a,∅} | {a,∅}   | {{a},@} | {{a}, ∅ } |
b | {a,b}   | {{b}} | {b,{∅}} | {{b},%} | {{b},{∅}} |
E | 
E |
a | {{a}}   |
b | {{a,b}} |
a | {{a}}   |
b | {{a},b} |
a | {…{a}…} |
b | {…{a,b}…} |
b | {…{a},b…} |


@ =  ∅  ,  {∅}  ,   ∅
% = {∅} , {{∅}} , {{∅}}


## Empty Set Formalization

The concept of an ordered pair can be formalized by the definition:

`(a,b) := { {a,∅} , {b,{∅}} }`

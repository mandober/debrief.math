# Numbers

- whole (counting) numbers
- natural numbers, ℕ
- zero, 0
- natural numbers (excluding 0), ℕᐩ
- natural numbers (including 0), ℕ⁰
- negative numbers, ℤ \ ℕ⁰
- itegers, ℤ
- positive itegers, ℤᐩ
- negative itegers, ℤ⁻


## Number

A number is aprimitive math object that expresses the concept of 
"${number}ness", e.g. oneness, twoness, etc.

The concept of unity (oneness) represents all single things (one number, one letter), by representing the idea of a singleton set, i.e. a set containing a single thing; which may be somewhat strange if we consider the letter "a" and a set containing the letter "a" - they are not equal, but they are equivalent. It would be strange if a letter is an object used in math, especially as a member of a set. Then, by itself, a letter would not be defined in terms of a set, bt it would be some kind of different object, perhaps introduced as a mathematical primitive.

However, since in math the members of sets are numbers, and since numbers themselves are defined in terms of sets, this means that sets exclusively contain sets. That is, there are no things that are not defined in terms of sets (like a letter, which may then be considered by itself, and as the only member of a set, in which case the former is set-free).

Moreover, we only need a single type of set to start defining things like numbers, viz. the empty set. It appropriately represents number zero, `0 := ∅`. A set containing the empty set (has one member), repr number one, `1 := {∅}`. A set containing number one, {1} = {{∅}}, cannot repr number two, since that set has only one element. How we proceed from here differs in various set theories, but a common approach is to obtain the next number as the result of the union of the previous number with the set containg the previous number, `S(n) = n U {n}` (where `S` is the successor function). Such that 2 is repr by a set with two elements: one element is 1 and the other element is the set containg 1: 
`2 := {1,{1}} = {{∅},{{∅}}}`

## Zero

It was the Indian mathematician and astronomer Brahmagupta (c.598-670) who argued that zero is just as valid as any natural number, defining it as the result of subtracting any number from itself.

However, even today, there is no universal agreement as to whether zero belongs to the set of the natural numbers. As a genral principle, zero is mostly excluded from ℕ in mathematics, but it is almost always included in ℕ in CS. Of course, this completely fucks up our chances of having an unambigous symbolic representation of the set of the natural numbers: we have to be explicit about including zero by denoting such set by ℕ₀, and if we exclude it, by ℕᐩ.

In a positional number system, which is a place value system, the digit
0 is a **placeholder**, independent of the base (radix).

Even if 0 ∈ ℕ, zero does have some special properties that distinguish it from the rest of naturals, but then again, so does 1.

Brahmagupta gave most of the fundamental arithetic rules concerning zero:
- addition: x + 0 = x
- subtraction: x − 0 = x
- multiplication: x × 0 = 0 × x = 0
- division: 0/x = 0
- undefined: x/0

These were later built upon, so today we have many arithmetic rules and principles, and we also define the natural numbers using Peano's axioms.

The expression 0/0 is called an *indeterminate form*, as it is possible to show that under different conditions, especially limiting conditions, it can equal anything.


The 4 basic arithemtic operations may be also considered as only two ops since we can express subtraction in terms of addition, and division in terms of multiplication.

x - y = x + (-y)



Arithemtic rules in ℤ, `∀x,y,z,ϵ,x⁻¹ ∈ ℤ`, `x ⊛ y = z`
* Identity element
  - addition      : x + 0 = x = 0 + x
  - subtraction   : x − 0 = x (not 0 - x)
  - multiplication: x × 1 = x = 1 × x
  - division      : x ÷ 1 = x (not 1 ÷ x)
* Annihilation (cancellation) element
  - multiplication : x × 0 = 0 × x = 0
  - division       : 0 ÷ x = 0
* Special properties
  - *undefined form*      : x ÷ 0
  - *indeterminate form*  : 0 ÷ 0
* Inverse element (invertability)
  - x ⊛ y = z
  - addition        : 0 + (-x) = -x
  - subtraction     : 0 - x = -x
  - multiplication  : 

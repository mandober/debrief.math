# Number Theory: primer in numbers

<!-- #region terms -->
<details>

<summary>Terms</summary>

- number
- mathematical object
- mathematical primitive
- axiom
- abstract object
- mathematical abstraction
- mathematical notion
- mathematical concept
- mathematical representation
- numeral
- numeral system
- positional numeral system
- non-positional numeral system
- place value
- number base, radix
- radix
- zero as placeholder
- decimal number representation
- binary number representation
- octal number representation
- hexadecimal number representation
- base32 number representation
- base64 number representation
- roman numerals
- greek numerals
- digit
- bit
- binary digit
- amount
- quantity
- enumeration
- counting
- labelling
- fundamental sets of numbers

</details>
<!-- #endregion terms -->


## Number

Number is...
- a concept, an idea
- an abstract object without physical manifestation
- mathematical concept
- abstract mathematical object
- expression of quantity
- abstract representation of quantity
- arithmetical value
  expressed in some way (word, symbol)
  representing a particular quantity


- defininition of numbers is in terms of sets (as is everything else assuming set theory as the FOM)
- Peano's axioms define `ℕ` - the set of the natural numbers, stating that:
  - the number zero exists, ∃n.n=0
    - error: variable `n` ranges over as-of-yet undefined set ℕ
    - error: `=` symbol not found
  - the number zero is a natural number, 0 ∈ ℕ
  - there is 
  - if the number `n` is a natural number, n ∈ ℕ
    then so is the successor of `n`


## Types of number

miriad divisions:
- by type: nat, int, rat, real, complex
- naturals:
  - prime vs composite
  - odd vs even
- ints:
  - positive vs zero vs negative; nonnegative, nonpositive
- numerous groups: fiendly, abundant, happy, ...

ordinal
cardinal


## Number representation

* Representing numbers
  - in writing
  - in speach
  - in other forms of human communication (gesture, flags, lights, etc.)
  - in other interactions (forms, mediums, etc.); human-computer, computer

* Symbolic (written) representations:
  * Positional numeral system
    - Hindu-Arabic symbols
    - binary digits: {T,⊥} or {0,1} or {+5v,-5v}
  * Non-Positional numeral systems
    - Roman numerals: I,V,X,L,C,D,M
    * Formal definitions:
    - Lambda Calculus:
      - 0 := λsz.z
      - S := λnfx.f(nfx)
      - 1 := λsz.sz
      - 2 := λsz.s(sz)
      - 3 := λsz.s(s(sz))
    - Sets:
      - `0 := ∅`
      - `S(n) := n U {n}`
      - 1 := { ∅ }
      - 2 := { ∅, {∅} }
      - 3 := { ∅, {∅}, {∅,{∅}} }


* There is a sharp distinction betwen the properties of a number and the properties of its corresponding numerals.

* In linguistics, a *numeral*, or *number word*, in the broadest sense is a word or phrase that describes a numerical quantity.

* Representing numbers
- A numeral is a written, agreed-upon symbol used to represent a number
- numerals come in many shapes; they are organized into a particular set
- a particular set of decimal numerals consists of the familiar numerals
- decimal numbers use the Hindu-Arabic numeral symbols
- dec numerals form a set of 10 elements, kind of numeric alphabet, {0..9}

numeral set
- a depends on the numerals system used


## Natural numbers

- this subtitle is stylistic, "the" is missing
- there are 2 "the" occurances:
  - the set of... (it is a unique set; "the" unique things, they're definite
  - the natural numbers (specific kind of numbers)
ℕ the set of the natural numbers

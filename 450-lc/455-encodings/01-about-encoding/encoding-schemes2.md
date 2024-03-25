# Encoding schemes

Encoding schemes for representing (encoding) mathematical objects in lambda calculus the most famous one is the **Church encoding**.

, for example, to encode a programming language, consistently into the LC. It is known that some functions may be defined differently in the same set of encoding.

Many encoding schemes begin by introducing Booleans and logical connectives and operations, followed by natural numbers, then data types and other mathematical objects.

The most well-known encoding for natural numbers is Church's encoding, which considered only for naturals is refered to as **Church numerals**. This nicely emphasises the fact that numbers are abstract entities and completely unconcerned with their arbitrarly chosen symbolic representation. A smudge on the paper in the shape of "`3`", bears the same amount of meaning and has the same relation to the number three as any other symbol (written or spoken) agreed to represent the number three, such as "`III`" (as the Roman numeral), "`Γ'`" (as the Greek numeral).

A numeral is the written symbol, arbitrarily chosen but standardized i.e. more-less universally agreed upon, selected to represent a single number in positional system if used alone, or representing a part of a number when combined with other numerals. Nevertheless, the point I failed to make thus far is that a chosen representation for a number has nothing to do with the numeber itself; be it an unwieldy sequance of characters, which becomes the case for Peano and Church numerals very quickly.

The many numerals for number six:
- Hindu-Arabic numeral, `6`
- Peano's numeral: `S(S(S(S(S(S(Z)))))))`
- Church numeral: λs.λz.s(s(s(s(s(sz)))))
- set-theoretic: `6 = {1,2,3,4,5}`
- equinumerosity: `{ ! @ ~ $ & ^ }`



The start of the encoding scheme might as well begin by choosing a pair of functions to represent the truth values, true and false.

It seems universal for all encodings that a single lambda abstraction represents a single entity. <is this true? what about Nat> 

Nats seem to have dual represenation, as function abstractions and fn applications, e.g. with Church numerals

3 is λsz.s(s(sz)) ("static" repr) or it may be:
- `S := λnfx.f(nfx)` The successor function
- `Z := λsz.z`       The zero (constant) function




λ-calculus
λ-calculus/encodings
λ-calculus/encodings/church
λ-calculus/encodings/scott

# Regular Language

https://en.wikipedia.org/wiki/Regular_grammar

## Sequence

Let X be a set. The set of sequences over X, called X∗, is defined as follows:
- ϵ is a sequence, called the empty sequence
- if xs is a sequence and x ∈ X, then x:xs is also a sequence
- nothing else is a sequence

Letters from the beginning of the alphabet represent single symbols (a,b,c), and letters from the end of the alphabet represent sequences of symbols (x,y,z).


## CFG

- 𝚲 𝛌 𝜀 𝚺∗ 𝛙 𝛗 𝛔 𝓍
- sequence
- symbols 𝓪𝓫𝓬𝓭𝓮𝓍𝔂𝓏
  - single symbols, 𝓪 𝓫 𝓬 𝓭 𝓮
  - sequence of symbols, 𝓍 𝔂 𝓏
- 𝜀  the empty sequence
- 𝚺  alphabet (finite set)
- 𝚺∗ infinite set of all possible sequences over an alphabet 𝚺
- 𝚲  language, 𝚲 ⊆ 𝚺∗ for an alphabet 𝚺
- 𝚲ʳ complement of 𝚲 language, 𝚲ʳ = {𝓍|𝓍 ∈ 𝚺∗, 𝓍 ∉ 𝚲}
- 𝛔 sentence, 𝛔 ∈ 𝚲
- predicate/property 𝛙(𝚲) = ∀𝓍.𝓍 ∈ 𝚲 -> 𝛙(𝓍) such that 𝚲 ⊆ 𝛙





- **alphabet** `T` is a finite set of symbols
- `T∗` is infinite set of all possible sequences over an alphabet `T`
- **language** `L` is a subset of `T∗`, `L ⊆ T∗`, for the alphabet `T`
- **sentence** `s` is an element of a language, `s ∈ L`


Eexamples:
- alphabet, T
  - binary = {0,1}
  - digits = {0..9}
  - English = {a..z} = `l`
- languages L over the alphabet T
  - T*
  - ∅
  - {ϵ}
  - T
  - `S` = {course, practice, exam} is a language over the English alphabet `l`
- sentence
  - "exam" is a sentence in the language `S` over the English alphabet `l`

The question is now how to specify a language. Since a language is a set, we immediately recognize 3 options:
- enumerate all the elements of the set explicitly
- characterise the elements of the set by means of a predicate
- define which elements belong to the set by means of induction

Examples of the second approach:
- the even natural numbers {n | n ∈ {0..9}∗, n mod 2 = 0}
- `PAL`, the palindromes over the alphabet Σ={a,b,c}: {s|s ∈ Σ∗, s=sʳ}  
  where sʳ denotes the reverse of sequence s.

One of the fundamental differences between the predicative and the inductive approach to defining a language is that the inductive approach is constructive, i.e. it provides us with a way to enumerate all elements of a language.

If we define a language by means of a predicate, we only have a means to determine whether or not an element belongs to a language. A famous example of a language which is easily defined in a predicative way, but for which the membership test is very hard, is the set of prime numbers.

Quite often we want to prove that a language `L`, which is defined by means of an inductive definition, has some property `P`. If `P` is of the form    
`P(L) = ∀x.x ∈ L -> P(x)`, then we want to prove that `L ⊆ P`.

Since languages are sets the usual set operators may be used to construct new languages from existing ones. The complement of a language `L` over an alphabet `T` is defined by `Lʳ = {x|x ∈ T∗, x ∉ L}`.


## Language operations

Let L and M be languages over the same alphabet T, then
- Lᶜ = T∗ − L                   complement of L
- Lʶ = { sʶ | s ∈ L}            reverse of L
- LM = { st | s ∈ L, t ∈ M}     concatenation of L and M
- L⁰ = {ϵ}                      0ᵗʰ power of L
- Lⁿ = L × L × ... × L          nᵗʰ power of L
- L∗ = L⁰ ⋃ L¹ ⋃ L² ⋃ ...       star − closure of L
- Lᐩ = L¹ ⋃ L² ⋃ ...            positive closure of L

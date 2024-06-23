# Regular language

## Summary

- regular language is one recognized by some DFA
- L(M) is a language recognized by machine M
- regular language is one describable by a regex
- DFAs and regular expressions are equivalent in power
- regular operations: union, concatenation, star
- regular languages are closed under ⋃, ⋂, complement, star
- moreover, if `L` is any unary lang (regular or not), then `L⃰` is regular!
- union, intersection, star are concatenation operations
- the empty language: `∅`
- language containing only the empty string: `{ε}`
- unary language: `{ε}`, or any singleton language `{α}`
- unary alphabet Σ = {α}
- lang over a unary alphabet is inifinite; except, if α = ε, then it is {ε}
- every finite language is regular


## Regular languages

A **regular language** is one recognized by some DFA. All that is needed is for the DFA to exist, and not necessarily to give the DFA precisely. Equivalently, a regular language is one that can be desribed with a regexpr - since regexp and FSM are equivalent in power.

## Closure properties

Regular languages are closed under
- union
- intersection
- concatenation
- complement
- star
- subsequences (noncontiguous substrings)
- reversal
- homomorphism
- suffixes
- division
- "avoids"


**Closure properties** of regular languages:
- if A and B are regular languages, so is `A ⋃ B` (closure under union)
- if A is a regular language, so is `A̅` (closure under complement)
- if A is a regular language, so is `A⃰` (closure under the Kleene's star)

Surprisingly, if `L` is any unary language, regular or not, then `L⃰` is a regular language! For example, with Σ = {0}, the lang `L = { 0ᵖ | p is prime }` is not regular, but `L⃰` is.

Since every finite language is regular, if L is regular then so is L⃰. If L is an infinite language, then it gets tricky.

If L is an "even" regular language, L = {ε, 00 = 0², 0⁴, 0⁶, …}, then L⃰ is also an "even" regular language since concat will always give strings of even length. In fact, L = L⃰.

L⃰ always has all the strings of L.

L = { …, 0³, 0⁵, … }

L⃰ = { …, 0³, 0⁵, 0⁶, 0⁸, 0⁹, 0¹⁰, 0¹¹, 0¹² … }

We can combine 3 and 5 to recreate all numbers larger than 5, except 7.

<!-- #region -->

<details><summary>Exercise in futility</summary>

{3,5} ∖ {7}
{4,9} ∖ {5,6,7,10,11,14,15,19,23}


4∙n + 9∙k
4∙1 + 9∙0 =  4    x
4∙2 + 9∙0 =  8    x²
4∙0 + 9∙1 =  9          y
            10
            11
4∙3 + 9∙0 = 12    x³
4∙1 + 9∙1 = 13    x     y
            14
            15
4∙4 + 9∙0 = 16    x⁴
4∙2 + 9∙1 = 17    x²    y
4∙0 + 9∙2 = 18          y²
            19
4∙5 + 9∙0 = 20    x⁵
4∙3 + 9∙1 = 21    x³    y
4∙1 + 9∙2 = 22    x     y²
            23
4∙6 + 9∙0 = 24    x⁶
4∙4 + 9∙1 = 25    x⁴    y
4∙2 + 9∙2 = 26    x²    y²
4∙0 + 9∙3 = 27          y³
4∙7 + 9∙0 = 28    x⁷
4∙5 + 9∙1 = 29    x⁵    y
4∙3 + 9∙2 = 30    x³    y²
4∙8 + 9∙0 = 32    x⁸
4∙4 + 9∙2 = 34    x⁴    y²
4∙6 + 9∙1 = 33    x⁶    y
4∙9 + 9∙0 = 36    x⁹
4∙7 + 9∙1 = 37    x⁷    y
4∙0 + 9∙4 = 36          y⁴
4∙5 + 9∙2 = 38    x⁵    y²
4∙3 + 9∙3 = 39    x³    y³
4∙10+ 9∙0 = 40    x¹⁰
4∙8 + 9∙1 = 41    x⁸    y
4∙6 + 9∙2 = 42    x⁶    y²
4∙4 + 9∙3 = 43    x⁴    y³
4∙11+ 9∙0 = 44    x¹¹
4∙0 + 9∙5 = 45          y⁵
4∙9 + 9∙1 = 45    x⁹    y
4∙7 + 9∙2 = 46    x⁷    y²
4∙5 + 9∙3 = 47    x⁵    y³
4∙12+ 9∙0 = 48    x¹²
4∙3 + 9∙4 = 48    x³    y⁴
4∙10+ 9∙1 = 49    x¹⁰   y
4∙8 + 9∙2 = 50    x⁸    y²
4∙6 + 9∙3 = 51    x⁶    y³
4∙13+ 9∙0 = 52    x¹³
4∙4 + 9∙4 = 52    x⁴    y⁴
4∙11+ 9∙1 = 53    x¹¹   y
4∙0 + 9∙6 = 54          y⁶
4∙9 + 9∙2 = 54    x⁹    y²
4∙7 + 9∙3 = 55    x⁷    y³
4∙5 + 9∙4 = 56    x⁵    y⁴
4∙3 + 9∙5 = 57    x³    y⁵
4∙10+ 9∙2 = 58    x¹⁰   y²
4∙8 + 9∙3 = 59    x⁸    y³
4∙6 + 9∙4 = 60    x⁶    y⁴
4∙4 + 9∙5 = 61    x⁴    y⁵

>0ˣ0ʸ s.t. (x - 1) (y - 1) - 1 <= n

4,9 ~ 3*8-1 = 23
3,5 ~ 2*4-1 = 7

</details>

<!-- #endregion -->

>0ˣ0ʸ s.t. (x - 1) (y - 1) - 1 <= n



## Closure under complement

If `L` is any regular language, then `L̅ = Σ⃰ \ L` is its *compliment language*. Flipping the final states of a DFA `M` that accepts `L` gives us the DFA `M̅` that accepts `L̅`. `F ⊆ Q` and `F̅ = Q ∖ F`, so `F ⋃ F̅ = Q`. The final states in M̅ are F̅ = Q ∖ F. That is, L(M̅) = L̅.

## Closure under union or intersection

Regular languages closed under union/intersection (product construction).

The closure under union for regular languages, i.e. *product construction*.

The idea is to "simulate" two given DFAs at the same time, because the input can only be read once. The resulting DFA has *pairs of states* for each of the original states in both DFAs, and transitions between them based on how the original DFAs had transitions.

>If `L₁` and `L₂` are regular, so is `L₁ ⋃ L₂` and `L₁ ⋂ L₂`.

This would be easily solved if we could backtrack, i.e. restart the input - try the input on A, then on B. But since we cannot do that, we must process the input in parallel instead. This brings us to the *product construction*.

If M₁ accepts a language L₁ and M₂ accepts a language L₂, then `M = M₁ ⋃ M₂` should accept any string that either of the two machines accepts. We build the new machine `M` that simulates both M₁ and M₂ at once.
- We make Q×R pairs of states, (q₀, r₀), (q₀, r₁), …
- The final states are those where any pair component was a final state
- (and more)

## Closure Properties of Regular Languages with Proofs

https://www.youtube.com/watch?v=CuYZIsBSguw

Here we prove five closure properties of regular languages, namely union, intersection, complement, concatenation, and star. We utilize results such as NFAs = DFAs, and give proofs for why all of these properties are closed for regular languages.

## Closure under subsequences

https://www.youtube.com/watch?v=2bPMta_92tI

Here we look at the problem of showing that regular languages are closed under subsequences (i.e. a substring but doesn't have to be contiguous). The idea is to "eliminate" transitions in the initial DFA by introducing epsilon transitions for every existing transition. We also give a concrete example of this.


## Closure under reversal

https://www.youtube.com/watch?v=7OzQ8ItYGSw

Here we show that regular languages are closed under reversal, and give some tips on why the "usual" proof is not quite right. The main idea is to take a DFA for the language, and reverse all of its transitions. The problem is that the resulting machine may not necessarily be a DFA or even an NFA. But by observing what the resulting language should be (the reverse of all the strings), we can make some adjustments to it to make it work, which we cover in the video.


## Closure under Homomorphism

https://www.youtube.com/watch?v=U_cdiPfykTI

Here we show that the regular languages are closed under homomorphism, which is a function from `Σ⃰` to itself, `f : Σ⃰ -> Σ`, that has a nice *"splitting" property*.

We use this property in the proof by constructing an NFA for the desired "homomorphism" language, by breaking up every transition into many smaller transitions.


## Closure under Suffixes

https://www.youtube.com/watch?v=UQRsGun4l7Y

Here we show that regular languages are closed under suffix. The main idea is to understand that a suffix is the end of a string, and so to recognize all suffixes, we need to "jump past" the prefix (the beginning) of the string. We achieve this simply with nondeterminism, by making an NFA for the suffix language.

## Closure under Division
(Sipser 1.45 Solution)

https://www.youtube.com/watch?v=mtURMW_VSUA

Here we show that if `A` and `B` are regular, then `A/B` is regular, where this is the set of all strings `w` such that `wx` is in `A` for some `x` in `B`.

We show that this is regular by making a DFA for it by changing the final states of A. The new final states are going to be the ones where reading ANY string from B will result in an ORIGINAL final state of A. This is not a "constructive" method for a DFA, but this shows that the DFA exists, which is all that is needed.

## Closure under "avoids"
(Sipser 1.70 Solution)

https://www.youtube.com/watch?v=y86jpV5tn_0

Here we show that regular languages are closed under the "avoids" operation (Sipser 1.70 solution). This operation is all the strings in A that don't have any substring in B. This isn't the same as all the strings in A not in B. The idea is to build up what the definition of "avoids" means, by first considering all strings that do have some substring in B, and then take those strings away from A.



## Number of final states in product construction

https://www.youtube.com/watch?v=-mw3Em5rS60

Here we look at a classic question:

>Given two DFAs, where everything we know about them is the number of states and number of final states in each, can we figure out the number of final states in the product construction?

We need to understand what the final states actually are in the resulting DFA. Then we can count the states that we know are final in either DFA, but we have to watch out for double-counting.

Let `D₁` be a DFA with `n₁` states and `f₁` final states, |F₁| = f₁   
    `D₂` be a DFA with `n₂` states and `f₂` final states, |F₂| = f₂.
Form `D = D₁ ⋃ D₂` such that `L(D) = L(D₁) ⋃ L(D₂)`. 
How many final states does `D` have, i.e. |F| = ?

F = { (q₁, q₂) | q₁ ∈ F₁ ∨ q₂ ∈ F₂ }

If `q₁` is a final state, then the number of final states in `F` with `q₁` is the number of final states in `D₂`; i.e. `(q₁, _)` will be a final state regardless of the final-state status of the second component.

- `f₁ × n₂` is the number of final states in F with some final state from D₁
- `f₂ × n₁` is the number of final states in F with some final state from D₂
- the sum `f₁ × n₂ + f₂ × n₁` overcounts the number of final states in cases where both q₁ and q₂ are final.
- `f₁ × f₂` the number of final states in F that are final in both D₁ and D₂

>Thus, `f₁ × n₂ + f₂ × n₁ - f₁ × f₂` is the total number of final states in the union of two DFAs.

## DFA Product construction doesn't guarantee minimality and reachability

Here we look at the product construction for DFAs, and show that it "ruins" everything! Specifically, about *minimality* and *reachability* of the two original DFAs. If they both had no unreachable states, we don't guarantee that about the resulting DFA. And the same is true of minimality.

# Sequences :: Exercises 1

## Exercise 1: Rearrange into suitable form

```js
// Given this seq, find initial term and common ratio
Σ{n=1..∞} 2³ⁿ ⋅ 5¹⁻²ⁿ
// We need to rearrange it into suitable form
Σ{n=1..∞} 2³ⁿ ⋅ 5 ⋅ 5⁻²ⁿ
Σ{n=1..∞} (2³)ⁿ ⋅ 5 ⋅ 1/5²ⁿ
Σ{n=1..∞} 5 ⋅ (2³)ⁿ/(5²)ⁿ
Σ{n=1..∞} 5(2³/5²)ⁿ

a₁ = 5(2³/5²)¹ = 5 × (2³)¹ ÷ (5²)¹ = 5 ⋅  2³/5² =  2³/5¹ =    8/5
a₂ = 5(2³/5²)² = 5 × (2³)² ÷ (5²)² = 5 ⋅  2⁶/5⁴ =  2⁶/5³ =   64/125
a₃ = 5(2³/5²)³ = 5 × (2³)³ ÷ (5²)³ = 5 ⋅  2⁹/5⁶ =  2⁹/5⁵ =  512/3125
a₄ = 5(2³/5²)⁴ = 5 × (2³)⁴ ÷ (5²)⁴ = 5 ⋅ 2¹²/5⁸ = 2¹²/5⁷ = 4096/78125

// The initial term is
a₁ = 8/5
// The common ration is
r = 8/25
```

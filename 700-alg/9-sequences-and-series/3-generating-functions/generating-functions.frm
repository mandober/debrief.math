# Index of generating functions

function ⟼ sequence
- function: c₀ + c₁x + c₂x² + c₃x³ + …
- sequence: c₀, c₁, c₂, c₃, …

```js
function ⟼ sequence
// -------------------------------------------------
BASIC GENERATING FUNCTION
// Basic generating function (based on a geometric progression)
sequence: (1, 1, 1, 1, …)
function:
  1
----- = 1 + x + x² + x³ + ⋯    // when |x| < 1
1 - x

// -------------------------------------------------
// Alternating sequence
sequence: (1, -1, 1, -1, …)
function:
  1
----- = 1 - x + x² - x³ + x⁴ - x⁵ + ⋯
1 + x

// -------------------------------------------------
// This series stops at n-th term, xⁿ
sequence: (1, 1, 1, …, 1, 0, 0, …)
function:
1 - xⁿᐩ¹
-------- = 1 + x + x² + x³ + ⋯ + xⁿ
1 - x


sequence: (1, 1, 1, 1, 0, 0, …)
function:
1 - x⁴
------ = 1 + x + x² + x³ + x⁴
1 - x


// -------------------------------------------------
sequence: (1, a, a², a³, …)
function:
   1
------- = a⁰x⁰ + a¹x¹ + a²x² + a³x³ + ⋯ = 1 + ax + a²x² + …
1 - ax

// -------------------------------------------------
sequence: (2, 2, 2, …)
function:
      1       2
2 × ----- = ----- = 2 + 2x + 2x² + 2x³ + ⋯
    1 - x   1 - x

// -------------------------------------------------
sequence: (3, 3, 3, …)
function:
      1       3
3 × ----- = ----- = 3 + 3x + 3x² + 3x³ + ⋯
    1 - x   1 - x

// -------------------------------------------------
sequence: (1, 3, 9, 27, 81, …)
function:
  1
------ = 1x⁰ + 3x¹ + 9x² + 27x³ + ⋯
1 - 3x

// -------------------------------------------------
// powers of 3 seq shifted by 1 to the left
sequence: (3, 9, 27, 81, …)
function:
  3
------ = 3x⁰ + 9x¹ + 27x² + 81x³ + ⋯
1 - 3x

// -------------------------------------------------
// powers of 3 seq shifted by 1 to the right
sequence: (0, 1, 3, 9, 27, 81, …)
function:
  x
------ = 0x⁰ + 1x¹ + 3x² + 9x³ + 27x⁴ + 81x⁵ + ⋯
1 - 3x


// -------------------------------------------------
// Adding generating functions
sequence: (2, 4, 10, 28, …)
function:
  1       1
----- + ------- = 2 + 4x + 10x² + 28x³ + ⋯
1 - x   1 - 3x

// -------------------------------------------------
// Alternating sequence starting with 1
sequence: (1, 0, 1, 0, 1, 0, …)
function:
  1
------ = 1x⁰ + 0x¹ + 1x² + 0x³ + 1x⁴ + ⋯ = 1 + x² + x⁴ + x⁶ + ⋯
1 - x²

// -------------------------------------------------
// Alternating sequence starting with 0 is the
// shifted alternating sequence starting with 1
sequence: (0, 1, 0, 1, 0, …)
function:
  x
------ = 0x⁰ + 1x¹ + 0x² + 1x³ + 0x⁴ + ⋯ = x + x³ + x⁵ + x⁷ + ⋯
1 - x²

// -------------------------------------------------
// Sequence repeating 1,0,0
sequence: (1, 0, 0, 1, 0, 0, 1, …)
function:
  1
------ = 1x⁰ + 0x¹ + 0x² + 1x³ + 0x⁴ + 0x⁵ + 1x⁶ + ⋯ = 1 + x³ + x⁶ + x⁹ + ⋯
1 - x³

// -------------------------------------------------
// Indices of the sequence are shifted by 1:
// 3x² has power 2 but encodes coefficient/term 3
// Term at index 4 is 5 (as in 5x⁴)
// Coefficient of the term at index 6 is 7 (as in 7x⁶)
// [xᵏ] = k+1
// index:    ₀   ₁   ₂   ₃
// func:   1x⁰ 2x¹ 3x² 4x³
sequence: (1,  2,  3,  4, …)
function:
   1
-------- = 1x⁰ + 2x¹ + 3x² + 4x³ + ⋯
(1 - x)²

// -------------------------------------------------
sequence: (2, 6, 12, 20, …)
function:
   2
-------- = 2x⁰ + 6x¹ + 12x² + 20x³ + ⋯
(1 - x)³

// -------------------------------------------------
sequence: (1,3,6,10,…)
function:
   1
-------- = 1 + 3x + 6x² + 10x³ + ⋯
(1 - x)³
// -------------------------------------------------

```

# Lambda calculus :: the Boolean data type

```hs
-- | Booleans

-- | Booleans: introductions

-- Constructor functions for the two Boolean values
T = TRUE  := λ a b . a  -- K combinator
F = FALSE := λ a b . b  -- KI combinator

-- | Boolean: elimination
COND := λ p t e . p t e
-- The conditional function takes a predicate (a lambda exp that evals to
-- a Boolean value) and reduces to the then_part of the predicate is true
-- or else_part part predicate is false. However, this conditional is not
-- needed since a Boolean value alone acts as a predicate, dispatching to
-- its first (if TRUE) or second arg (if FALSE).

-- | Boolean operations
NOT         := λ a   . a F T
AND         := λ a b . a b F
AND2        := λ a b . a b a              -- conjunction (UNTYPABLE!)
AND3        := λ a b . b a b              -- conjunction (UNTYPABLE!)
OR          := λ a b . a T b
OR2         := λ a b . a b b              -- disjunction (UNTYPABLE!)
OR3         := λ a b . a a b              -- disjunction (UNTYPABLE!)
IMPLY       := λ a b . a b T              -- implication (→)
NEGREVIMPLY := λ a b . a F b              -- negated reverse implication (⇍)
XOR         := λ a b . a (y F T) (b T F)  -- exclusive OR
VERUM       := T -- (⟘)
FALSUM      := F -- (⟙)


-- λab. F                           0000  FALSUM      (⟘)
-- λab.                             0001  NOR         (↓)
-- λab. a F b                       0010  NEGREVIMPL  (⇍)
-- λab.                             0011  (¬A)
-- λab.                             0100  NEGIMPL     (⇏)
-- λab.                             0101  (¬B)
-- λab. a (y F T) (b T F)           0110  XOR         (⊕)
-- λab.                             0111  NAND        (↑)

-- λab. b a b                       1000  AND         (∧)
-- λab.                             1001  IFF         (⇔)
-- λab. F a b                       1010  (B)
-- λab. a b T                       1011  IMPL        (⇒)
-- λab. T a b                       1100  (A)
-- λab.                             1101  REVIMPL     (⇐)
-- λab. a a b                       1110  OR          (∨)
-- λab. T                           1111  VERUM       (⟙)
```


0000 (⟘)  FALSUM
0001 (↓)  NOR
0010 (⇍)  NEGATED REVERSE IMPLICATION
0011 (¬A) NOT A
0100 (⇏)  NEGATED IMPLICATION
0101 (¬B) NOT B
0110 (⊕)  XOR
0111 (↑)  NAND
1000 (∧)  AND
1001 (⇔)  IFF
1010 (B)   B
1011 (⇒)  IMPLICATION
1100 (A)   A
1101 (⇐)  REVERSE IMPLICATION
1110 (∨)  OR
1111 (⟙)  VERUM


## Notes and permutations

- Permutations of the form `a b C` where the lambda head is `λab.a b C`
  - `a` is the 1st arg and the 1st term in a lambda body
  - `b` is the 2nd arg and the 2nd term in a lambda body
  - `C` is the 3rd term in a lambda body
  - `C` may be one the args (`a` or `b`) or a constant Boolean value (T or F)

- This setup produces these 4 lambda terms:
  1. λab. a b T  (→)   (TFTT) 1011
  2. λab. a b F  (∧)   (TFFF) 1000
  3. λab. a b a  (∧)   (TFFF) 1000
  4. λab. a b b  (b)   (TFTF) 1010

Note:
- `T` is a Boolean value but also the `const` function
  and as such it always picks (returns) *its* first argument
- `F` is a Boolean value but also the `flip const` function
  and as such it always picks (returns) *its* second argument
- a lambda term that repr a Boolean value is **at the same time**
  - a "passive" Boolean value
    - usually the final reduction, or evaluation (representing a passive value)
  - an "active", "live" function (`const` or `flip const`), and thus
    - the term `T 1 _` always returns its fst arg, `1`, ignoring snd
    - the term `F _ 2` always returns its snd arg, `2`, ignoring fst
  - in a lambda body, the term `a x y`:
    - if `a := T` then it selects its first arg, i.e. the term `x`
    - if `a := F` then it selects its second arg, i.e. the term `y`

  * 1. `λab.abT` (→)
    t t T = t
    t f T = f
    f t T = T
    f f T = T

  * 2. `λab.abF` (∧)
    t t F = t
    t f F = f
    f t F = F
    f f F = F

  * 3. `λab.aba` (∧)
    t t t = t
    t f t = f
    f t f = f
    f f f = f

  * 4. `λab.abb` (b)
    t t t = t
    t f f = f
    f t t = t
    f f f = f


- Permutations of the form `λab.a C b` produces these lambda terms:
  5. λab. a F b (⇍)  (FFTF) 0010
  6. λab. a T b (∨)   (TTTF) 1110
  7. λab. a a b (∨)   (TTTF) 1110
  8. λab. a b b (b)   (TFTF) 1010

* 5. `λab. a F b` (⇍) FFTF
  t F t = F
  t F f = F
  f F t = t
  f F f = f

* 6. `λab. a T b` (∨) TTTF
  t T t = T
  t T f = T
  f T t = t
  f T f = f

* 7. `λab. a a b` (∨) TTTF
  t t t = t
  t t f = t
  f f t = t
  f f f = f

* 8. `λab. a b b` (b) TFTF
  t t t = t
  t f f = f
  f t t = t
  f f f = f

- Permutations of the form `λab.C a b` produces these lambda terms:
  09. λab. T a b (a)   TTFF 1100
  10. λab. F a b (b)   TFTF 1010
  11. λab. a a b (∨)   TTTF 1110
  12. λab. b a b (∧)   TFFF 1000


* 09. `λab. T a b` (a) TTFF 1100
            T t t = t
            T t f = t
            T f t = f
            T f f = f

* 10.  `λab. F a b` (b) TFTF 1010
            F t t = t
            F t f = f
            F f t = t
            F f f = f

* 11. `λab. a a b` (∨) TTTF 1110
            t t t = t
            t t f = t
            f f t = t
            f f f = f

* 12. `λab. b a b` (∧) TFFF 1000
            t t t = t
            f t f = f
            t f t = f
            f f f = f

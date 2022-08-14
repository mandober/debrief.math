# Index :: Evaluation orders

* Order of evaluation
  - normal order      (from without, leftmost outermost)
  - applicative order (from within, rightmost innermost)
* call-by
  - call-by value
  - call-by name
  - call-by need
  - call-by reference
  - call-by sharing
* Misc aspects
  - β-reduction under lambda


Name                  | eOrder     | Strength

Normal order          | Outermost | Strong
Applicative order     | Innermost | Strong
Call-by-name,  lazy   | Outermost | Weak
Call-by-value, eager  | Innermost | Weak

eOrder = outermost or innermost redex first

- normal vs applicative (order)
- lazy vs eager (evaluation)
- call-by-value vs call-by-name (reduction strategy?)

* Orders
  - any order
  - normal order
  - applicative order
  - call-by value
  - call-by name
  - call-by need
  - Ariola-Felleisen (Matthias Felleisen, )

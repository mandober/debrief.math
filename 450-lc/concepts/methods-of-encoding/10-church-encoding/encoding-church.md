# Church encoding

https://en.wikipedia.org/wiki/Lambda_calculus#Encoding_datatypes
https://en.wikipedia.org/wiki/Church_encoding

With Church Numerals, every function on the natural numbers is to be computed by iteration since numbers are identified with iterators.

Church numerals (1)
- N := n s z = s (… (s z)…) ≅ sⁿ z
- Z := λ  s z. z            ≅ s⁰ z
- S := λn s z. s (n s z)    ≅ sⁿᐩ¹ z
- S := λn s z. n s (s z)    ≅ s¹ᐩⁿ z


Church numerals (1)
-    Z := λ   s z. z
-    S := λ n s z. s (n s z)
- iter := λ n u f. n u f

Church numerals (2) flipped args
-    Z := λ   z s. z
-    S := λ n z s. s (n z s)
- iter := λ n u f. n u f

Ops (1)
- SUC := λ   n s z.   s (n s  z)  ≅ s  (sⁿ z)  ≅ s¹ᐩⁿ z
- SUC := λ   n s z. n s (  s  z)  ≅ sⁿ (s  z)  ≅ sⁿᐩ¹ z
- ADD := λ m n s z. n s (m s  z)  ≅ sⁿ (sᵐ z)  ≅ sⁿᐩᵐ z
- ADD := λ m n s z. m s (n s  z)  ≅ sᵐ (sⁿ z)  ≅ sᵐᐩⁿ z
- MUL := λ m n s z. m   (n s) z   ≅ m sⁿ z     ≅ (sⁿ)ᵐ  z  ≅ sⁿᵐ z
- MUL := λ m n s z. n   (m s) z   ≅ n sᵐ z     ≅ (sᵐ)ⁿ  z  ≅ sᵐⁿ z
- POW := λ m n s z. n m    s  z   ≅ mⁿ s z     ≅ s^(mⁿ) z


Addition (1)
- Rosser has a clever, constant time, definition of addition
  ADD := λm n s z. m s (n s z)  ≅ sᵐ (sⁿ z)        (Rosser)

Addition (2)
- Rosser has a clever, constant time, definition of addition
  ADD := λm n z s. m (n z s) s  ≅ sᵐ (sⁿ z) ≅ sᵐᐩⁿ z

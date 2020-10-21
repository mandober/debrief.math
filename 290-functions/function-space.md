# Function Space

Given two sets $$A$$ and $$B$$, the number of functions from $$A$$ to $$B$$ is $$B$$ to the power of $$A$$:

$$A \to B = B^A$$


hmm?

The number of elements in a Cartesian set
$$
A \times B = |A| \times |B| = \{(a,b)\}
$$




```
(x,y) :: x+y ≠ xy ≠ x^y ≠ y^x :: (2,3)

O = { LT, EQ, GT }    |O|=3
B = { F, T }          |B|=2
---------------------------
The number of elements in the cross product: |O×B| = 3*2 = 6
List 'em:
O×B = {
  (LT, F), (LT, T)
  (EQ, F), (ET, T)
  (GT, F), (GT, T)
}
---------------------------
The number of elements in the relation oRb ≡ R(o,b) = 6
The number of elements in the union o ∪ b = 2+3 = 5


---------------------------

B -> O

num. of functions B -> O:

Y^X = 3^2 = 9 => f(x)=y => (x,y) ∈ f

f(X)=Y
{
  1. const f(X)=GT => { (F,GT), (T,GT) }
  2. const f(X)=LT => { (F,LT), (T,LT) }
  3. const f(X)=EQ => { (F,EQ), (T,EQ) }
  4. by-case f(X)={ GT   if X=F
                  { LT   if X=T
}



num. of elements in the dot product:
|X * Y| = 2*3 = 6 =>
{
  (F,GT), (F,LT), (F,EQ)
  (T,GT), (T,LT), (T,EQ)
}
```

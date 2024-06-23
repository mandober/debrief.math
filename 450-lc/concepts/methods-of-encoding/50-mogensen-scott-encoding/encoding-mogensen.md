# Mogensen-Scott encoding

https://en.wikipedia.org/wiki/Mogensen-Scott_encoding

`Efficient self-interpretation in lambda calculus` by Torben Mogensen, 1994

Let `D` be a data type with `N` data ctors, `Cᵢ`:    

`ⁿ{Cᵢ}ᵢ₌₁`

The `i`-th ctor `Cᵢ` of `N` ctors, `i = 1..N`

$$
{\{C{_i}\}}^{N}_{i=1}
$$

such that data ctor `Cᵢ` has arity `ᴀᵢ`.

The **Scott encoding** of the data ctor `Cᵢ` of the data type `D` is    
`λ x₁ … xᴀᵢ . λ C₁ … Cₙ . Cᵢ x₁ … xᴀᵢ`

For example

```hs
-- the type T with 2 data ctors
data T where
  A :: Bool -> Int  -> Int -> T
  B :: Int  -> Bool        -> T

-- this type alias repr the type ctor T
type T = forall r. (Bool -> Int  -> Int -> r)
                -> (Int  -> Bool -> r)
                -> r

-- the (untyped) data ctor `A` that takes 3 args (x, y, z)
(    λ x y z . λ A B . A x y z) 1 2 3  hA hB
≡ (((λ x y z . λ A B . A x y z) 1 2 3) hA hB)
= (λ A B . A 1 2 3) hA hB
= (λ B . hA 1 2 3) hB
= hA 1 2 3

-- the (untyped) data ctor `B` that takes 2 args (x, y)
(    λ x y . λ A B . B x y) 4 5  hA hB
= (((λ x y . λ A B . B x y) 4 5) hA hB)
= ((λ A B . B 4 5) hA hB)
= ((λ B . B 4 5) hB)
= hB 4 5
```


The Scott encoding coincides with the Church encoding for the Booleans.

The **Church encoding** of pairs may be generalized to arbitrary data types by encoding `Cᵢ` of `D` above as:

- Church: `λ x₁ … xᴀᵢ . λ C₁ … Cₙ . Cᵢ (x₁ C₁ … Cₙ) … (xᴀᵢ C₁ … Cₙ)`
- Scott: `λ x₁ … xᴀᵢ . λ C₁ … Cₙ . Cᵢ x₁ … xᴀᵢ`

Compare Church and Scott encoding of data types:

$$
\begin{align*}
\lambda \ x_1 \ \ldots \ x_{A_i}   .              \\
\ \lambda \ C_1 \ \ldots \ C_N     .              \\
& \ c_{i}  \ (x_{1}     \ c_{1}  \ \ldots \ c_{N}
\ \ldots \ (x_{A_{i}} \ c_{1}) \ \ldots \ c_{N})  \\
& \ c_{i}   \ x_{1} \ \ldots \ x_{A_{i}}
\end{align*}
$$


$$
\large{
    \lambda x_{1} \ \ldots \ x_{A_{i}} \ . \ 
    \lambda c_{1} \ \ldots \ c_{N}     \ . \ 
    [\ c_{i} (x_{1} \ c_{1} \ \ldots \ c_{N}) \ 
    \ldots \ (x_{A_{i}} \ c_{1})
    \ \ldots \ c_{N}]
  }
  \\ 
  \large{
      \lambda \ x_{1} \ \ldots \ x_{A_{i}} \ . \ 
      \lambda \ c_{1} \ \ldots \ c_{N}     \ . \ 
      [c_{i}   \ x_{1} \ \ldots \ x_{A_{i}}]
  }
$$

With this generalization, the Scott and Church encodings coincide on all enumerated datatypes (such as the boolean datatype) because each ctor is a constant (no parameters).


Concerning the practicality of using either the Church or Scott encoding for programming, there is a symmetric trade-off: Church-encoded numerals support a constant-time addition operation and have no better than a linear-time predecessor operation; Scott-encoded numerals support a constant-time predecessor operation and have no better than a linear-time addition operation.

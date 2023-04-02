# SKI combinatory logic

* SKI axioms:   
1. I x = x
2. K x y = x
3. S P Q x = P x (Q x)


* SLI Alphabet:   
- `Σᴄʟ` = { `I`, `K`, `S`, `x`, `′`, `)`, `(`, `=` }


* SKI grammars:    
We introduce several simple grammars over the alphabet `Σᴄʟ`

```ebnf hs
formula  := term '=' term
term     := constant
          | var
          | '(' term term ')'
constant := 'I' | 'K' | 'S'
var      := 'x' | var′
```

In `F A` the term `F` stands for a function and `A` for an argument.


* SKI deduction rules:

```h
                  P = P        (reflection)
       P = Q =>   Q = P        (symmetry)
P = Q, Q = R =>   P = R        (transitivity)
       P = Q => P R = Q R      (pre-application)
       P = Q => R P = R Q      (post-application)
```

Note:
- `P`, `Q`, `R` denote arbitrary terms
- `I P`     stands for `(I P)`
- `K P Q`   stands for `((K P) Q)`
- `S P Q R` stands for `(((S P) Q) R)`
- Application is left-associative: P Q R S T ≡ ((((P Q) R) S) T)
- A term `M P Q` may receive more args (like `P M`), becoming `M P Q (P M)`.
- We write `M ≡ P` to denote that `M` and `P` are exactly the same terms.
- We write `M =ᴄʟ= P` or just `M = P` to denote that this equation is derivable from the axioms of Combinatory Logic using the derivation rules.

## Derived combinators

- Doubling, `D ≡ S I I`
  - D x =ᴄʟ= x x
- Composition, `B ≡ S (K S) K`
  - B f g x =ᴄʟ= f g x
- Self-doubling, `L ≡ D (B D D)`
  - L =ᴄʟ= L L

```hs
-- Doubling
D x =
= S I I x
= I x (I x)
= x x

-- Composition
B f g x =
= S (K S) K f g x
= K S f (K f) g x
= S (K f) g x
= K f x (g x)
= f (g x)

-- Self-doubling
L =
= D (B D D)
= B D D (B D D)
= D (D (B D D))
= D L
= L L
```

## Substitution

Let `M`, `L` be terms and let `x` be a variable. 
The result of substitution of `L` for `x` in `M`, 
denoted by M[x:=L] is defined by recursion on `M`.

case for M | definition of M[x:=L]
-----------|-------------------------
x          | L
y          | y    provided x ≢ y
𝑪          | 𝑪    where 𝑪 ∈ {𝑰,𝑲,𝑺}
P Q        | (P[x:=L]) (Q[x:=L])


>Proposition: If `M =ᴄʟ= N` then `M[x:=Q] =ᴄʟ= N[x:=Q]`.

Examples:
-    (x  𝑰)[x:=𝑺] ≡ 𝑺 𝑰
- (𝑲 𝑰 y x)[x:=𝑺] ≡ 𝑲 𝑰 y 𝑺


## Combinatory Completeness

Proposition:  
>For every term `P` and variable `x`, 
>there is a term `F` 
>(where `x` does not occur in `F`) 
>such that for every term `R`, 
>`F R =ᴄʟ= P[x:=R]` (i.e. `F R = P[x:=R]`).

We denote this term `F` constructed in the proof as `[x]P`. 
Which is pretty much an abstraction `λx.P`.


Proof: Induction on the structure of `P`.
- Case 1:   `P ≡ x`   
  take    [x]x ≡ 𝑰             let   λx.x    ≡ I
  then ([x]x)R ≡ 𝑰 R           then (λx.x) R ≡ I R
               = R                           = R
               = x[x:=R]                     = x[x:=R]

- Case 2:    `x ∉ P`      
  take     [x]P ≡ 𝑲 P         let   λx.P    ≡ 𝑲 P
  then ([x]P) R = 𝑲 P R       then (λx.P) R ≡ 𝑲 P R
                = P                         = P
                = P[x:=R]                   = P[x:=R]

- Case 3:       `P ≡ U V`    
  take  [x](U V)   ≡ 𝑺 ([x]U) ([x]V)         let λx.U V ≡ 𝑺(λx.U)(λx.V)
  then ([x](U V))R ≡ 𝑺 ([x]U) ([x]V) R      then 𝑺(λx.U V)R ≡ 𝑺(λx.U)(λx.V)R
                   = (([x]U) R) (([x]V) R)              = ((λx.U)R) ((λx.V)R)
                   = (U[x:=R]) (V[x:=R])                = (U[x:=R]) (V[x:=R])
                   = (U V)[x:=R]                        = (U V)[x:=R]

## Algorithms

The previous proof gives the following algorithm

P            | [x]P (aka λ.P)
-------------|----------------
x            | 𝑰
P with x ∉ P | 𝑲 P
U V          | 𝑺 ([x]U) ([x]V)

There are different possible algoritms. 
This is quite an efficient one.

## Fixed Points

Proposition:
>Every combinator has a fixed point:   
>for every term `P` there exists a term `X` such that `P X = X`.

Proof:   
Given `P`, define   
W := [x]P (x x)               W :=  (λx.P)(x x)
X := W W               X := W W := ((λx.P)(x x)) ((λx.P)(x x))

Then `X` is a fixed point of `P`.

X ≡ ([x]P (x x)) W = P (W W) ≡ P X
X ≡ (λx.P (x x)) W = P (W W) ≡ P X

Hence, `P X = X`.

`L` is a fixed point of `D` if one has `L = D L = L L`.

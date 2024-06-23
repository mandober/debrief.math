# Gödel universal function

A partial function `U : N×N → N` is said to be a **universal function** for the class of computable functions of one argument if `U` is computable and for any partial computable function of one argument `f`, there is `n ∈ N` such that `U(n,x) = f(x)` for all `x ∈ N`.

A **Gödel universal function** is a universal function `U` with the following property: if `V : N×N → N` is any partial computable function, then there is a total computable `s : N → N` such that `∀xn ∈ N` we have `V(n,x) = U(s(n),x)`.

**S-m-n theorem**: there exists a natural number `sᵐₙ` with the following property: for all natural `x, y₁, …, yₘ, z₁, …, zₙ`,

    ⟦⟦sᵐₙ⟧(x, y₁, …, yₘ)⟧(z₁, …, zₙ) = ⟦x⟧(y₁, …, yₘ, z₁, …, zₙ)

The notation `⟦a⟧(b)`, also written as `φₐ(b)`, stands for the result of the application of the program with number `a` - in some computable, initailly fixed, enumeration of programs - to input `b`.

**S-m-n theorem** (alternative statement): there is a one-to-one computable function `sᵐₙ(x, y₁, …, yₘ)` such that for all `x, y₁, …, yₘ, z₁, …, zₙ`

    ⟦sᵐₙ(x, y₁, …, yₘ)⟧(z₁, …, zₙ) = ⟦x⟧(y₁, …, yₘ, z₁, …, zₙ)


`U(x,y)` and `φₓ(y)` and `⟦x⟧(y)` seems to be various notations for the same thing, thus used interchangeably.


**Kleene's fixed point theorem**: If `H : N → N` is a total computable function and `U` is a Gödel's universal computable function, then there is `n` such that `U(n, x) = U(H(n), x)`.


## Refs

- Intuition behind the construction of a fixed point from Kleene's fixpt theorem
https://math.stackexchange.com/questions/4043913/intuition-behind-the-construction-of-a-fixed-point-from-kleenes-fixed-point-the

- Connection between the Smn-theorem and Gödel universal functions
https://math.stackexchange.com/questions/4021150/connection-between-the-s-mn-theorem-and-g%C3%B6del-universal-functions

- Equivalence of two versions of the Smn-theorem
https://math.stackexchange.com/questions/4021181/equivalence-of-two-versions-of-the-s-mn-theorem

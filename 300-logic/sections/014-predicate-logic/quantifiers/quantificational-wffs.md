# Quantificational wffs

To systematically describe all the sentences of FOL, we first need to describe a larger class of wffs.

An **atomic wff** is an n-ary predicate followed by `n` terms, where terms can now contain either variables or individual constants.

Using atomic wffs as our building blocks, we can construct more complicated wffs by repeatedly applying the following rules:
1. If `P`        is a wff, so is `¬P`
2. If `P₁ … Pₙ`   are wffs, so is `(P₁ ⋀ … ⋀ Pₙ)`
3. If `P₁ … Pₙ`   are wffs, so is `(P₁ ⋁ … ⋁ Pₙ)`
4. If `P` and `Q` are wffs, so is `(P → Q)`
5. If `P` and `Q` are wffs, so is `(P ⟺ Q)`
6. If `P` is a wff and `ν` is a variable, then `∀xP` is a wff
7. If `P` is a wff and `ν` is a variable, then `∃xP` is a wff
0. Nothing else is a wff

By convention, we allow the outermost parentheses in a wff to be dropped.

## Free and bound variables

When does a variable have an associated quantifier?

The precise rules when a variable is free (unbound) or bound:

1. any variable in an atomic wff is free
2. free vars in `P`         are free in `¬P`
3. free vars in `P₁ … Pₙ`   are free in `(P₁ ⋀ … ⋀ Pₙ)`
4. free vars in `P₁ … Pₙ`   are free in `(P₁ ⋁ … ⋁ Pₙ)`
5. free vars in `P` and `Q` are free in `(P → Q)`
6. free vars in `P` and `Q` are free in `(P ⟺ Q)`
7. free vars in `P` are free in `∀vP`, except for `ν`, 
   and every occurrence of `ν` in `P` is said to be bound
8. free vars in `P` are free in `∃vP`, except for `ν`, 
   and every occurrence of `ν` in `P` is said to be bound


A sentence is a wff with no unbound (free) variables.

An occurrence of a variable may be both free and bound in the same formula.

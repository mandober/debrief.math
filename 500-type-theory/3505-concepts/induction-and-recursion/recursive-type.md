# Recursive types

In type theory, data types may be defined inductively, and are thus called *inductive data types*, or inductively-defined (data) types.

<!-- #region intermezzo in bash -->

<details><summary>Intermezzo</summary>

Define a bash expansion that prints these 4 variants.

```bash
# layout: squeezed naivetè
echo inductive{ly-defined\ ,}{data\ ,}types

# layout: one-per-liner. wt@^#%$* leading space in all but first item?!
echo inductive{ly-defined\ ,}{data\ ,}types$'\n'

# ***chicken dinner!*** layout: pixel-perfect unordered list
echo $'\b'-\ inductive{ly-defined,}{\ data,}\ types$'\n'
- inductively-defined data types
- inductively-defined types
- inductive data types
- inductive types
```

</details>

<!-- #endregion -->

In type theory, the natural numbers are commonly defined inductively.

## Inductive types vs Recursive types

Type theory is a stricter settings than most PLs, in which such types are called recursive types. But in TT, they are called inductive types, while their eliminators are recursive functions. In TT, typically, data types are inductive and functions on inductive types are recursive. However, inductively-defined types probably imply a well-defined induction (mathematical induction or structural induction), so perhaps when we discuss examples of datatype that live outside this restricted comfort zone, we may call them recursive types.

*Recursion* is usually associated with functions, and a *recursive function* is one that mentions its name (on lhs) in its own definition (on rhs).

```hs agda
-- unusable recursive function (guaranteed to diverge)
recursive = recursive

-- usable recursive function: a stream of 1's
ones = 1 : ones
take5 = take 5 ones -- [1,1,1,1,1]

-- 'ones' depends on the previously defined List (recursive) type
data List a = [] | a : (List a)
--                      ^^^^^^ self-ref

-- recursive function over the List type needs to handle 2 cases:
-- the base case when the list is empty,  i.e. the Nil  case for []
-- the rec. case when the list is nempty, i.e. the Cons case for (x : xs)
h :: (a -> b) -> (a -> List a -> b) -> List a -> b
h f g ls = case ls of
  []     -> f []
  x : xs -> g x (h f g xs)



-- split into equations that patern-match on a list value.
-- the base doesn't need f
recur f []       = 0
recur f (x : xs) = f x : recur f xs
```

Recursive types are types whose definition refers to themselves, either by using their own name during their definition, or by using explicit fixpoint operators like `μ` types.

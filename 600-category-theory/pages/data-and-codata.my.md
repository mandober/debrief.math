# Data and codata

data                 | codata
---------------------|---------------
inductive            | coinductive
finite objects       | infinite objects
structural recursion | guarded corecursion
structural induction | guarded coinduction
subset types         | quotient types      (could be realized?)


## Data, codata, constructors and destructors

**Data** represents finite values and is built by evaluating a finite number of applications of constructor functions.

**Codata** represents potentinally infinite values and it is defined by specifying the values of destructor functions.

Here are two examples:

* Data: The 4-element *finite list* `L4 = [1, 1, 1, 1]` is built by specifying
`L4 = cons(1, cons(1, cons(1, cons(1, nil))))`, where `cons` is a binary data constructor, and `nil`is the empty list nullary data constructor.

* Codata: The *infinite list* `L∞ = [1, 1, 1, 1, …]` is defined by specifying
`hd(L∞) = 1` and `tl(L∞) = L∞`, where `hd` and `tl` are destructors. Both take a list: `hd` returns the first element, `tl` returns the rest.

**Recursion** defines a function mapping values from a data type by invoking itself on the components of the constructors used to build values of that type.

**Corecursion** defines a function mapping to a co-data type by specifying the results of applying deconstructors to the results of the function.


The list constructors are `nil` and `cons`:
- `nil` is the nullary list ctor that constructs the empty list
- `cons` is a binary list ctor, `cons(n, l)`, that, given an object `n` and a list, `l`, returns a new list with the object placed as the first element of the provided list, `n:l`. Here, we are concerned with a list of numbers, so `n` is a number and it is added to the front of original list `l`.

The list deconstructors are `null`, `hd` and `tl`:
- `null(l)` is true if and only if `l = nil`
- `hd(l)` is the first element of `l` and `tl(l)` is the list resulting from removing its first element.

The equation `l = if null(l) then nil else cons(hd(l), tl(l))` holds for every list `l`.


* Example:

The function `Add1` adds 1 to each element of a list of numbers and is defined below both by recursion and corecursion.

- recursively defined `Add1` maps finite to finite lists, `Add1 : L → L`. 
- corecursively defined `Add1` maps possibly infinite lists to possibly infinite lists, `Add1 : L∞ → L∞`.

```hs
-- Recursion:
--   Add1(nil) = nil
--   Add1(cons(n, l)) = cons(n + 1, Add1(l))
-- ≅
add1 :: (Num a) => List a -> List a
add1 Nil         = Nil
add1 (Cons x xs) = Cons (x + 1) (add1 xs)
-- ↑ this call is "larger" than this ↑

x1 = add1 [1..5] -- [2,3,4,5,6]


-- Corecursion:
--   null(Add1(l)) = (l := nil)
--   hd  (Add1(l)) = hd(l) + 1
--   tl  (Add1(l)) = Add1(tl(l))
-- ≅
add1 :: (Num a) => List a -> List a
add1 ls =
  if nill ls
  then Nil
  else hd : tl
  where
    hd = head ls + 1
    tl = add1 (tail ls)

x2 = take 5 $ add1 [1..] -- [2,3,4,5,6]
```

More generally, recursion defines functions from `L` to some set `X`, whereas corecursion defines functions from some set `X` to `L`.

# Algebraic data type

https://en.wikipedia.org/wiki/Algebraic_data_type

In FP and type theory, an algebraic data type (ADT) is a compound type, formed by using type operations. These are analogous to the operations found in algebra (arithmetic) like addition, multiplication and exponentiation.

Two of the most common kinds of algebraic types are *products*, which correspond to multiplication, and *sums*, which correspond to addition (hence their names).

In Haskell, the `Pair` type is the canonical product type, while the canonical sum type is `Either`. Note that Haskell allows using the same name for the type ctor (`Pair`) and the data ctor (`Pair`) as they live in separate namespaces.

```hs
-- Pair type, A ⨉ B
data Pair a b = Pair a b

-- Either type, A + B
data Either a b = Left a | Right b
```

Both products and sums have a single type ctor with a unique name (in the type namespace), but their differ in the lhs of their declarations in that products always have a single data ctor, while sums may have any number of data ctors; that is, any number larger than 2 (because, mutatis mutandis, a sum with only one data ctor would be the same as a product).

```hs
-- concrete Pair type, Int ⨉ Bool
p1 :: Pair Int Bool
p1 = Pair 42 true

-- concrete Either type, Int + Bool
s1 :: Either Int Bool
s1 = Left Int

s2 :: Either Int Bool
s2 = Right Bool
```

Note: a single example value is sufficient to represent a product type such as the `Pair Int Bool`. To construct a new value of a product type, all the constituent types (that is, a value of each constituent type) must be supplied, and they must be supplied all at once.


both values, `s1` and `s2`, have identical types


*Product types* are more specific, they consists of a single data ctor that, optionally, groups together several constituent types, called the fields, under its name. For example, the `Pair` data type above has a single data ctor, also named `Pair`, which groups exactly two types together, represented by the type variables `a` and `b`. An example of a concrete product type is `Pair Int Bool`.

*Sum types* are more general, in fact, we say that **algebraic data types are, possibly recursive, sums of products**. Sums are also compound types that group together types under a single type (ctor), but not under a single data ctor. Unlike products which only have a single data ctor, sum types must have two data ctors minimum, while the maximum number is unbound. 

Sum types are also called tagged disjoint unions. 

that is, sum types have several (at least two) subgroups called *variants*, and each variant is actually a product type. Hence, a sum type itself is also a possibly recursive, sum of products.

A value of a variant type is usually created with a quasi-functional entity called a data (or value) constructor.
Each variant has its own constructor, which takes a specified number of arguments with specified types. 
The set of all possible values of a sum type is the set-theoretic sum, i.e., the disjoint union, of the sets of all possible values of its variants. 
Enumerated types are a special case of sum types in which the constructors take no arguments, as exactly one value is defined for each constructor.



Values of algebraic data types are scrutinized (analyzed, destructured, eliminated, consumed) using the technic of *pattern matching*.



which identifies a value by its constructor or field names and extracts the data it contains.

Algebraic data types were introduced in Hope, a small functional programming language developed in the 1970s at the University of Edinburgh.

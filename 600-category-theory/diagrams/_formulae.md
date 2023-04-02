

```
● ─ │ ⟍


● ─────────── ● ─────────── ● ─────────── ●
  ⟍           │ ⟍           │ ⟍           │ ⟍
    ⟍         │   ⟍         │   ⟍         │   ⟍
      ⟍       │     ⟍       │     ⟍       │     ⟍
        ⟍     │       ⟍     │       ⟍     │       ⟍
          ⟍   │         ⟍   │         ⟍   │         ⟍
            ⟍ │           ⟍ │           ⟍ │           ⟍
              ● ─────────── ● ─────────── ● ─────────── ●
```





## 1

```hs
-- function in general:
f : A -> B
-- as an anonymous function:
A ⟼ B



A = {0,1} = ℤ/2ℤ
B = {T,F} = 𝔹

f : A -> B
f : ℤ/2ℤ -> 𝔹

{0,1} ⟼ {T,F}
{0,1} |--f--> {T,F}
{0,1} |--f--> {T,F}


f : A -> B
{0,1} |--f--> {T,F}
f 0 = F
f 1 = T
```

## 2

```hs
-- The general shape of a (unary) function:
f :: a -> b
-- the function type is a type constructor (->) that takes (relates) two types
-- a and b, where a is an input type and b is an output (or result) type.
-- The function type is a builtin type, but we can imagine it as:
data (->) a b = …
-- perhaps we can also image the rhs as
data (->) a b = a -> b
-- or as a lambda
data (->) a b = \a -> b
```


## leftovers


For example, a function `f` from `A` as `{0,1}` to `B` as `{T,F}` may be defined as

```hs
-- function in general:
f : A -> B
-- as an anonymous function:
A ⟼ B



A = {0,1} = ℤ/2ℤ
B = {T,F} = 𝔹

f : A -> B
f : ℤ/2ℤ -> 𝔹

{0,1} ⟼ {T,F}
{0,1} |--f--> {T,F}
{0,1} |--f--> {T,F}


f : A -> B
{0,1} |--f--> {T,F}
f 0 = F
f 1 = T
```

The point being that in the set view, we see the elements of both of these sets, and we see this function as the two individual mappings.









In general, a function between sets A and B is first specified by its type signature `f : A -> B`, along with its definition that specifies individual mappings, i.e. the association of each domain element to a codomain element. However, in the set view of this class, we only see a myriad of concrete functions, perhaps where the set `A` is `{0,1}` and the set `B` is `{T,F}`.





and the type of the former is `ℤ/2ℤ` and of the latter `𝔹`. More concretely, the function `f : ℤ/2ℤ -> 𝔹` i.e.`f : {0,1} -> {T,F}`

```hs
-- The general shape of a (unary) function:
f :: a -> b
-- the function type is a type constructor (->) that takes (relates) two types
-- a and b, where a is an input type and b is an output (or result) type.
-- The function type is a builtin type, but we can imagine it as:
data (->) a b = …
-- perhaps we can also image the rhs as
data (->) a b = a -> b
-- or as a lambda
data (->) a b = \a -> b
```



In the more familiar set view, 
from both vantage points, as a set and as a category. 

We'll often switch between the two views of 
this collection - as a set view and as 
By viewing these two collections side by side, 

as a huge class in the set view and as a category in the category view, we'll gain some insight toward understanding categories in general.


having side-by-side set and category view.

That class of sets is abstracted into the category 𝗦𝗲𝘁, and we'll jump between the set view, which grants us insight into the structure of each set, the structure that is abstracted away in the category view. In fact, the cat view is at a level of abstraction so high that each set becomes a single tiny structureless point. In 𝗦𝗲𝘁, the objects are sets, only seen as 



and category view

in the set view where we have a clear insight into the structure of each set. 


The all encompasing collection is not a set, as that 

of a product by 
First, we are 


This class contains all sets along with numerous functions that relate them. Over in the categorical view, each set collapses into a structureless object, and each function collapses into an arrow.

While a function consists of all its mappings under the set view, in the cat view, all these mappings collapse into a single arrow; it can be said that only a function's type remains visible at this high level of abstraction, so, in a way, an arrow represents a type.

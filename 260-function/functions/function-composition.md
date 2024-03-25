# Composition of functions

Consider a function `f : b -> c`. The type param `b` is input type in negative position, while output type `c` is in positive position. It is said that the function type is *contravariant in input type* and *covariant in output type*.

If we focus on `f` as our "central" function, i.e. a fixed function that we're supposed to manipulate into another (function) type, we can obviously manipulate either the input type `b` or the output type `c`. However, these two types, having a different variance, are manipulated in different ways.

We may consider the output type, `c`, as the function's eventual value, collapsing the entire function type `b -> c` into a single value of type `c`. If we regard a function type to be equivalent (up to some iso) to its output type, then it is easy to see why the putput type param is covariant. The type params of all other data types (data structures) are covariant. 

*Covarience means that converting an `a` to `b` behaves in much the same as converting a `List a` into `List b`. Or, for our purposes here, converting a function type `b -> c` into `c -> d`.


## Original function

```
b ------ᶠ-----> c



a₁------ᵏ-----> b
a₂------ʲ-----> b
a₃------ᵐ-----> b

a ------ʰ-----> b
b ------ʰ-----> c
c ------ʰ-----> d
```


## Shifting the domain


```
abc
│││
ᵍᵏʲ
│││
↓↓↓
 d -------ᶠ-------> e


                 ↑
                 │
                 ᵏ
                 │
                 a₃
```

We can change the domain of `f`, currently represented by type param `b`, by *pre-composing* `f` after a suitable function, e.g. `g : a -> b`, with `f`, thereby obtaining th e composition `g . f`.




## Shifting the codomain

```
b ======> c
    ᶠ     │ʰ
          ↓
          d
```



We can change the codomain of `f`, currently represented by output type `c`, by *pre-composing* a suitable fucntion with it, e.g. `g : c -> d`.


Considering the current input type, `c`, 
 of this function by postcomposing another (compatible) function like `g : a -> b` with `f`, `g . f`.



Considering the output type, this means we can extend the domain of this function by postcomposing another (compatible) function like `g : a -> b` with `f`, `g . f`.


## Shifting domain and codomain

```
g : a -> b
     f : b -> c

a
│ᵍ
↓
b ======> c
     ᶠ    │ʰ
          ↓
          d
```



└ ┴ ┘ ┌ ┬ ┐ ├ ┼ ┤ ─ │ ╌ ┄ ┈ ╎ ┆ ┊ ╴ ╵ ╶  ╷ ⟍ ⟋


a ─────┘ b └───── c
a ─────┤ b ├───── c
a ─────┐ b ┌───── c



⟍⟋⟍⟋⟍⟋⟍⟋⟍⟋⟍⟋⟍⟋⟍⟋
  ⟍⟋   ⟋⟍      ⟋
    ⟍⟋    ⟍⟋⟍⟋
      ⟍⟋⟍⟋⟍⟋
        ⟍⟋

      ⟋˸⟍
     ¹  ⟋˸⟍
       ²  ⟋˸⟍
         ³  ⟋˸⟍
           ⁴   ⁵


⟍⟋
  ⟍⟋
    ⟍⟋

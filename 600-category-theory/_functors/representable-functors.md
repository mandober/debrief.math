# Representable functors

- Category Theory II 4.1: Representable Functors
https://www.youtube.com/watch?v=KaBz45nZEZw&list=PLMTONe7-tohmE02KadSPXvgpu26sn5j_n&index=27

- Part 14 of Categories for Programmers: Representable functors
https://bartoszmilewski.com/2015/07/29/representable-functors/

## The Hom Functor

Every category comes equipped with a canonical family of mappings to the Set category. These mappings are in fact functors, so they preserve the structure of the category.

Let's build one such mapping. Let's fix one object `a` in C and pick another object `x` also in C. The hom-set `C(a, x)` is a set, an object in `Set`. When we vary `x`, keeping `a` fixed, `C(a, x)` will also vary in Set. Thus we have a mapping from x to Set. If we want to stress the fact that we are considering the hom-set as a mapping in its second argument, we use the notation `C(a, -)`, with the dash serving as the placeholder for the argument.

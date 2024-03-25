# Encoding data structures

Lambda calculus allows data to be stored as a partially applied function (closure). Until the final arg is supplied, a function cannot be fully applied so it acts as a data store.


## Pair

In the simplest case, a ternary function, applied to only two args, playing the role of data, will hold onto them until the final arg is supplied. That is how the a pair data structure works.

- `λa. λb. λs. s a b` a ternary function `mkpair` to simulate a pair
- `x` and `y` are two values (maybe of diff type) we want to store in a pair
- `λa. λb. a` the function `fst` that retrives the first component form a pair
- `λa. λb. b` the function `snd` retrives the second component form a pair

```
mkpair x y
= (λa. λb. λs. s a b) x y
= (λb. λs. s x b) y
= λs. s x y
```

At this point, the closure `λs. s x y` is actually a (initialized) pair. This closure is isomorphic to a pair, perhaps denoted by `(x,y)`, in a PL.

In Haskell, constructing and then retrieving the first component of a pair would look like this:

```hs
p = (1, 'b')
fst p -- 1
```

In lambda calculus, we haven't yet defined numbers and character, but if we had, constructing and then retrieving the first component of a pair would look like this:

```js
mkpair x y fst =
(λa. λb. λs. s a b) 1 'b' (λa. λb. a) =
(λb. λs. s 1 b) 'b' (λa. λb. a) =
(λs. s 1 'b') (λa. λb. a) = 
(λa. λb. a) 1 'b' = 
(λb. 1) 'b' = 
1
```

## Tuple

A tuple is a data structure that generalies a pair. It can have any number of fields, each storing a value of potentially different type.

In a PL like Haskell, we can construct a tuple more easily, but we can still retrieve only one component at the time, just like in LC.

To represent a tuple with `k` number of fields, we define a lambda with `k + 1` formal parameters, that is a `k + 1`-ary function. The extra field is for the final 'selector' arg. When that final arg is eventually supplied, the lambda will be fully appled, enabling it return the value of the selected field.

The tuple setup may look like this: `(λ a₁ … aₖ C . C a₁ … aₖ) v₁ … vₖ f`

The lambda abstraction `(λ a₁ … aₖ C . C a₁ … aₖ)` represents a tuple constructing function. We can think of each of the first `k` formal params, `a₁ … aₖ`, as an uninitialized tuple field. The final param `C` will bind the selector function. After the function, we have a `k` args `v₁ … vₖ` that represent the data we want to store in a tuple. The final argument `f` is the actual selector `k`-ary function.

When the lambda function gets applied to `k` args, `v₁ … vₖ`, the `k`-tuple is constructed. At that moment it will look like this `(C . C v₁ … vₖ) f`, with all the fields initialized to a value.

In fact, the closure `(C . C v₁ … vₖ)` is the actual tuple. But until the final arg is supplied, we can pass this closure to another lambda function, that will bind it a formal parameter, after which this lambda can "make duplicate" of the bound value through repeating this parameter any number of times in its body. That way our tuple closure can be reused any number of times, and that way all of its fields can be retrieved.

Considering a lambda abstraction like `λf. f f`: the part `λf.` is called the lambda head, which is the place intended for declaration of the formal parameter (strictly, one formal param per lambda head). The remaining part `f f` is called lambda body. The occurrence of the parameter `f` in the head is called *declaration occurrence*, while the two occurrences in the body are called *application occurrences*.

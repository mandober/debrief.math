# Set FAQ

## Do all concievable sets already exist or are they constructed JiT?

It seems no set is ever constructed, but any set we can refer to not only exists now (post factum), but it has always existed. So "building" sets is more like trying to distinguish that particular set against the background that contains all the possible sets that are and have always been.

The **axiom of comprehension** states that for any given property, there is a corresponding set, i.e. a set that contains all objects for which that property holds. This axioms allows anything and everything to constitute a set and therefore it's responsible for permitting Russell's paradox in naive set theory. But when is this overarching container set constructed? Has it always existed or does it pops into existance when we think about it? Maybe it pops in and out of existance all the time, like a freaking gluon. Are bosons sets?

It would seem that an object has no say in whether it'd like to inhabit a particular set - it already inhabits the whole lot. Right? Whether by conforming to some property that defines membership, or just because it is allowed to construct any arbitrary set just by listing its elements. In fact, the construction rules only make the very job of listing the elements easier. Ok, so all objects pretty much belong to all sets, which are themselves object after all, so it's all great and consistent.


## Can we duplicate set elements freely?

Sets do not recognize duplicated elements but what does that precisely mean. Most authors will just state something like {a,b} = {a,b,b,a} without going into further details. So does this implies we're free to clone a set's elements as we see fit?

For example, considering the powerset `P(S)={ ∅, {a}, {b}, {a,b} }` of the set `S = {a,b}` and the definition of the ordered pair: `(x,y) = {{x},{x,y}}` - can we duplicate an element and then transform some set members, concluding that:   
`P(S) = { ∅, (a,b), (b,a) }`

```
S    = {a,b}                            set S
P(S) = { ∅, {a}, {b}, {a,b} }           powerset of S
P(S) = { ∅, {a}, {b}, {a,b}, {a,b} }    can we duplicate an element
P(S) = { ∅, (a,b), (b,a) }              to make two ordered pairs like this?

```

{∅, {a}, {b}, {a,b}} ≡ {∅, (a,b), (b,a)} ?


## How many primitive sets there are?

There might be only one - the empty set. Actually, it's more correct to say that only the empty set is sufficient in order to construct all other sets. The empty set has the atricles "the" because it is unique, there are no other distinct empty sets. This may be problematic from the aspect of types, where sets are types and set members correspond to values that inhabit a type, because a strict type system would stil make distinction between two empty sets that have a different type. For example, in programming languages that have algebraic data types, e.g. Haskell, the types `Maybe Int` and `Maybe Bool` are never equivalent, not even when both are empty:    
`Nothing :: Maybe Int /= Nothing :: Maybe Bool`    
But in languages that represent the bottom value using a `null` value (often, null is the only value of the null type; although sometimes, null is made to inhabit every type), it is quite possible that two nulls are equivalent. Even in math, with numbers, a zero is a zero - whether one quantity stands for apples and the other for oranges, they become equal at zero. It's the only situation when it's safe to compare them.

There are no other building blocks but the empty set - the empty set alone is sufficient, along with an *abstract concept of sets* that only ever contains other (abstract) sets and the empty set.

In fact, that's exactly how the natural numbers are constructed:

```
0 ∈ ℕ
n ∈ ℕ -> S(n) ∈ ℕ

0 = ∅
S(n) = n ∪ {n}

n = {0, 1, 2, ... P(n)}
```

0 is the empty set, 1 is the set containing 0, 2 is the set containing two elements (0 and 1). The successor of `n` is the set containing `n` as well as the set containing `n`, denoted by `S(n) = n ∪ {n}`. This also means that the set representing the number `n` contans all the previous numbers (number-sets),i.e. `n = {0, 1, 2, ..., n-1}`.

```
0:  ∅
1: {∅ }
2: {∅ , {∅} }
3: {∅ , {∅} , {∅,{∅}} }
4: {∅ , {∅} , {∅,{∅}} , {∅,{∅},{∅,{∅}}} }
5: {∅ , {∅} , {∅,{∅}} , {∅,{∅},{∅,{∅}}} , {∅,{∅},{∅,{∅}},{∅,{∅},{∅,{∅}}}} }
5: {0 ,  1  ,  2      ,  3              ,  4                               }
```

This means that `3 ∈ 4` ∧ `3 ⊆ 4`, moreover, `3 ⊂ 4` squint for `3 < 4`

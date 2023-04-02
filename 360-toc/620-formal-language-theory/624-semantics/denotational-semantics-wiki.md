# Denotational Semantics

https://en.wikipedia.org/wiki/Denotational_semantics

Denotational semantics (initially known as mathematical semantics or Scott-Strachey semantics) is an approach of formalizing the meanings of programming languages by constructing mathematical objects, called *denotations*, that describe the meanings of expressions from the languages.

Other approaches providing formal semantics of programming languages include axiomatic semantics and operational semantics.

Broadly speaking, denotational semantics is concerned with finding mathematical objects called *domains* that represent what programs do.

For example, programs might be represented by partial functions between the environment and the system.

An important tenet of denotational semantics is that semantics should be compositional: the denotation of a program phrase should be built out of the denotations of its subphrases.

1. Historical development
  1.1 Meanings of recursive programs
  1.2 Denotational semantics of non-deterministic programs
  1.3 Denotational semantics of concurrency
  1.4 Denotational semantics of state
  1.5 Denotations of data types
  1.6 Denotational semantics for programs of restricted complexity
  1.7 Denotational semantics of sequentiality
  1.8 Denotational semantics as source-to-source translation
2. Abstraction
3. Compositionality
4. Semantics versus implementation
5. Connections to other areas of computer science


## 1. Historical development

Denotational semantics originated in the work of Christopher Strachey and Dana Scott published in the early 1970s.

> As originally developed by Strachey and Scott, denotational semantics provided the meaning of a computer program as a function that mapped input into output.

To give meanings to recursively defined programs, Scott proposed working with continuous functions between domains, specifically *complete partial orders*.

As described below, work has continued in investigating appropriate denotational semantics for aspects of programming languages such as sequentiality, concurrency, non-determinism and local state.

Denotational semantics has been developed for modern PL that use capabilities like concurrency and exceptions (Concurrent ML, Communicating sequential processes, Haskell).

> The semantics of these languages is compositional in that the meaning of a phrase depends on the meanings of its subphrases.

For example, the meaning of the applicative expression `f(E1,E2)` is defined in terms of semantics of its subphrases `f`, `E1` and `E2`.

In a modern PL, `E1` and `E2` can be evaluated concurrently and the execution of one of them might affect the other by interacting through shared objects causing their meanings to be defined in terms of each other. Also, `E1` or `E2` might throw an exception which could terminate the execution of the other one.

### Meanings of recursive programs

> Denotational semantics is ascribed to a program phrase as a function from an environment (holding the current values of its free variables) to its denotation.

For example, the phrase `n*m` produces a denotation when provided with an environment that has binding for its two free variables. If in the environment `n = 3` and `m = 5`, then the denotation is `15`.

A function can be represented as a set of ordered pairs of argument and corresponding result values.

For example, the set `{(0,1), (4,3)}` denotes a function with result 1 for argument 0, result 3 for the argument 4, and undefined otherwise.

The problem to be solved is to provide meanings for recursive programs that are defined in terms of themselves such as the definition of the factorial function

```cpp
int factorial(int n) {
  return (n == 0) ? 1 : n * factorial(n - 1);
}
```

The solution is to build up the meanings by approximation. The factorial function is a total function from ℕ to ℕ (defined everywhere in its domain), but we model it as a partial function. At the beginning, we start with the empty function (an empty set). Next, we add the ordered pair `(0,1)` to the function to result in another partial function that better approximates the factorial function. Afterwards, we add yet another ordered pair `(1,1)` to create an even better approximation.

fac : ℕ -> ℕ
fac = { ⟘, (0,1), (1,1), (2,2), (3,6), (4,24), (5,120), … }

It is instructive to think of this chain of iteration for a "partial factorial function" `F` as F⁰, F¹, F², … where `Fⁿ` indicates `F` applied `n` times.

* `F⁰({})` is the totally undefined partial function, represented as the set {}
* `F¹({})` is the partial function represented as the set `{(0,1)}`;
  it is defined at 0 (to be 1), and undefined elsewhere.
* `F²({})` is the partial function represented as the set 
  `{(0,1), (1,1), (2,2), (3,6), (4,24)}`, 
  defined for arguments 0,1,2,3,4 and undefined elsewhere.

This iterative process builds a sequence of partial functions from ℕ to ℕ. Partial functions form a chain-complete partial order using `⊆` as the ordering.
Furthermore, this iterative process of better approximations of the factorial function forms an expansive (also called progressive) mapping because each 
`Fⁱ <= Fⁱᐩ¹` using `⊆` as the ordering. So by the (Bourbaki-Witt) *fixed-point theorem*, there exists a fixed point for this iterative process.

In this case, the fixed point is the least upper bound of this chain, which is the full factorial function, which can be expressed as the direct limit

`∐ {i ∈ ℕ} Fⁱ({})`

Here, the symbol `∐` is the *directed join* (of directed sets), meaning *least upper bound*. The directed join is essentially the join of directed sets.

### Denotational semantics of non-deterministic programs

### Denotational semantics of concurrency

### Denotational semantics of state

### Denotations of data types

Many programming languages allow users to define recursive data types. For example, the type of lists of numbers can be specified by

```js
datatype list = Cons of nat * list | Empty
```

This section deals only with functional data structures that cannot change. Conventional imperative programming languages would typically allow the elements of such a recursive list to be changed.

For another example: the type of denotations of the untyped lambda calculus is

```js
datatype D = D of (D → D)
```

The problem of solving domain equations is concerned with finding domains that model these kinds of datatypes. One approach, roughly speaking, is to consider the collection of all domains as a domain itself, and then solve the recursive definition there.

*Polymorphic data types* are data types that are defined with a parameter. For example, the type of `List a` is defined

```hs
data List = Nil | Cons a (List a)
```

Lists of natural numbers, then, are of type `List Nat`, while lists of strings are of `List String`.

Some researchers have developed domain theoretic models of polymorphism. Other researchers have also modeled parametric polymorphism within constructive set theories. A recent research area has involved denotational semantics for object and class based programming languages.

### Denotational semantics for programs of restricted complexity

### Denotational semantics of sequentiality

### Denotational semantics as source-to-source translation

## 2. Abstraction

It is often considered important to connect denotational semantics with operational semantics. This is especially important when the denotational semantics is rather mathematical and abstract, and the operational semantics is more concrete or closer to the computational intuitions. The following properties of a denotational semantics are often of interest.

## 3. Compositionality



## 4. Semantics versus implementation

*According to Dana Scott (1980)*: It is not necessary for the semantics to determine an implementation, but it should provide criteria for showing that an implementation is correct.

*According to Clinger (1981)*: Usually, however, the formal semantics of a conventional sequential programming language may itself be interpreted to provide an (inefficient) implementation of the language. A formal semantics need not always provide such an implementation, though, and to believe that semantics must provide an implementation leads to confusion about the formal semantics of concurrent languages. Such confusion is painfully evident when the presence of unbounded nondeterminism in a programming language's semantics is said to imply that the programming language cannot be implemented.


## 5. Connections to other areas of CS

Some work in denotational semantics has interpreted types as domains in the sense of domain theory, which can be seen as a branch of model theory, leading to connections with type theory and category theory. Within computer science, there are connections with abstract interpretation, program verification, and model checking.

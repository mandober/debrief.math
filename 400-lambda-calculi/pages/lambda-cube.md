# Lambda Cube

https://en.wikipedia.org/wiki/Lambda_cube

In mathematical logic and type theory, the λ-cube is a framework introduced by Henk Barendregt[^1] to investigate the different dimensions in which the Calculus of Constructions is a generalization of the Simply Typed λ-calculus.

[^1]: Henk Barendregt, 1991. *Introduction to generalized type systems*. Journal of Functional Programming. doi:10.1017/s0956796800020025.

Each dimension of the cube corresponds to a new kind of dependency between terms and types. Here, "dependency" refers to the capacity of a term or type to bind a term or type. The respective dimensions of the λ-cube correspond to:
- x-axis (→): types that can bind terms, corresponding to dependent types.
- y-axis (↑): terms that can bind types, corresponding to polymorphism.
- z-axis (↗): types that can bind types, corresponding to type ctors.

The different ways to combine these three dimensions yield the 8 vertices of the cube, each corresponding to a different kind of typed system. The λ-cube can be generalized into the concept of a pure type system.

## Contents

- Examples of Systems
  - 1.1. (λ→) Simply Typed Lambda Calculus
  - 1.2. (λ2) System F
  - 1.3. (λω) System Fω
  - 1.4. (λP) Lambda-P
  - 1.5. (Fω) System Fω
  - 1.6. (λC) Calculus of constructions
- 2. Formal definition
- 3. Comparison between the systems
  - 3.1. λ→
  - 3.2. λ2
  - 3.3. λP
  - 3.4. λω
  - 3.5. λC
- 4. Relation to other systems
- 5. Common properties
- 6. Subtyping
- 7. See also
- 8. Notes
- 9. Further reading
- 10. External links


## Examples of Systems

### Simply Typed Lambda Calculus

STLC is a typed lambda calculus, in fact, it is the simplest typed lambda calculus, having no other type features. Therefore, it sits at the origin point of lambda cube representing a common denominator of features shared by all 8 lambda cube calculi, namely, the addition of a type system. From STLC, the other lambda calculi branch out, each with a particular feature of the type system as represented by the cube's axes.

STLC represent a lambda calculus stripped of all advanced typing features, having only a simple type system to handle the typing. Thus, the only way to construct abstractions is the same as in the untyped lambda calculus: by making terms depend on terms.

Abstractions (functions) are the same like those found in most PLs - the single term, that is a function's output, can only depend on other terms, that are the function's input arguments; so, both input and output are term-level values.

In STLC, the only way to construct an abstraction is by making a term depend on a term, axiomatized by the typing rule:

```hs
-- Simply-Typed Lambda Calculus

Γ, x : σ |- T : τ
----------------------- (λ)
Γ |- (λx. T) : σ → τ
```

- `Γ` is the context, i.e. a list of value-type pairs
- `x` is a variable of type `σ`
- `σ` and `τ` are types
- `T` ranges over λ-terms of type `τ`

### System F

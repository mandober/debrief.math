# Comparison of λ-calculi

https://en.wikiversity.org/wiki/Foundations_of_Functional_Programming

https://en.wikiversity.org/wiki/Foundations_of_Functional_Programming/Comparison_of_%CE%BB-calculi

This page compares λ-calculi according to various interesting properties they may have.

* Subject reduction
https://en.wikipedia.org/wiki/Subject_reduction
In type theory, a type system has the property of **subject reduction** (also subject evaluation, type preservation or simply preservation) if evaluation of expressions does not cause their type to change. Formally, if `Γ ⊢ e1 : τ` and `e1 -->> e2` then `Γ ⊢ e2 : τ`. Intuitively, this means one would not like to write an expression, in say Haskell, of type Int, and have it evaluate to a value `v`, only to find out that `v` is a string. Together with *progress*, it is an important meta-theoretical property for establishing *type soundness* of a type system. The opposite property, if `Γ ⊢ e2 : τ` and `e1 -->> e2` then `Γ ⊢ e1 : τ`, is called **subject expansion**. It often does not hold as evaluation can erase ill-typed sub-terms of an expression, resulting in a well-typed one.

https://en.wikipedia.org/wiki/Type_safety
https://en.wikipedia.org/wiki/Category:Type_theory

* Rice's theorem
https://en.wikipedia.org/wiki/Rice%27s_theorem
**Rice's theorem** states that all non-trivial semantic properties of programs are undecidable. A semantic property is one about the program's behavior (for instance, does the program terminate for all inputs), unlike a syntactic property (for instance, does the program contain an if-then-else statement). A property is non-trivial if it is neither true for every partial computable function, nor false for every partial computable function.

- Calculi
  - Untyped λ-calculus
  - Implicitly simply typed λ-calculus
  - Explicitly simply typed λ-calculus (λ→)
  - Implicitly typed second-order λ-calculus
  - Explicitly typed second-order λ-calculus (λ2)
  - Hindley-Milner type theory
  - λΠ
  - λΠ2
  - λω̅
  - λω
  - λΠω̅
  - Calculus of constructions (λC, λΠω)
  - Naïve type theory (λ*)
  - UTT-Σ
  - Pure Type Systems


- Features
  - Polymorphic types (λ2)
  - Type ctors (λω)
  - Dependent types (λΠ)
  - Types as values
  - Implicit types
  - Unique types
  - Higher-kinded types
  - Subrange types (of existing discrete types, e.g. Natᐩ = [1..])
  - Universes
    - Universe types
    - Sorts, sort type
    - Type in Type property
    - Commulativity
  - Normalizing (terms, reductions)
    - Normalization
    - Strong normalization
    - Weak normalization
    - Confluence of reduction
  - Type safety
    - consistency
    - completeness
      - Does type checking/inference allow all sound (wrt to the underlying type theory) progs to compile? Are there well-typed progs in the underlying type theory that are nevertheless not accepted, type-wise?
    - decidability
      - Can type checking/inference stuck or bring about crashes/hangs?
      - Decidability of type checking
      - Decidability of typability, decidable typability
      - Turing completeness
    - soundness
      - Does type checking/inference accepts progs that will nevertheless crash? Is it the case that if a prog compiles it runs correctly?
      - Subject reduction theorem
      - Progress
  - Base types, compound types, exotic types, and other types
    - basic, base types, ground types
      - unlifted types, e.g. `int` = machine 64-bit singed integers
      - lifted types, e.g. `Int = int ⋃ ⟘`
      - unboxed types (located on stack)
      - boxed types (pointer chasing to heap-located data)
    - Abstract data types
    - Universally quantified types
    - Existentially quantified types
    - ADT
      - empty type, 0
      - unit type, 1
      - sums
        - variant
        - discriminated union (variant record)
        - disjoint set
        - union
        - list
        - tree
      - products
        - pair
        - tuple
        - array
        - record
        - set
        - map
        - class
        - object
      - exponential types
        - function types
    - exotic types
      - pointer
      - reference



## Features

- Untyped λ-calculus
  - Implicit types?             Yes
  - Polymorphic types?          No
  - Higher-kinded types?        No
  - Dependent types?            No
  - Types as values?            No
  - Turing complete?            Yes
  - Normalizing?                No
  - Consistent?                 No
  - Type checking decidable?    Yes
  - Typability decidable?       Yes
  - Types unique?               Yes
  - Subject reduction theorem?  Yes

- Implicitly simply typed λ-calculus
  - Implicit types?             Yes
  - Polymorphic types?          No
  - Higher-kinded types?        No
  - Dependent types?            No
  - Types as values?            No
  - Turing complete?            No
  - Normalizing?                Yes
  - Consistent?                 Yes
  - Type checking decidable?    Yes
  - Typability decidable?       Yes
  - Types unique?               No
  - Subject reduction theorem?  Yes

- Explicitly simply typed λ-calculus (λ→)
  - Implicit types? No
  - Polymorphic types?  No
  - Higher-kinded types? No
  - Dependent types? No
  - Types as values? No
  - Turing complete? No
  - Normalizing?  Yes
  - Consistent? Yes
  - Type checking decidable? Yes
  - Typability decidable? Yes
  - Types unique? Yes
  - Subject reduction theorem? Yes

- Implicitly typed second-order λ-calculus
  - Implicit types? Yes
  - Polymorphic types?  Yes
  - Higher-kinded types? No
  - Dependent types? No
  - Types as values? No
  - Turing complete? No
  - Normalizing?  Yes
  - Consistent? Yes
  - Type checking decidable? No
  - Typability decidable? No
  - Types unique? No
  - Subject reduction theorem? Yes

- Explicitly typed second-order λ-calculus (λ2)
  - Implicit types? No
  - Polymorphic types?  Yes
  - Higher-kinded types? No
  - Dependent types? No
  - Types as values? No
  - Turing complete? No
  - Normalizing?  Yes
  - Consistent? Yes
  - Type checking decidable? Yes
  - Typability decidable? Yes
  - Types unique? Yes
  - Subject reduction theorem? Yes

- Hindley-Milner type theory
  - Implicit types? Yes
  - Polymorphic types?  Yes
  - Higher-kinded types? No
  - Dependent types? No
  - Types as values? No
  - Turing complete? Yes
  - Normalizing?  No
  - Consistent? No
  - Type checking decidable? Yes
  - Typability decidable? Yes
  - Types unique? No
  - Subject reduction theorem? Yes

- λP
  - Implicit types? No
  - Polymorphic types?  No
  - Higher-kinded types? No
  - Dependent types? Yes
  - Types as values? No
  - Turing complete? No
  - Normalizing?  Yes
  - Consistent? Yes
  - Type checking decidable? Yes
  - Typability decidable? Yes
  - Types unique? Yes
  - Subject reduction theorem? Yes

- λP2
  - Implicit types? No
  - Polymorphic types?  Yes
  - Higher-kinded types? No
  - Dependent types? Yes
  - Types as values? No
  - Turing complete? No
  - Normalizing?  Yes
  - Consistent? Yes
  - Type checking decidable? Yes
  - Typability decidable? Yes
  - Types unique? Yes
  - Subject reduction theorem? Yes

- λω̅
  - Implicit types? No
  - Polymorphic types?  No
  - Higher-kinded types? Yes
  - Dependent types? No
  - Types as values? No
  - Turing complete? No
  - Normalizing?  Yes
  - Consistent? Yes
  - Type checking decidable? Yes
  - Typability decidable? Yes
  - Types unique? Yes
  - Subject reduction theorem? Yes

- λω
  - Implicit types? No
  - Polymorphic types?  Yes
  - Higher-kinded types? Yes
  - Dependent types? No
  - Types as values? No
  - Turing complete? No
  - Normalizing?  Yes
  - Consistent? Yes
  - Type checking decidable? Yes
  - Typability decidable? Yes
  - Types unique? Yes
  - Subject reduction theorem? Yes

- λPω̅
  - Implicit types? No
  - Polymorphic types?  No
  - Higher-kinded types? Yes
  - Dependent types? Yes
  - Types as values? No
  - Turing complete? No
  - Normalizing?  Yes
  - Consistent? Yes
  - Type checking decidable? Yes
  - Typability decidable? Yes
  - Types unique? Yes
  - Subject reduction theorem? Yes

- Calculus of constructions (λPω)
  - Implicit types? No
  - Polymorphic types?  Yes
  - Higher-kinded types? Yes
  - Dependent types? Yes
  - Types as values? No
  - Turing complete? No
  - Normalizing?  Yes
  - Consistent? Yes
  - Type checking decidable? Yes
  - Typability decidable? Yes
  - Types unique? Yes
  - Subject reduction theorem? Yes

- Naïve type theory (λ*)
  - Implicit types?             No
  - Polymorphic types?          Yes
  - Higher-kinded types?        Yes
  - Dependent types?            Yes
  - Types as values?            Yes
  - Turing complete?            (?)
  - Normalizing?                No
  - Consistent?                 No
  - Type checking decidable?    No
  - Typability decidable?       No
  - Types unique?               Yes
  - Subject reduction theorem?  Yes

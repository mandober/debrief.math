# Function Theory ∷ Formulae

## Complete function definition

The full definition of a named function consists of two separate (usually stated relatively near each other) syntactic entities called the signature of a function and the definition of a function.

The signature of a function specifies the name of a function, the domain and the codomain sets.

NOTE: A function is not fully defined if the codomain is not specified or vague. Two functions that have the same domain 



The definition of a function

  - A function's definition (implementation) consists of 2 parts: head and body.
    - the head of a function definition specifies a list of formal parameters (variables).
      - 
      these are called the binding occurences of the parameters (variables).
    - the body of a function definition specifies the computation rule
      - these are called the binding occurences of the parameters (variables).


* A function is a serial (left-total) and right-unique relation between 

consists of a function signature that specifies


* A function may be named, `f`, and its domain, `A`, and codomain `B` must be specified

`f : A -> B`

𝕱𝖔𝖗𝖒𝖚𝖑𝖆𝖊 ∙ 𝔉𝔬𝔯𝔪𝔲𝔩𝔞𝔢 ∙ 𝓕𝓸𝓻𝓶𝓾𝓵𝓪𝓮 ∙ ℱℴ𝓇𝓂𝓊𝓁𝒶ℯ

f : A -> B , f(x) = x² + 1

let
A = element of A
B = element of B

∀a∃b(A(x))

∀x ∈ X. ∃y ∈ Y. ( ∃z ∈ Y. [ (x, y) ∈ f ∧ (x, z) ∈ f ] -> y = z ∧ y = f(x) )

a ∈ A
b ∈ B
c ∈ B

∀a ∈ A. ∃b ∈ B. ( ∃c ∈ B. [ (a, b) ∈ f ⋀ (a, c) ∈ f ] -> b = b' ⋀ b = f(a) )

∀a(a ∈ A -> ∃b(b ∈ B ⋀ ∃b'(b' ∈ B ⋀ f(a) = b ⋀ f(a) = b' -> b = b'
)))

. ( ∃c ∈ B. [ (a, b) ∈ f ⋀ (a, c) ∈ f ] -> b = b' ⋀ b = f(a) )


* function `f : A -> B` is a total function iff
  ∀x ∈ A. ∃yz ∈ B. [f(x) = y ⋀ f(x) = z] ---> y = z


* injective:  f : A → B is injective <=> ∀x ∈ A. ∃yz ∈ B. [f(x) = y ⋀ f(x) = z] ---> y = z

* surjective: `f : A → B is surjective <=> ∀y ∈ B. ∃x ∈ A. f(x) = y`


* A function with domain `X` and codomain `Y`, denoted by `f : X -> Y`, is in fact a triple `(X, f, Y)`, where `f` is a relation, `f ⊆ X ⨯ Y`, such that for each `x` in `X` there is a unique `y` in `Y` s.t. `(x, y) ∈ f`, i.e. `f(x) = y` holds.

* NOTE: A function is not completely specified by `f : X -> Y`, even if it's a total function, because the totality only means that we can obtain the entire domain, `X`, and the range, `f(x) ∈ Y ⋀ { f(x) } ⊆ Y`, while it leaves the codomain set, `Y`, free to expand (if its type is not specified). In short, the function `f : ℕ -> ℕ` is not the same as the function `f : ℕ -> ℤ`, even if both are defined by `f(n) = n²`.

* `Dom(f) = { x | ∀x ∈ X }`
* `Dom(f) = { x | ∀(x,y) ∈ f where f(x) = y }`
* `Ran(f) = { y | ∀x ∈ X. !∃y ∈ Y. f(x) = y }`
* `Dom(f) = { y | ∀(x,y) ∈ f }`
* `f = { (x, y) | ∀x ∈ X. !∃y ∈ Y. f(x) = y }`
* `∀x ∈ X. !∃y ∈ Y. (x,y) ∈ f`
* `∀x ∈ X. !∃y ∈ Y. f(x) = y`

* The notation `(x, y) ∈ f`, or `x f y`, is prefered for relations, while the notation `f(x) = y`, meaning the same thing, is preferred for functions (after all, all functions are relations).


* A relation R between two sets A and B is a functional relation iff, for all x in A, there are y and z in B, such that (x,y) ∈ R and (x,z) ∈ R implies y = z.

`∀x ∈ A. ∃y∃y' ∈ B. [ (x,y) ∈ F ⋀ (x,y') ∈ F ] -> y = y'`

* A **total function** is a triple `(f,A,B)` where `A` and `B` are sets and `f` is a functional relation between them, determined by the set of the ordered pairs `f = { (x, y) | ∀x ∈ X. !∃y ∈ Y. f(x) = y }`.
* The `∀x ∈ X` quantification guarantees a function's totality for it means that all domain elements participate in that relation; however, not all codomain elements need to participate - the set formed by the codomain elements that do, is called a *range*, `Ran(f) ⊆ Cod(f)`.
* If the said quantification is weakened, `∃x ∈ X`, then it is a *partial function*, meaning that some domain elements don't participating in the relation.


* A function `f: A → B` is **injective** (one to one) iff, ∀x∀y ∈ A. f(x) = f(y) implies that x = y. (dom = ran < cod)

`f : A → B is injective <=> ∀a∀a' ∈ A. [ f(a) = f(a') ] -> a = a'`

* A function f: A → B is **surjective** (onto) iff, for all y ∈ B, there is
some x ∈ A such that f(x) = y. Equivalently, the range of f is the set B.
(dom >= cod = ran)

`f : A → B is surjective <=> ∀y ∈ B. ∃x ∈ A. f(x) = y`

* A function is **bijective** (or a 1-to-1 correspondence) iff it is both injective and surjective. In this case, `|Dom(f)| = |Ran(f)| = |Cod(f)|`.

Funjections:
- injection  => |dom| = |ran| < |cod|
- surjection => |dom| > |ran| = |cod|
- bijection  => |dom| = |ran| = |cod|


* A surjection (but non-bijection) `f : A -> B` implies the existence of a number of injections `g : A <- B`, some of which imply `f ∘ g = 1ʙ`.



* A **partial function** is a triple `(f,A,B)` where `A` and `B` are arbitrary sets (possibly empty), and `f` is a functional relation (possibly empty) between `A` and `B`, called the graph of `f`.
* A partial function doesn't have the entire domain engaged. With partial functions, injection cannot be distinguished from bijection. A partial surjection is also possible.

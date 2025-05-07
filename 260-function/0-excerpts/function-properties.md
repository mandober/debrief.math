# Function properties

- a function can be *between* two sets or *on* a set when they are the same set
- the source set of a function is a *domain*, dom(f)
- the target set of a function is a *codomain*, cod(f)
- the entire dom is covered: every dom element must be associated (engaged)
- a subset of cod is covered: not every cod element needs to participate
- those elements that do, form a set called range, ran(f) ⊆ cod(f)
- thus, there are 3 sets to a function: dom, cod and a function set itself
- a function set consists of ordered pairs (x,y) with x ∈ dom, y ∈ cod, f(x)=y
- a total function has the entire domain engaged
- a partial function does not; it is not defined for some dom elements

### The issue with codomain

Knowing that the entire cod need not participate, opens up a question whether a proper definition of a function must also include the precisely defined codomain. The domain and range are precisely defined, and easily calculated, from the set of the function itself, but that set or ordered pairs doesn't tell us much about the size of the actual codomain. We know that ran(f) ⊆ cod(f) so maybe ran = cod, obut maybe not. If the cod is not explicitly specified, it can be arbitrarily larger than the range, which brings up the issue: are two, otherwise identical functions, differing only in the codomain, really equal? It seems they shouldn't be, even though they have the same graph. Also, it seems the cod must be always explicitly specified and it must be a part of a function's definition. It can be easily denoted by a signature, e.g. `f : ℤ -> ℕ`. With vague cod, surjection becomes very relative: onto what? The idea that a function is a surjection cannot be used.

## Injective, surjective and bijective functions

- function  : dom -> ran ⊆  cod
- injective : dom == ran <= cod
- surjective: dom >= ran == cod
- bijective : dom == ran == cod

- non-injective : dom == ran <= cod
- non-surjective: dom >= ran == cod


- injection is one-to-one
- injection embeds stuff (dom into cod)
- non-injection does not embed stuff

- surjection has a preimage for every element of the codomain
- surjection is onto
- surjection tends to shrink stuff (domain)
- non-surjection does not shrink stuff

- bijection is one-to-one correspondence
- bijection is the complete embedding of a dom into cod
- bijection is used to enumerate and compare sets
- bijection is invertable
- bijection means that
  f  : A -> B, 
  f⁻¹: B -> A, 
  1ᴀ : A -> A, 
  f⁻¹ ∘ f : A -> B -> A 
  f⁻¹ ∘ f = 1ᴀ


### Relative to set theory

These properties concern the domain, the codomain and the image of functions.

- *Identity function*: maps any given element to itself.
- *Constant function*: has a fixed value regardless of arguments.
- *Empty function*: whose domain equals the empty set.
- *Set function*: whose input is a set.
- *Choice function* called also selector or uniformizing function: assigns to each set one of its elements.

- Injective function: has a distinct value for each distinct argument. Also called an injection or, sometimes, one-to-one function. In other words, every element of the function's codomain is the image of at most one element of its domain.
- Surjective function: has a preimage for every element of the codomain, that is, the codomain equals the image. Also called a surjection or onto function.
- Bijective function: is both an injection and a surjection, and thus invertible.

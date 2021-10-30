# Call-by-need

The call-by-need evaluation strategy is a version of the call-by-name strategy, that pays attention to duplicated variables. For example, if a lambda abstraction is applied to two arguments which are the same, the args are not evaluated before the call (call-by-name), but when they do get evaluated only one of them is processed and that result is shared with the other. Thus this strategy is also known as call-by-sharing. Moreover, the result of each evaluation is memoized for the sake of the future calls that involves the same argument.

## Evaluating Call-By-Need on the Control Stack
Stephen Chang, David Van Horn, Matthias Felleisen

Ariola and Felleisen's call-by-need λ-calculus replaces a variable occurrence with its value at the last possible moment. To support this gradual notion of substitution, function applications (once established) are never discharged. Here we explore how to translate this notion of reduction into an abstract machine that resolves variable references via the control stack. In particular, the machine uses the static address of a variable occurrence to extract its current value from the dynamic control stack.

### Implementing call-by-need

Following Plotkin[1], Ariola and Felleisen characterize the by-need λ-calculus as a variant of β:

(λx.E[x]) V = (λx.E[V ]) V

and prove that a machine is an algorithm that searches for a (generalized) value via the *leftmost-outermost* application of this new reduction[2].

Philosophically, the call-by-need λ calculus has two implications:

1. First, its existence says that imperative assignment isn't truly needed to implement a lazy language. The calculus uses only one-at-a-time substitution and does not require any store-like structure. Instead, the by-need β suggests that a variable dereference is the resumption of a continuation of the function call, an idea that Garcia et al. [3] recently explored in detail by using delimited control operations to derive an abstract machine from the by-need calculus. Unlike traditional machines for lazy functional languages, Garcia et al.'s machine eliminates the need for a store by replacing heap manipulations with control (stack) manipulations.

2. Second, since by-need β does not remove the application, the binding structure of programs (the association of a function parameter with its value) remains the same throughout a program's evaluation. This second connection is the subject of this paper. This binding structure is the control stack, and thus we have that in call-by-need, static addresses can be resolved in the dynamic control stack.

Our key innovation is the **CK+ machine**, which refines the abstract machine of Garcia et al. by making the observation that when a variable reference is in focus, the location of the corresponding binding context in the dynamic control stack can be determined by the lexical index of the variable. Whereas Garcia et al.'s machine linearly traverses their control stack to find a specific binding context, our machine employs a different stack organization where indexing can be used instead of searching. Our machine organization also simplifies the hygiene checks used by Garia et al., mostly because it explicitly maintains Garcia et al.'s "well-formedness" condition on machine states, instead of leaving it as a side condition.

### The call-by-need λ calculus, the de Bruijn version

The terms of the by-need λ-calculus are those of the λ-calculus [4], which we present using de Bruijn's notation [5], that is, *lexical addresses replace variables*:

M := n | λ.M | M M

where `n ∈ N`. The *set of values* is just the *set of abstractions*:

V := λ.M

One of the fundamental ideas of call-by-need is to evaluate the argument in an application only when it is "needed," and when the argument is needed, to evaluate that argument only once.

Therefore, the by-need calculus cannot use the *β-reduction* because doing so may evaluate the argument when it is not needed, or may cause the argument to be evaluated multiple times. Instead, `β` is replaced with the `deref` notion of reduction:

(λ.E[n]) V **need** (λ.E[V]) V, λ *binds* n                 deref

The `deref` notion of reduction requires the argument in an application to be a value and requires the body of the function to have a special shape. This special shape captures the demand-driven substitution of values for variables that is characteristic of call-by-need. In the `deref` notion of reduction, when a variable is replaced with the value `V`, some renaming may still be necessary to avoid capture of free variables in `V`, but for now, we assume a variant of *Barendregt's hygiene condition* for de Bruijn indices and leave all necessary renaming implicit.

Here is the set of evaluation contexts `E`:

E := [] | E M | (λ.E) M | (λ.E′[n]) E

Like all contexts, an *evaluation context* is an expression with a hole in the place of a subexpression.
1. The 1st evaluation context is an empty context that is just a hole, `[]`
2. The 2nd evaluation context, `E M`, indicates that evaluation of applications proceeds in a leftmost-outermost order. This is similar to how evaluation proceeds in the by-name λ-calculus [1]. however, unlike by-name, call-by-need defers dealing with args until absolutely necessary. Thus, it demands evaluation within the body of a let-like binding.
3. The 3rd evaluation context, `(λ.E) M`, captures this notion. This context allows the deref notion of reduction to search under applied `λs` for variables to substitute.
4. The 4th evaluation context, `(λ.E′[n]) E`, explains how the demand for a parameter's value triggers and directs the evaluation of the function's arg. In the 4th evaluation context, the visible `λ` binds `n` in `λ.E′[n]`. This means that there are `n` additional `λ` abstractions in `E′` between `n` and its binding `λ`.

To make this formal, we define the function `∆ : E → N` as

```js
∆([])          = 0
∆(E M)         = ∆(E)
∆((λ.E) M)     = ∆(E) + 1
∆((λ.E′[n]) E) = ∆(E)
```

With `∆`, the side condition for the fourth evaluation context is `n = ∆(E′)`.

Unlike β, deref does not remove the arg from a term when substitution is complete. Instead, a term `(λ.M) N` is interpreted as a term `M` and an env where the variable (index) bound by `λ` is associated with `N`. Since args are never removed from a by-need term, reduced terms are not necessarily values. In the by-need λ-calculus, reductions produce *answers* `a` (this representation of answers is due to Garcia et al. [3]).

a := A[V]                 answers
A := [] | (λ.A) M         answer contexts

Answer contexts `A` are a strict subset of evaluation contexts `E`.

Since both the operator and the operand in an application reduce to answers, two additional notions of reduction are needed:

.         (λ.A[V]) M N `need` (λ.A[V N]) M                         assoc-L
(λ.E[n]) ((λ.A[V]) M)  `need` (λ.A[(λ.E[n]) V]) M, if ∆(E) = n     assoc-R


As mentioned, some adjustments to de Bruijn indices are necessary when performing substitution in λ-calculus terms. For example, in a deref reduction, every free variable in the substituted `V` must be incremented by `∆(E) + 1`. Otherwise, the indices representing free variables in `V` no longer count the number of `λ`s between their occurrence and their respective binding `λ`s. Similar adjustments are needed for the *assoc-L* and *assoc-R* reductions, where subterms are also pulled under `λ`s.

(…)

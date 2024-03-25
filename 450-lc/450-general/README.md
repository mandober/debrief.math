# 400 :: Lambda calculi

- Lambda calculi :: 400
  - Lambda calculus :: 401
    - general introduction of lambda calculus

The section [401-lambda-calculus] starts with a general introduction of lambda calculus, the circumstances, rationale and historical context.

Church's original lambda calculus was untyped, but before even thinking about the introduction of types, many other issues needed to be addressed first. Because not much else besides the basic syntactic rules was specified, many aspects of the lambda calculus were open to interpretations, perhaps the most important one being the choice of a reduction strategy, also including:

- reduction aspects
  - reduction axioms
    - α-conversion
      - α-equivalence
      - α-renaming
    - β-reduction
      - substitution
      - name capture
      - name capture-avoiding β-reduction
    - η-conversion
      - η-reduction, λx.fx ⇔ f
        - correspondance to point-free style
      - η-expansion, f ⇔
        - correspondance to point-full style
    - δ-reduction
  - reduction strategy
    - strict (eager) evaluation
    - lazy evaluation
  - call-by modes
    - call-by-value
    - call-by-name
    - call-by-need
    - call-by-sharing
    - call-by-reference
  - reduction order
    - normal order
      - leftmost outermost
    - applicative order
      - rightmost innermost
  - reduction aspects
    - result sharing
    - memoization
    - graph reduction
    - reducing under a lambda
    - "free" beta reductions
- implementation aspects
  - Krivine machine
  - SECD
  - handling of unused arguments
  - handling of duplicated arguments
- normal forms
  - confluence
  - redex
  - normal form
  - head normal form
  - beta normal form




and various implementation choices, of which the most important aspect is probably the choice of reduction strategy


but also includes thinkgs like


- handling name capture substitution
- reduction strategies (order of reduction, call by …)
- extensions of the basic rules (δ-rule, ζ-rule, ϵ-rule, …), 
- lamba lifting and dropping, 
- methodologies for implementing variable binding (naive, HOAS, PHOAS, De Bruijn indices, De Bruijn levels, locally nameless, …)









it is thoroughly examined, particularly empasizing the factors that contributing the most to the further classification of this system, which include: approaches to avoid 


offers a lot of challenges 

for extensions beyond types. 


untyped 
leaves 


, and it has since served as the foundation onto which the other extensions were build.





The other logical part of the section deals with typed λ-calculi, exploring numerous typing features and extensions.

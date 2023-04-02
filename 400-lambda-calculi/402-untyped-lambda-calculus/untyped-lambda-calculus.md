# Untyped lambda calculus :: Semantics and Implementation

Lambda calculus, cf. 1930's
- Simple, core language: everything is a function
- Can express all computation
- Can encode complex language features as syntactic sugar
- Simple semantics - just a single instruction, i.e. function application

* Syntax

```hs
e := x | λx.e | e e
```

* Nondeterministic small-step semantics

```hs
--------------------- E-AppAbs
(λx.b)a → [x⟼a]b


      e → e′
--------------------- E-Abs (for strong eval only)
   λx.e → λx.e′


  e1    → e1′
--------------------- E-App1
  e1 e2 → e1′ e2


     e2 →   e2′
--------------------- E-App2 (for lazy eval only)
   v e2 → v e2′
```

*Evaluation Semantics*: `→` is evaluation; these rules define the functionality from input to output.

Evaluation: applying these rules to simplify your term until you have a value (no more evaluation possible).

**E-App1**:    
In an application `e1 e2`, 
if a term `e1` can be evaluated (can step) to a term `e1′`, 
then we can evaluate `e1` to `e1′` to get a new redex `e1′ e2`.   
In other words, 
in an application `e1 e2`, 
first reduce the left operand `e1` as much as possible 
until we get an abstraction.

**E-App2**:    
In an application `e1 e2`, 
the rule that was applied first was `E-App1` 
which has reduced `e1` doen to an abstraction 
(i.e. down to a value `v`, because Abs are values). 
After that, the application becomes `v e2`, and now 
we proceed to reduce the arg `e2` 
provided `e2` can step to `e2′`. 
So we evaluate the arg further, as much as possible, 
(i.e. down to a normal form)
eventually obtaining the redex `v e2′`.   
In other words, in an application, 
after we have reached an Abs as the left operand, 
and there is an arg as the right operand, 
which can be further reduced (which can step) 
then we should step it, as much as possible 
(i.e. down to a normal form).

**E-App-Abs**:    
After we have reduced both operands of an App: 
the first term is reduced down to an Abs, 
and the second term is reduced down to a normal form; 
then we can perform β-reduction: `(λx.b)a → [x⟼a]b`.    
β-reduction proceeds by substituting the param `x` with arg `A` in body `B`. More precisely, the arg `A` first gets bound to the param `x`; then we replace all the bound occurrences of the var `x` with `A` in the lambda body `B`. In fact, substitution is far more complicated than this, because we also have to avoid name capture. But as far as this rule is concerned, it says that we can simplify an application of an Abs to an arg term, by substitution.

**E-Abs**     
This rule is only employed in strong evaluation strategies. It is a reduction under a lambda. It says that if we have a redex in the body of an lambda abs, then we can reduce it further. That is, we can step `λx.e` to `λx.e′` if the term `e` can step (i.e. can be reduced) to another term `e′`. Weak evaluation strategies do not perform reduction under a lambda.

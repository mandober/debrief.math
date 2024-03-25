# Lambda calculus :: Alpha

* α-conversion, sometimes known as α-renaming, allows bound variable names to be changed. For example, α-conversion of `λx.x` might yield `λy.y`.

* Terms that differ only by α-conversion are called *α-equivalent*. Frequently, in uses of lambda calculus, α-equivalent terms are considered to be equivalent.

The precise rules for α-conversion are not completely trivial:
- when α-converting an abstraction,
  the only variable occurrences that are renamed 
  are those that are bound to the same abstraction. 
  For example, 
  an α-conversion of `λx.λx.x` may result in `λy.λx.x` but not in `λy.λx.y`. The latter has a different meaning from the original. 
  This is analogous to the programming notion of *variable shadowing*.
- α-conversion is not possible if 
  it would result in a variable getting captured by a different abstraction. For example, 
  if we replace `x` with `y` in `λx.λy.x`, 
  we get `λy.λy.y`, which is not the same.
- In PLs with static scope, 
  α-conversion can be used to make *name resolution* simpler
  by ensuring that no variable name masks a name 
  in a containing scope.
  See "α-renaming to make name resolution trivial":
  https://en.wikipedia.org/wiki/Name_resolution_(programming_languages)#Alpha_renaming_to_make_name_resolution_trivial
- In the *De Bruijn index* notation: 
  https://en.wikipedia.org/wiki/De_Bruijn_index 
  any two α-equivalent terms are syntactically identical.



## α-conversion

The α-conversion is one of the 3 major rule of lambda calculus. It formalizes the fact that the specific names of variables are unimportant, i.e. these terms are α-equivalent `λx.x` and `λa.a`. Usually we say that two lambda terms are equal up to renaming, or up to α-equivalece. The α-conversion formalizes the process of renaming a variable, that is, replacing all ocurrences of a variable in a lambda term with a fresh variable (basically, just renaming all ocurrences of the original variable), which is sometimes necessary in order to avoid name-capture substitutions.

For example, β-reducing the term `(λxy.x)(λx.y)` to `λy.(λx.y)` aka `λyx.y` is incorrect due to the name capture of `y` in the arg - `y` becomes bound but was free. To reduce this correctly, we must first rename the conflicting variable names: we rename all occurences (binding and applied) of `x` in the abstraction (left term) with `z`, justified by the α-equivalence `λxy.x =α= λzy.z`. So, the initial term `(λxy.x)(λx.y)` is first renamed to `(λzy.z)(λx.y)`, and then it can be safely reduced to `λy.(λx.y)`.

```hs
(λx.λy.x)(λx.y)  -- original term
-- we cannot carelessly reduce it coz y in the arg becomes captured
(λx.λy.x)(λx.y)          [x:=λx.y](λy.x)  ≠ᵦ  λy.λx.y   -- wrong!

-- renaming y (the binding occurrence) in the left term
=α= (λx.λz.x)(λx.y)      [y:=z](λx.λy.x)  ≠ᵦ  λy.(λx.y) -- wrong again!

-- renaming x (the binding and applied occurrences) in the left term
=α= (λz.λy.z)(λx.y)      [x:=z](λx.λy.x)  ≠ᵦ  λy.(λx.y) -- wrong again!

-- renaming the binding and applied occurrences of x in the left term:

=α= (λx.λy.x)(λx.z)

=α= (λz.λy.z)(λx.y)
=ᵦ= (λz.λy.z)(λx.y)

```

# Product vs coproduct

Set-theoretically, a product is a Cartesian product between, usully two, sets.

Categorical product 
may not exist in every category 
but when it does 
(like in Set and other CCC) 
it is an object 
with two outgoing arrows. 

In a category `C`, 
the real product is an object `P`, 
with two outgoing arrows `π₁` and `π₂` 
`π₁ : P -> A`   
`π₂ : P -> B`   
such that 
for all other product candidate objects `X` 
with two outgoing arrows `f` and `g` 
`f : X -> A`    
`g : X -> B`    
there is an arrow `m : X -> P` 
such that   
`π₁ ∘ m = f`    
`π₂ ∘ m = g`   
.


`m` arrow factorizes a candidate object 
across the real product object.

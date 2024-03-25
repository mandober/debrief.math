# Function Theory :: Functions :: Function currying

A set of pairs (x, y) defines a function really, since in set theory a function is identified with a set of pairs (plus its domain and codomain). Strictly, the *graph of a function* is identified with a set of pairs (from which we can infer the domain but not the codomain).

{(x, y)}  ≅  f x = y

Moreover, since any function is a relation, we can indeed represent it (really its graph) by a set of pairs,

f x = y  ≅  {(x, y)}  ≅  {(x, f x)}

This correspondence between f x = y  ≅  {(x, f x)} seems to be the "zeroth" step in currying a polyadic function.

  A × B → R ≅
  A → B → R

with explicit parens:

    (A × B) → R ≅
    A → (B → R)

function taking a pair is converted into a 
function that takes the 1. arg and returns another 
function that takes the 2. arg and returns the result.


A ternary function

    A × B × C → R ≅ 
    A × B → C → R ≅ 
    A → B → C → R

with explicit parens:

    ((A × B) × C) → R  ≅ 
    (A × B) → (C → R)  ≅ 
    A → (B → (C → R))

function taking a triple is converted into a
function that takes the 1. arg (and returns another 
function that takes the 2. arg (and returns another 
function that takes the 3. arg (and returns the result)))

Currying in general:

>function taking an N-tuple is converted into a
>>function that takes the 1st arg (and returns another 
>>>function that takes the 2nd arg (and returns another 
>>>>function that takes the ... arg (and returns another 
>>>>>function that takes the Nth arg (and returns the result))))

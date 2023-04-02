# Modeling data types in lambda calculus

## Vocab

Partially applied function (PAF)
: A partially applied function is an unsaturated FADT function

Function-as-data-type (FADT)
: The encoding of various data types and data structures using only functions. One aspect of this approach is to store data by partially applying a function, then to use a selector function to retrive it.

Selector
: A selector function is used to retrieve a value from a specific field.

Payload
: Payload denotes the values stored inside a data structure. In λ-calculus, it denotes one or more values that are stored in a function that encodes a particular data type.

Field
: A Haskell record is a product type, but each value is stored in a named field, which gets its name from the corresponding accessor function. However, these slots may remain unnamed, in which case we may refer to them by their position. The translates to the FADT where formal parameters play the role of the (anonymous) field.





We already know how to represent (encode) simpler data types using functions.

For instance, we can model the Booleans merely by declaring that a lambda term of a certain "shape" is to represent the value "true" henceforth. However, a great care must be invested so that each decision aligns well with the rest of our encodings in order to get a consistent system.

λ-calculus consists of lambda terms, further divided into variables, lambda abstraction (function definition) and lambda application.

It makes no sense for the root lambda term to be a variable.

A *variables* cannot stand alone at the top level - they originate inside a lambda abstraction, occurring as formal parameters as *binding occurrences*, as well as in the body of an abstraction as *applied occurrences*. Applied occurrences are divided into bound and free occurrences, which is very relativistic, scope-dependent division.

A lambda expression that may stand alone at the top level - the root lambda term - can only resonably be an abstraction.


The specification of an encoding scheme may start by declaring which lambda terms will represent the Booleans.


## Partially applied functions

λ-calculus consists of lambda terms, further divided into variables, lambda abstraction (function definition) and lambda application.


For example, the "standard" way of encoding the Boolean "true" is 



declaring some lambda term




like everything else, may be modelled using functions.


Fortunatelly, partial function application provides a straightforward way to model various data types using functions only.

A *partially applied function (PAF)* is a function that is applied to some, but not all, arguments. We also call such functions *unsaturated*. An unsaturated function eventually becomes saturated when the last argument is supplied, at which time it performs its computation and returns the output.

If we're only concerned in triggering a PAF to retrie the stored payload, then the last argument is not important at all


The last argument, besides its role of being a trigger, will also beused 


In order to model data types using functions, we'll (logically) designate the last argument as a "triger" argument - until the trigger is supplied, a function remains unsaturated.



A function partially applied 

The last argument of a polyadic (aritry >= 2) function keeps the data structure represented by that function "alive" and "loaded". Until it is supplied we have a value of some data type (an instance of a data structure) that we can manipulate like the analogue Haskell data type.

If needed, we can make copies of the data-structure-as-function







can take a number of arguments - they will correspond to fields of a Haskell record - and it will hold onto them as long as it stays unsaturated. This implies that (at least) the last argument is a special one - until it is provided, a PAF will serve as an analog of a record type.

In the simplest case, we want to store a single value - basically we want a function that is the analogue of the `Identity a` trivial data type. So we need a function that takes two arguments: its first argument is our payload value that we want stored, and the second argument may be anything at all. It is not important because it will be completely ignored - its only role is to saturate the PAF so we can retrieve the stored value. The identity (`λa.a`) lambda abstraction is a good, always-available (can be constructed on the spot), choice for a throw-away argument.

Actually, the "standard library" already has such a function: the combinator `K := λa.λb.a`. When supplied with a signle argument, it holds onto it. To get back the payload, we can call the PAF with anything.

All we have are lambda terms, but let's instead store an opaque symbol, `α`.

```hs
-- stdlib
I := λa.λa
K := λa.λb.a

-- store an opaque lambda term α in a PAF called Kα
Kα := K α = (λa.λb.a) α = λb.α
```

We get backa PAF, `λb.ϰ`

```
-- retrieve it
(Kα) I
= (λb.α) (λa.a)
= α
```



Naturally, the value to store is also a lambda term, and since the identity combo, `I = λa.a`, is always around, we can store it as a payload.

```hs
K I
= (λa.λb.a) I
= λb.I
= λb.(λa.a)
= λa.(λb.b)
= λa.λb.b
```



Partially applying the payload argument (naturally, also a lambda term), produces the analog of the `Identity` type. When we want to retrive the payload, we can call the PAF with any argument whatsoever - 


The lambda abstraction that matches

may thus be represented by a binary function - 


We usually designate the last argument 



Extending this approach further, to store two values we need a ternary function. The first two arguments will be the payload values `a` and `b` - as soon as we partially apply the payload by supplying both arguments, we have stored a pair of values in a function - i.e. we have a pair. However, unlike the `K` lambda


```lcalc hs
-- stdlib
I  := λa. a               -- identity
K  := λa b. a             -- const
B  := λf g x. f (g x)     -- compose
C  := λf a b. f b a       -- flip
V  := λa b s. s a b       -- Vireo (pairing)
KI := λa b. b             -- flip const
AP := λ f x. f x          -- apply


-- aliases
T = True = K
F = False = KI

Fst = K
Snd = KI

-- check
KI = K I
= (λab.a) I
= λb.I
= λa.I
= λa.(λb.b)
= λa.λb.b
= λa b. b

-- hold onto a single value
Store1 := λa s. a
Identity = Store1

-- hold onto a pair if values
Pair = V
```

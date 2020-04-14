# Motivation for inventing LC
*Computable functions* are a fundamental concept within CS and mathematics. The LC provides a simple semantics for computation, enabling properties of computation to be studied formally. LC incorporates two simplifications that make this semantics simple: functions are anonymous and unary.



## alpha-conversion

```
What does this mean and is it even legal:
(λx.(x.(λx.x)))

It should be a single function,
but applying an arg, say (λz.z), what happens to the
x in the binding site of the inner lambda function?!

(λx.(x.(λx.x))) (λz.z)
         ^ what about this x, substitution wise?

It should also be substituted for arg, right?
Does it becomes something weird like:
(λz.z).(λ(λz.z).(λz.z))

This cannot normally occur, it's the sign
of failing to perform alpha-conversion
```

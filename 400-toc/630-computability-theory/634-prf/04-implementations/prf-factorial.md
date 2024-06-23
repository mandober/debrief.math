# PRF :: Factorial

(The factorial function). The factorial `x!` for positive `x` is the product 

    1 · 2 · 3 · … · x

of all the nats up to and including `x`, and by convention `0! = 1`.

Thus we have

    0! = 1
    y! = y! · y′   (prime sign is succ function)

To show this function is recursive we would seem to need a version of the format for recursion with n = 0. Actually, however, we can simply define a two-argument function with a dummy argument, and then get rid of the dummy argument afterwards by composing with an identity function. For example, in the case of the factorial function we can define

    dummyfac(x, 0) = const₁(x)
    dummyfac(x, y) = dummyfac(x, y) · y

so that `dummyfac(x, y) = y!` regardless of the value of `x`, and then define `fac(y) = dummyfac(y, y)`. More formally,

    fac = Cn[Pr[const₁, Cn[prod, id₃³, Cn[s, id₂³]]], id, id]

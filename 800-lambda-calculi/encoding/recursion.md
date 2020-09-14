# Recursion

Y := λf.(λx.g(xx))(λx.g(xx))

Y h = h (Y h) = h (h (Y h)) = h (...h (Y h)...)

Y h =
h (Y h)
h (h (Y h))
h (h (h (Y h)))
h (h (h (h (Y h))))
h (... (h (Y h)...)

fac = Y h
    = h (Y h)
    = h fac

Y (λf. λn.
    if (ISZERO n) 
    then (1) 
    else (n * f (n−1))
)

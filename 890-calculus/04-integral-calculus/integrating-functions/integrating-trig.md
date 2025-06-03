# Integrating trig functions

https://en.wikipedia.org/wiki/List_of_integrals_of_trigonometric_functions

Integration of trig functions mostly relies on well-known formulas, trig identities and the reversal of trig derivatives. 

Knowing that the derivative of `sin(x)` is `cos(x)`, implies that the antiderivative of `cos(x)` is `sinx`.

Derivatives:
- sin′(x) =  cos(x)
- cos′(x) = -sin(x)
- iterated: sin(x) → cos(x) → -sin(x) → -cos(x) → --sin(x) → cos(x)

Antiderivatives:
- sin(x) → -cos(x)
- cos(x) →  sin(x)
- iterated: sin(x) → -cos(x) → -sin(x) → --cos(x) → sin(x) → -cos(x)

## Two shortcut formulas with trig and exp functions

```js
∫ eᵃˣ cos(bx) dx = 1/(a²+b²) eᵃˣ [a⋅cos(bx) + b⋅sin(bx)] + C

∫ eᵃˣ sin(bx) dx = 1/(a²+b²) eᵃˣ [a⋅sin(bx) - b⋅cos(bx)] + C
```

## Trig identities

```js
/* Pythagorean identities */
sin²x + cos²x = 1
⇒ cos²x = 1 - sin²x
⇒ sin²x = 1 - cos²x

/* Euler's identity */
eⁱˣ = cos(x) + 𝒾 sin(x)

/* Power reduction */
sin²(x) = (1 - cos(2x)) / 2
cos²(x) = (1 + sin(2x)) / 2

/* Sum identities */
sin(α+β) = sin(α)cos(β) + sin(β)cos(α)
cos(α+β) = cos(α)cos(β) - sin(α)sin(β)

/* Double angle identities */
sin(2x) = 2sin(x)cos(x)
cos(2x) = cos²(x) - sin²(x)
        =  1 - 2sin²(x) = -2sin²(x) + 1
        = -1 + 2cos²(x) =  2cos²(x) - 1
// Double angle identities are obtained from the sum identities when α=β
sin(x+x) = sin(2x) = sin(x)cos(x) + sin(x)cos(x) = 2sin(x)cos(x)
cos(x+x) = cos(2x) = cos(x)cos(x) - sin(x)sin(x) = cos²(x) - sin²(x)

/* wrt tangent */
tan(x) = sin(x) / cos(x)
⇒ cos(x) = sin(x) / tan(x)
⇒ sin(x) = tan(x) × cos(x)
```

## Rule of intergration of trig functions

```js
// sin with linear fn arg
∫ sin(x)    dx =       -cos(x)   + C
∫ sin(ax+b) dx = -1/a ⋅ cos(ax+b) + C

// cos with linear fn arg
∫ cos(x)    dx =      sin(x)    + C
∫ cos(ax+b) dx = 1/a ⋅ sin(ax+b) + C

// the same goes for other trig fns…
∫ trig(ax+b) dx = -1/a ⋅ TRIG(ax+b) + C


// Additional formulas:

// tan
∫ tan(x) dx =  ln|sec(x)| + C
            = -ln|cos(x)| + C

// cot
∫ cot(x) dx =  ln|sin(x)| + C
            = -ln|csc(x)| + C

// sec
∫ sec(x) dx = ln|sec(x) + tan(x)| + C

// csc
∫ csc(x) dx = ln|csc(x) - cot(x)| + C
```

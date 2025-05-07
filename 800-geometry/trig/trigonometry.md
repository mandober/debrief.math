# Trigonometry

https://en.wikipedia.org/wiki/Trigonometry

Trigonometry (from Ancient Greek `τρίγωνον` (trígōnon) 'triangle', and `μέτρον` (métron) 'measure') is a branch of mathematics concerned with *relationships between angles* and *ratios of its sides (lengths)*.

The field emerged in the Hellenistic world during the 3rd century BC from applications of geometry to astronomical studies. The Greeks focused on the *calculation of chords*, while Indian mathematicians created the earliest-known tables of values for *trigonometric ratios* (aka *trigonometric functions*) such as sine. Throughout history, trigonometry has been applied in areas such as geodesy, surveying, celestial mechanics, and navigation.

Trigonometry is known for its many identities. These *trigonometric identities* are commonly used for rewriting trigonometrical expressions with the aim to simplify an expression, to find a more useful form of an expression, or to solve an equation.

## Contents

- 1 History
- 2 Trigonometric ratios
  - 2.1 Mnemonics
  - 2.2 The unit circle and common trigonometric values
- 3 Trigonometric functions of real or complex variables
  - 3.1 Graphs of trigonometric functions
  - 3.2 Inverse trigonometric functions
  - 3.3 Power series representations
  - 3.4 Calculating trigonometric functions
  - 3.5 Other trigonometric functions
- 4 Trigonometric applications
  - 4.1 Astronomy
  - 4.2 Navigation
  - 4.3 Surveying
  - 4.4 Periodic functions
  - 4.5 Optics and acoustics
  - 4.6 Other applications
- 5 Trigonometric identities
  - 5.1 Triangle identities
    - 5.1.1 Law of sines
    - 5.1.2 Law of cosines
    - 5.1.3 Law of tangents
    - 5.1.4 Area
  - 5.2 Trigonometric identities
    - 5.2.1 Pythagorean identities
    - 5.2.2 Euler's formula
    - 5.2.3 Other trigonometric identities



## History

…

## Trigonometric ratios

* Trigonometric functions

https://en.wikipedia.org/wiki/Trigonometric_function

Trigonometric ratios are the *ratios between edges of a right triangle*.

These ratios depend only on one acute angle of the right triangle, since any two right triangles with the same acute angle are similar.

These ratios define functions, of this angle, called *trigonometric functions*.

Explicitly, they are defined below as functions of the known angle A, where a, b and h refer to the lengths of the sides in the accompanying figure.

```
                       . C
                    .  :
             h  .    γ :
             .         :
         .             : y
     .    θ          α :
A ......................
            x            B
```

- `ABC` right triangle
- `α = 90°`, angle at B is the right angle
- in a right triangle, the other two angles must be acute
- the sum of all 3 angles is a straing angle,   `α + γ + θ = 180°`
- the other two angles sum up to a right angle, `α + γ = 90°`
- `θ` is angle at A
- `γ` is angle at C 
- `x` is AB side (the longer side)
- `y` is BC side (the shorter side)
- `h` is AC side is hypotenuse, `h² = x² + y²`

In terms of the angle `θ`:
- opposite side is `y`
- adjacent side is `x`
- hypotenuse is `h`

## SOH-CAH-TOA

*Sine function*, `sin`, is defined as the ratio of the side opposite the angle `θ` to the hypotenuse.

*Cosine function*, `cos`, is defined as the ratio of the side adjacent the angle `θ` to the hypotenuse.

*Tangent function*, `tan`, is defined as the ratio of the side opposite the angle `θ` to side adjacent to the angle `θ`.


```hs
         opposite      y
sin θ = ----------- = ---         -- SOH
        hypotenuse     h


         adjacent      x
cos θ = ----------- = ---         -- CAH
        hypotenuse     h


         opposite      y
tan θ = ----------- = ---         -- TOA
         adjacent      x
```

## Inverses of trigonometric functions

**Inverses** of these trig functions
- Inverse of sin: `arcsin`
- Inverse of cos: `arccos`
- Inverse of tan: `arctan`

```hs
                  ⎛  opposite  ⎞          ⎛ y ⎞
arcsin θ = arcsin ⎢------------⎢ = arcsin ⎢---⎢       θ = arcsin (sin θ)
                  ⎝ hypotenuse ⎠          ⎝ h ⎠


                  ⎛  adjacent  ⎞          ⎛ x ⎞
arccos θ = arcsin ⎢------------⎢ = arccos ⎢---⎢       θ = arccos (cos θ)
                  ⎝ hypotenuse ⎠          ⎝ h ⎠


                  ⎛  opposite  ⎞          ⎛ y ⎞
arctan θ = arcsin ⎢------------⎢ = arctan ⎢---⎢       θ = arctan (tan θ)
                  ⎝  adjacent  ⎠          ⎝ x ⎠
```


## Reciprocals of trigonometric functions


The **reciprocals** of these ratios are
- reciprocals of sin:  *cosecant*, `csc`
- reciprocals of cos:    *secant*, `sec`
- reciprocals of tan: *cotangent*, `cot`

```hs
           1       hypotenuse     h
csc θ = ------- = ------------ = ---
         sin θ      opposite      y


           1       hypotenuse     h
sec θ = ------- = ------------ = ---
         cos θ      adjacent      x


           1        adjacent      x
cot θ = ------- = ------------ = ---
         tan θ      opposite      y
```

## Inveses of reciprocals of trigonometric functions

- `arccsc`, *arccosecant*:  θ = arccsc (h/y), `θ = arccsc (csc θ)`
- `arcsec`, *arcsecant*:    θ = arcsec (h/x), `θ = arcsec (sec θ)`
- `arccot`, *arccotangent*: θ = arccot (x/y), `θ = arccot (cot θ)`



With these functions, one can answer virtually all questions about arbitrary triangles by using the law of sines and the law of cosines.

These laws can be used to compute the remaining angles and sides of any triangle as soon as two sides and their included angle or two angles and a side or three sides are known.

https://en.wikipedia.org/wiki/Law_of_sines
https://en.wikipedia.org/wiki/Law_of_cosines
https://en.wikipedia.org/wiki/Mnemonics_in_trigonometry


The cosine, cotangent, and cosecant are so named because they are respectively the sine, tangent, and secant of the complementary angle abbreviated to "co-".

Mnemonics:
- SOH-TAH-TOA
- Some Old Hippie Caught Another Hippie Trippin' On Acid


## Trigonometric functions of real or complex variables

## Trigonometric applications


## Trigonometric identities

Trigonometry has been noted for its many identities, that is, equations that are true for all possible inputs.

Identities involving only angles are known as *trigonometric identities*.

see [Trigonometric identities](./trigonometric-identities.md)

Other equations, known as *triangle identities*, relate both the sides and angles of a given triangle.

see [Triangle identities](./triangle-identities.md)

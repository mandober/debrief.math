# Mnemonics in trigonometry

https://en.wikipedia.org/wiki/Mnemonics_in_trigonometry

In trigonometry, it is common to use mnemonics to help remember trigonometric identities and the relationships between the various trigonometric functions.

## SOH-CAH-TOA

The sin, cos, tan ratios in a right triangle can be remembered by representing them as SOH-CAH-TOA in English:
- sin = Opposite ÷ Hypotenuse
- cos = Adjacent ÷ Hypotenuse
- tan = Opposite ÷ Adjacent

Another method is to expand the letters into a sentence like "Some Old Hippy Caught Another Hippy Tripping On Acid".

## All Students Take Calculus

"All Students Take Calculus" is a mnemonic for the sign of each trig fn in each quadrant of the plane. The letters *ASTC* signify which of the trigonometric functions are positive, moving ccw through quadrants (as usual):
- Q1 (0ᵒ-90ᵒ, 0 - π/2 rad): all trig fns are positive
- Q2 (90ᵒ-180ᵒ, π/2 - π rad): `sin` and `csc` are positive
- Q3 (180ᵒ-270ᵒ, π - 3π/2 rad): `tan` and `cot` are positive
- Q4 (270ᵒ-360ᵒ, 3π/2 - 2π rad): `cos` and `sec` are positive

Other easy-to-remember mnemonics are the *ACTS* and *CAST* mnemonics. These have the disadvantages of not going sequentially from quadrants 1 to 4 and not reinforcing the numbering convention of the quadrants.
- *CAST* still ccw starting in quadrant IV going through IV, I, II, then III
- *ACTS* still starts in quadrant 1 but goes cw through I, IV, III, then II

## Sines and cosines of special angles

sin and cos of common angles (0°, 30°, 45°, 60°, 90°) follow the pattern 
`√n/2`, with `n=0..4` for `sin`, and `n=4..0` for `cos`

θ   | 0°       | 30°        | 45°         | 60°        | 90°
----|----------|------------|-------------|------------|----------
sin | √0/2 = 0 | √1/2 = 1/2 | √2/2 = 1/√2 | √3/2       | √4/2 = 1
cos | √4/2 = 1 | √3/2       | √2/2 = 1/√2 | √1/2 = 1/2 | √0/2 = 0

>`{0, 1/2, √3/2, √2/2, 1/√2, 1, -1/√2, -√2/2, -√3/2, -1/2, -1}`


## Hexagon chart

https://www.mathsisfun.com/algebra/trig-magic-hexagon.html

Another mnemonic permits all of the basic identities to be read off quickly by constructing a hexagonal chart:
- draw 3 triangles pointing down, touching at a single point
- write 1 in the middle where the 3 triangles touch
- sin, tan, sec on the 3 left outer vertices
- cos, cot, cos on the 3 right outer vertices

```c
    sin ---- cos
  /     \  /     \
tan ----  1 ---- cot
  \     /  \     /
    sec ---- csc

sin   = cos ÷ cot   = tan ÷ sec   = cos × tan   = 1 ÷ csc
cos   = cot ÷ csc   = sin ÷ tan   = sin × cot   = 1 ÷ sec
tan   = sin ÷ cos   = sec ÷ csc   = sec × sin   = 1 ÷ cot

csc   = sec ÷ tan   = cot ÷ cos   = cot × sec   = 1 ÷ sin
sec   = tan ÷ sin   = csc ÷ cot   = csc × tan   = 1 ÷ cos
cot   = csc ÷ sec   = cos ÷ sin   = cos × csc   = 1 ÷ tan
```


Vertex equals 1 over the opposite vertex:
  * sin = 1 ÷ csc        * csc = 1 ÷ sin
  * tan = 1 ÷ cot        * cot = 1 ÷ tan
  * cos = 1 ÷ sec        * sec = 1 ÷ cos


Going ccw or cw: vertex = next vertex ÷ vertex after that one

```
cos          tan           cot          sin           sin          sec 
---- = sin = ----          ---- = cos = ----          ---- = tan = ----
cot          sec           csc          tan           cos          csc 


sec          cot           tan          csc           csc          cos 
---- = csc = ----          ---- = sec = ----          ---- = cot = ----
tan          cos           sin          cot           sec          sin 
```

```
sin = cos ÷ cot
      cos = cot ÷ csc
            cot = csc ÷ sec
                  csc = sec ÷ tan
                        sec = tan ÷ sin
                              tan = sin ÷ cos

                              cos = sin ÷ tan
                        cot = cos ÷ sin
                  csc = cot ÷ cos
            sec = csc ÷ cot
      tan = sec ÷ csc
sin = tan ÷ sec
```


The corner equals the product of its two nearest neighbors:
- cot = cos × csc
- cos = sin × cot
- csc = cot × sec
- sin = cos × tan
- sec = csc × tan
- tan = sec × sin


The sum of the squares of the two items at the top of a triangle equals the square of the item at the bottom (trigonometric Pythagorean identities):
- csc² = cot² + 1,     cot² = csc² - 1
- sec² = tan² + 1,     tan² = sec² - 1
- sin² + cos² = 1,     cos² = 1 - sin²,     sin² = 1 - cos²

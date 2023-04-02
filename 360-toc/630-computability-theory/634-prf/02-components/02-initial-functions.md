# Initial functions

## Contents

- 2.2 Initial functions
  - 2.1.1 Successor
  - 2.1.2 Constant
    - 2.1.2.1 Zero
  - 2.1.3 Projection
    - 2.1.3.1 Identity
    - 2.1.3.2 First projection, fst
    - 2.1.3.3 Second projection, snd

## Initial functions

Canonically, there are 3 initial, primitive recursive functions:
- Successor
- Constant
- Projection

None of them is actually recursive - it just means they are evidently simple enough to be members of the primitive recursive functions, i.e. of the `PR` set.

>The 3 initial functions are infallible - they are defined to be theoretically infallible and always well-behaved.

This is despite the fact that proj and const may practically fail; e.g. if there is a mismatch between the number of expected and supplied args. The proj function also has to deal with out-of-bounds indexing. The succ is the only function that actually cannot fail.

The succ is a single function, unlike proj and const that actually define a *family of functions*. The const and proj are parameterized by the number of args.

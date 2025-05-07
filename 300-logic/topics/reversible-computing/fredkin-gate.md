# Fredkin Gate

The Fredkin Gate, like the Toffoli gate, is invertible and it is *functionally complete* as it can express any other logic function. It also has 3 inputs and 3 outputs. Its truth table is the following:

```
C I₁I₂ C O₁O₂
0 0 0  0 0 0
0 0 1  0 0 1
0 1 0  0 1 0
0 1 1  0 1 1
1 0 0  1 0 0
1 0 1  1 1 0 ←
1 1 0  1 0 1 ←
1 1 1  1 1 1
```

The Fredkin Gate exchanges inputs I₁ and I₂ iff input C=1.

The Fredkin gate is also known as *CSWAP (the Controlled-SWAP)*. It exchanges the values of the inputs I₁ and I₂ only if the value of the controlling C bit is equal to 1.

With the help of the Fredkin gate gate, we can encode Boolean operations like NOT and AND. Therefore, it is functionally complete.

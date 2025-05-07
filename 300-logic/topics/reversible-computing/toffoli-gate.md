# Toffoli gate

https://en.wikipedia.org/wiki/Toffoli_gate

`{a, b, c}` → `{a, b, c ⊕ (a ∧ b)}`

**Toffoli gate**, aka the *CCNOT gate* ("controlled-controlled-not"), invented by Tommaso Toffoli, is a *CNOT gate* with *two control qubits* and *one target qubit*.

>toffoli : {a, b, c} → {a, b, (a ∧ b) ⊕ c}
( 0, 0 ,0) → (0, 0, 0 ) | ( 1, 0 ,0) → (1, 0, 0 )
(`0, 0`,1) → (0, 0,`1`) | (`1, 0`,1) → (1, 0,`1`)
( 0, 1 ,0) → (0, 1, 0 ) | ( 1, 1 ,0) → (1, 1, 1 )
(`0, 1`,1) → (0, 1,`1`) | (`1, 1`,1) → (1, 1,`0`)

>toffoli : {c, a, b} → {(a ∧ b) ⊕ c, a, b}
(0, 0, 0 ) → (0, 0, 0) | (1,`0, 0`) → (`1`, 0, 0)
(0, 0, 1 ) → (0, 0, 1) | (1,`0, 1`) → (`1`, 0, 1)
(0, 1, 0 ) → (0, 1, 0) | (1,`1, 0`) → (`1`, 1, 0)
(0, 1, 1 ) → (1, 1, 1) | (1,`1, 1`) → (`0`, 1, 1)

The embedded original function (NAND) is highlighted.

A B | NAND
----|-----
0 0 | 1
0 1 | 1
1 0 | 1
1 1 | 0


That is, the target qubit (3rd qubit) will be inverted if the first and second qubits are both 1, `(p ∧ q) ⊕ c`, where `p` and `q` are input quibits and `c` is the 3rd input (target) qubit.

Toffoli gate is a *universal reversible logic gate*, which means that any classical reversible circuit can be constructed from Toffoli gates.

The truth table of the Toffoli gate:

`{a, b, c}` → `{a, b, (a ∧ b) ⊕ c }`

n | p q c | a b q | m
--|-------|-------|---
0 | 0 0 0 | 0 0 0 | 0
1 | 0 0 1 | 0 0 1 | 1
2 | 0 1 0 | 0 1 0 | 2
3 | 0 1 1 | 0 1 1 | 3
4 | 1 0 0 | 1 0 0 | 4
5 | 1 0 1 | 1 0 1 | 5    ← 0-5 are id
6 | 1 1 0 | 1 1 1 | 7    ← 6 swapped with 7
7 | 1 1 1 | 1 1 0 | 6    ← 7 swapped with 6
nr| input | output

AND gate (for comparison) is not invertible since it maps 3 input states to 1 output state, having only one invertable state mapping (i.e. when the output is 1, both inputs must be 1).

p q | ∧ ↑ ∨ ↓ ⊕
----|-----------
0 0 | 0 1 0 1 0
0 1 | 0 1 1 0 1
1 0 | 0 1 1 0 1
1 1 | 1 0 1 0 0

## Contents

- 1. Background
- 2. Hardware description
- 3. Universality and Toffoli gate
- 4. Related logic gates
- 5. Relation to quantum computing

## Background

An input-consuming logic gate `L` is reversible if it meets the following conditions:
1. `L(x) = y` is a gate where for any output `y`, there is a unique input `x`
2. `L` is reversible if `∃ L'(y) = x` which maps `y` to `x`, for all `y`

An example of a reversible logic gate is a NOT.

Reversible gates have been studied since the 1960s. The original motivation was that reversible gates dissipate less heat (or, in principle, no heat). More recent motivation comes from quantum computing. In quantum mechanics the quantum state can evolve in two ways: by *Schrödinger's equation* (unitary transformations), or by their *collapse*. Logic operations for quantum computers, of which the Toffoli gate is an example, are *unitary transformations* and therefore evolve reversibly.

## Hardware description

The classical Toffoli gate is implemented in a hardware description language such as Verilog:

```v
module toffoli_gate (
 input u1, input u2, input in,
 output v1, output v2, output out);
always @(*) begin
    v1 = u1;
    v2 = u2;
    out = in ^ (u1 && u2);
end
endmodule
```

## Universality and Toffoli gate

Any reversible gate that consumes its inputs and allows all input computations must have no more input bits than output bits, by the *pigeonhole principle*.

For 1 input bit, there are 2 possible reversible gates: NOT and ID. For 2 input bits, the only non-trivial gate is the *controlled NOT gate (CNOT)*, which XORs the first bit to the second bit and leaves the first bit unchanged.

CNOT:

```
(p, q) → (p, p⊕q)
(0, 0) → (0, 0)
(0, 1) → (0, 1)
(1, 0) → (1, 1)
(1, 1) → (1, 0)
```

CNOT in Haskell:

```hs
cnot :: (Bool, Bool) → (Bool, Bool)
-- cnot :: (p, q) → (p, p ⊕ q)
cnot :: (Bool, Bool) -> (Bool, Bool)
cnot (False, False) = (False, False)
cnot (False, True)  = (False, True)
cnot (True,  False) = (True,  True)
cnot (True,  True)  = (True,  False)
```

Toffoli gate

```
toffoli : (Bool, Bool, Bool) → (Bool, Bool, Bool)
toffoli :: (p, q, c) → (p, q, p∧q ⊕ c)
(p, q, c) → (p, q, k)
(0, 0, 0) → (0, 0, 0)
(0, 0, 1) → (0, 0, 1)
(0, 1, 0) → (0, 1, 0)
(0, 1, 1) → (0, 1, 1)
(1, 0, 0) → (1, 0, 0)
(1, 0, 1) → (1, 0, 1)
(1, 1, 0) → (1, 1, 1)  …here (1 ∧ 1) ⊕ 0 = 1 ⊕ 0 = 1
(1, 1, 1) → (1, 1, 0)  …here (1 ∧ 1) ⊕ 1 = 1 ⊕ 1 = 0
```

Toffoli gate in Haskell

```hs
toffoli :: (Bool, Bool, Bool) -> (Bool, Bool, Bool)
toffoli (True, True, False) = (True, True, True)
toffoli (True, True, True)  = (True, True, False)
toffoli (x, y, z) = (x, y, z)
```

Unfortunately, there are reversible functions that cannot be computed using just those gates. For example, AND cannot be achieved by those gates. In other words, the set consisting of NOT and XOR gates is not universal. To compute an arbitrary function using reversible gates, the Toffoli gate, proposed in 1980 by Toffoli, can indeed achieve the goal.

**The Toffoli gate** can be described as mapping bits 
`{a, b, c} → {a, b, c ⊕ (a ∧ b)}`. 

This can also be understood as a modulo operation on bit `c`: 
`{a, b, c} → {a, b, (c + ab) mod 2}`, often written as 
`{a, b, c} → {a, b, c ⨁ ab}`.

The Toffoli gate is universal; 
this means that for any Boolean function 
`f(x₁, x₂, …, xₘ)`, 
there is a circuit consisting of Toffoli gates 
that takes `x₁, x₂, …, xₘ`, 
and some extra bits (which are set to 0 or 1), 
to outputs `x₁, x₂, …, xₘ, f(x₁, x₂, …, xₘ)`, 
and some extra bits (called garbage).

A NOT gate, for example, can be constructed from a Toffoli gate 
by setting the 3 input bits to `{a, 1, 1}`, 
making the 3rd output bit `(1 ⊕ (a ∧ 1)) = NOT a`; 
`(a ∧ b)` is the third output bit from `{a, b, 0}`. 

Essentially, this means that one can use Toffoli gates to build systems that will perform any desired Boolean function computation in a reversible manner.

## Related logic gates

* The *Fredkin gate* is a universal reversible 3-bit gate that swaps the last two bits if the first bit is 1; a *controlled-swap operation*.
* The *n-bit Toffoli gate* is a generalization of the Toffoli gate. It takes `n` bits `x₁, x₂, …, xₙ` as inputs and outputs `n` bits. The first `n − 1` output bits are just `x₁, …, xₙ˗₁`. The last output bit is `(x₁∧…∧xₙ˗₁) ⊕ xₙ`.
* The Toffoli gate can be realized by 5 2-qubit quantum gates, but it can be shown that it is not possible using fewer than 5.
* Another universal gate, the *Deutsch gate*, can be realized by 5 optical pulses with neutral atoms. The Deutsch gate is a universal gate for quantum computing.
* The *Margolus gate* (named after Norman Margolus), also called simplified Toffoli, is very similar to a Toffoli gate but with a −1 in the diagonal: 
`RCCX = diag(1, 1, 1, 1, 1, −1, X)`. The Margolus gate is also universal for reversible circuits and acts very similar to a Toffoli gate, with the advantage that it can be constructed with about half of the CNOTs compared to the Toffoli gate.
* The iToffoli gate was implemented in superconducting qubits with pair-wise coupling by simultaneously applying noncommuting operations.

## Relation to quantum computing

Any reversible gate can be implemented on a quantum computer, and hence the Toffoli gate is also a quantum operator. However, the Toffoli gate cannot be used for universal quantum computation, though it does mean that a quantum computer can implement all possible classical computations.

The Toffoli gate has to be implemented along with some inherently quantum gates in order to be universal for quantum computation. In fact, any single-qubit gate with real coefficients that can create a nontrivial quantum state suffices.

A Toffoli gate based on quantum mechanics was successfully realized in January 2009 at the University of Innsbruck, Austria. While the implementation of an n-qubit Toffoli with circuit model requires `2n` CNOT gates, the best known upper bound stands at `6n − 12` CNOT gates.

It has been suggested that *trapped Ion Quantum computers* may be able to implement an n-qubit Toffoli gate directly. The application of many-body interaction could be used for direct operation of the gate in trapped ions, Rydberg atoms and superconducting circuit implementations.

Following the dark-state manifold, Khazali-Mølmer *Cn-NOT gate* operates with only 3 pulses, departing from the circuit model paradigm. The iToffoli gate was implemented in a single step using 3 superconducting qubits with pair-wise coupling.

## Functional completeness

The logic Toffoli gate is a Boolean function which has 3-bit inputs and outputs, i.e. `f: {0, 1}³ → {0, 1}³`.

```
C₁C₂I  C₁C₂O
0 0 0  0 0 0
0 0 1  0 0 1
0 1 0  0 1 0
0 1 1  0 1 1
1 0 0  1 0 0
1 0 1  1 0 1
1 1 0  1 1 1  ←
1 1 1  1 1 0  ←
```

The Toffoli gate is also known as *CCNOT (Controlled-Controlled-NOT)*. This name accounts for the fact that the logic function `NOT` is applied to the input `I` iff the first two inputs are 1.

That is, the output bit `O` will be inverted if the inputs `C₁` and `C₂` are both 1.

The output bit `O = (C₁ ∧ C₂) ⊕ I`, where `C₁` and `C₂` are input qubits and `I` is the 3rd input (target) qubit.

The Toffoli gate is not only invertible (it is a bijection), but it alone can be used to express any other Boolean function.

If we fix the value of the input `I` bit to 1, the function will represent the `NAND` gate (which is functionaly complete for Boolean logic).


```hs
toffoli :: Int -> Int -> Int -> (Int, Int, Int)
toffoli 1 1 0 = (1, 1, 1)
toffoli 1 1 1 = (1, 1, 0)
toffoli x y z = (x, y, z)

-- helpers
getX :: (Int, Int, Int) -> Int
getX (x, _, _) = x

getY :: (Int, Int, Int) -> Int
getY (_, y, _) = y

getZ :: (Int, Int, Int) -> Int
getZ (_, _, z) = z


fanout :: Int -> (Int, Int)
fanout a = (getY t, getZ t)
  where t = toffoli 1 a 0


-- connectives in terms of toffoli gate
not :: Int -> Int
not = getZ . toffoli 1 1

and :: Int -> Int -> Int
and a b = getZ $ toffoli a b 0

nand :: Int -> Int -> Int
nand a b = getZ $ toffoli a b 1

xor :: Int -> Int -> Int
xor a b = getZ $ toffoli 1 a b


-- these connectives are dependent on the previous connectives
or :: Int -> Int -> Int
or a b = not $ and (not a) (not b)

nor :: Int -> Int -> Int
nor a b = not $ or a b
```

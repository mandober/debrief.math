# Lambda cube

## Names

- λ-cube² = { λ͢   λ͢²  λ͢ω̱  λ͢Π   λ͢²ω  λ͢²Π  λ͢Πω  λ͢²Πω }
- λ-cube¹ = { λ͢   λ²  λω  λΠ  λ²ω  λ²Π  λΠω  λ²Πω }
- λ-cube⁰ = { λ→  λ2  λω̱  λP  λω  λP2  λPω̱   λPω }


## Diagram from Wikipedia

![Lambda cube](https://upload.wikimedia.org/wikipedia/commons/1/19/Lambda_cube.png)


## Overview of calculi

1. STLC,      λ͢     λ→    λ⃗   λ⃕
2. System Fω̱  λω    λω̱   λ͢ω̱          +t    +tyctors
3. System F   λ²    λ2    λ͢²         +p              +poly
4. Lambda Π   λ͢Π    λΠ    λP         +d                     +dep
5. System     λ͢²ω   λ²ω   λω         +tp   +tyctors  +poly
6. System     λ͢²Π   λ²Π   λP2        +pd             +poly  +dep
7. System     λ͢Πω   λΠω   λPω̱        +td   +tyctors         +dep
8. CoC,       λ͢²Πω  λ²Πω  λPω        +tpd  +tyctors  +poly  +dep


## Graphviz diagram

```dot
digraph poset {
  node [shape="plaintext"];
  CoC  [label="λ²Πω"];
  SCD  [label="λΠω"];
  SPD  [label="λ²Π"];
  SPC  [label="λ²ω"];
  D    [label="λΠ"];
  W    [label="λω"];
  P    [label="λ²"];
  T    [label="λ→"];
  T -> P -> SPC -> CoC;
  T -> W -> SCD -> CoC;
  T -> D -> SPD -> CoC;
  P   -> SPD;
  W   -> SPC;
  D   -> SCD;
}
```


## Lambda cube axes

- x-axis: dependent types , Π, x → τ, λΠ, λΠ2, λΠω, λC
- y-axis: polymorphism    , 2, τ → x, λ2, λ2Π, λ2ω, λC
- z-axis: type ctors      , ω, τ → τ, λω, λω2, λωΠ, λC



## Calculi

### 1. Simply-Typed Lambda Calculus
- 1. Simply-Typed Lambda Calculus
- name in lambda cube on Wikipedia: __λ→__
- First-order Propositional Calculus
- +type system
- terms may depend on terms (always)
- [vv] `val → val`
- *values may depend on values*
- STLC
- λ͢
- λ→
- λ-st

### 2. System Fω̱
- 2. System Fω̱
- name in lambda cube on Wikipedia: __λω̱__
- Higher-order lambda calculus
+ type ctors
- [tt] `type ⟶ type`
- *types may depend on types*
- {terms,types} may depend on {terms,types}
- terms may depend on terms
+ terms may depend on terms
+ types may depend on types
- λω
- λω̱
- Fω̱

### 3. System F
- 3. System F
- name in lambda cube on Wikipedia: __λ2__
- Second-order Propositional Calculus
- Second-order Lambda Calculus
- Polymorphic Lambda Calculus
- +polymorphism, +polymorphic type system
- [tv] `type ⟶ val`
- *values may depend on types*
- terms may depend on terms (vv)
- terms may depend on types
- <terms may depend on {terms,types}>
- λ²
- λ2
- λ-2

### 4. Lambda Pi
- 4. Lambda Pi
- name in lambda cube on Wikipedia: __λP__
- First-order Predicate Logic
- Lambda Pi, Lambda Π
- λΠ , λP
- **dependent types**
  - [vt] `val ⟶ type`
  - *types may depend on values*
- <terms,types may depend on terms>
- terms may depend on terms
- types may depend on terms

### 5. Lambda ω
- 5. λ²ω
- Higher Order Propositional Calculus
- name in lambda cube on Wikipedia: __λω__
- terms may depend on terms
- terms may depend on types
- types may depend on types
- {terms,types} may depend on {terms,types}
- λ²ω , λ2ω

### 6. Lambda P2
- 6. λ²Π
- Second-order Predicate Calculus
- name in lambda cube on Wikipedia: __λP2__
- {terms,types} may depend on {terms,types}
- λ²Π
- System U (?)

### 7. Lambda Pω̱
- 7. λΠω
- Weak Higher Order Predicate Calculus
- name in lambda cube on Wikipedia: __λPω̱__
- λΠω | λΠω̱ | λPω̱ | λΠω | λΠϖ | λΠω
- {terms,types} may depend on {terms,types}

### 8. Calculus of Constructions
- 8. Calculus of Constructions
- Calculus of Constructions, CoC
- name in lambda cube on Wikipedia: __λC__ and __λPω__
- [vv] [tt] [tv] 
- *{values,types} may depend on {values,types}*
- λC | λ²Πω
- +type system
- +polymorphic types
- +type constructors (type functions)
- +dependent types (blurred line between terms and types)
- {terms,types} may depend on {terms,types}
- [vv] terms may depend on terms
- [tv] terms may depend on types
- [vt] types may depend on terms
- [tt] types may depend on types

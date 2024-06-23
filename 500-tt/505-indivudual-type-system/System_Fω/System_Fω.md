# System Fω

- System Fω
- higher-order polymorphic lambda calculus
- polymorphism (2) + type operators (ω)


While `System F` corresponds to the first axis of Barendregt's lambda cube, `System Fω` or the higher-order polymorphic lambda calculus combines the first axis (polymorphism) with the second axis (type operators); it is a different, more complex system.

System Fω can be defined inductively on a family of systems, where induction is based on the kinds permitted in each system:

𝐹
𝑛
Fn
 permits kinds:
⋆⋆
 (the kind of types) and
𝐽
⇒
𝐾
J⇒K
 where 
𝐽
∈
𝐹
𝑛
−
1
J∈Fn−1
 and 
𝐾
∈
𝐹
𝑛
K∈Fn
 (the kind of functions from types to types, where the argument type is of a lower order)
In the limit, we can define system 
𝐹
𝜔Fω
 to be

𝐹
𝜔
=
⋃
1
≤
𝑖
𝐹
𝑖
Fω=⋃1≤iFi
That is, Fω is the system which allows functions from types to types where the argument (and result) may be of any order.

Note that although Fω places no restrictions on the order of the arguments in these mappings, it does restrict the universe of the arguments for these mappings: they must be types rather than values. System Fω does not permit mappings from values to types (dependent types), though it does permit mappings from values to values (
𝜆λ
 abstraction), mappings from types to values (
ΛΛ
 abstraction), and mappings from types to types (
𝜆λ
 abstraction at the level of types).

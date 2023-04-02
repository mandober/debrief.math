# Dependent type

A **parameterized type** is a family of types *indexed by another type*. 
A parameterized type is a type that depends on another type.

A **dependent type** is a family of types *indexed by terms of another type*. 
A dependent type is a type that depends on elements of another type.

A dependent type: `x : A ⊢ B(x)`.

A *dependent pair* may have the type of the second component depend on the value of the first component.

A *dependent function* may have the type of the output depend on the value (not just the type) of its argument.

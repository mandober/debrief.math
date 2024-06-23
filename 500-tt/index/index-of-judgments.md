# Type theory :: Index :: Judgements

There are 4 fundamental judgements
- A : Type
- t : A
- T ≡ R
- t ≡ u : T


Most type theories have these judgements:
- `Γ` is a well-defined context,      `Γ ctx`
- `T` is a well-defined type,         `Γ |- T type`
- `t` is a term of type `T`,          `Γ |- t : T`
- type `T` is equal to type `R`,      `Γ |- T ≡ R`
- terms `t` and `u` of `T` are equal, `Γ |- t ≡ u : T`

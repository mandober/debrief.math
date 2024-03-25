

A binary relation on a set A is
- reflexive              : `∀x. x ∈ X -> ⟨x,x⟩ ∈ R`
- irreflexive            : `∀x. x ∈ X -> ⟨x,x⟩ ∉ R`
- quasi-reflexive        : `∀xy ∈ X. ⟨x,y⟩ ∈ R -> ⦗ ⟨x,x⟩ ∈ R ∧ ⟨y,y⟩ ∈ R ⦘`
- left quasi-reflexivity : `∀ xy ∈ X. ⟨x,y⟩ ∈ R -> ⟨x,x⟩ ∈ R`
- right quasi-reflexivity: `∀ xy ∈ X. ⟨x,y⟩ ∈ R -> ⟨y,y⟩ ∈ R`
- coreflexive            : `∀ xy ∈ X. ⟨x,y⟩ ∈ R -> x  =  y`

A binary relation on a set A is
- reflexive              : ∀x ∈ A(x~x) aka ¬∃x ∈ A(x≁x)
- non-reflexive          : ∃x ∈ A(x≁x) aka ¬∀x ∈ A(x~x)
- irreflexive            : ∀x ∈ A(x≁x) aka ¬∃x ∈ A(x~x)
- non-irreflexive        : ∃x ∈ A(x~x) aka ¬∀x ∈ A(x≁x)


- coreflexive            : ∀ xy ∈ X. x~y ⇒ x=y

- left quasi-reflexivity : `∀ xy ∈ X. ⟨x,y⟩ ∈ R -> ⟨x,x⟩ ∈ R`
- right quasi-reflexivity: `∀ xy ∈ X. ⟨x,y⟩ ∈ R -> ⟨y,y⟩ ∈ R`
- quasi-reflexive        : `∀xy ∈ X. ⟨x,y⟩ ∈ R -> ⦗ ⟨x,x⟩ ∈ R ∧ ⟨y,y⟩ ∈ R ⦘`

∀x ∈ A(x ~ x) refl
∀x ∈ A(x ≁ x) irrefl
∀x∀xʹ ∈ A(x ~ xʹ ⇒ x = xʹ) corefl

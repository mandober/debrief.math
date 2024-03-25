# Relation theory :: Definitions :: Relations

- product:  A⨯B = { (a,b) | ∀a ∈ A, ∀b ∈ B }
- powerset: 𝒫(A) = { ∀S | S ⊆ A }

A relation `R ⊆ A⨯B` or `R ∈ 𝒫(A⨯B)`.

-        empty:  ¬∃a  ∈ A. ¬∃b ∈ B.  aRb                  (R ≡ ∅)
-        total:   ∀a  ∈ A.  ∀b ∈ B.  aRb                  (R ≡ A⨯B)
+   left-total:   ∀a  ∈ A.  ∃b ∈ B.  aRb
-  right-total:   ∀b  ∈ B.  ∃a ∈ A.  aRb
+ right-unique: ∀a,a′ ∈ A.  ∃b ∈ B.  aRb ⋀ a′Rb => a = a′
-  left-unique: ∀b,b′ ∈ B.  ∃a ∈ A.  aRb ⋀ aRb′ => b = b′

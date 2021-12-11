# Relation Formulas

universal              ∀x∀y ∈ X. xRy
null                   ∀x∀y ∈ X.¬xRy
identity                 ∀x ∈ X. xRx

reflexive                 x ∈ X. xRx
irreflexive               x ∈ X.¬xRx
left quasireflexive     x,y ∈ X. xRy -> xRx
right quasireflexive    x,y ∈ X. xRy -> yRy
quasireflexive          x,y ∈ X. xRy -> xRx ⋀ yRy
coreflexive             x,y ∈ X. xRy -> x = y

symetric:               x,y ∈ X. xRy <->  yRx
antisymetric:           x,y ∈ X. xRy  -> ¬yRx
asymetric:              x,y ∈ X. xRy ⋀ yRx -> x = y

transitive            x,y,z ∈ X. xRy ⋀ yRz ->  xRz
anti-transitive       x,y,z ∈ X. xRy ⋀ yRz -> ¬xRz
right Euclidean       x,y,z ∈ X. xRy ⋀ xRz ->  yRz
left  Euclidean       x,y,z ∈ X. yRx ⋀ zRx ->  yRz
Euclidean             x,y,z ∈ X. (yRx ⋀ zRx -> yRz) ⋀ (xRy ⋀ xRz -> yRz)

dichotomous             x,y ∈ X. xRy ⊕ yRx
trichotomous          x,y,z ∈ X. xRy ⊕ yRx ⊕ y = z

dense                  ∀x∀z ∈ X(xRz -> ∃y ∈ X. xRy ⋀ yRz)

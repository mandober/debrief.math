# Set theory ∷ Properties

>How to assert that an object is a set?

Math has no notion of types or kinds: no matter how much two sets are differnt from each other, their elements are never deemed to be of distinct types. Set theory has no symbol to assert that an object is or isn't a set; or that two sets are of different type due to their composition. There are only symbols to assert set membership (∈) and set inclusion (⊆); and also set equality (=), either directly (if equality is a part of logic), or indirectly (by deriving equality from inclusion: a ⊆ b ∧ b ⊆ a ⇒ a = b).

The *set membership relation*, `x ∈ y`, is a heterogeneous binary relation between two objects, such that the object on the left (`x`) may be any object, but the object on the right (`y`) must be a set. A set is an object that may contain other objects, but since the empty set contains no objects, we can't assert the existence of a set in terms of the membership relation. We need a relatation that holds for both empty and nonempty sets.

The *set inclusion relation*, `x ⊆ y`, is a homogeneous binary relation between two objects such that both must be sets. This relation holds even if the left object is the empty set since the empty set is a subset of every set, `∅ ⊆ S`. And it also holds if both objects are empty sets since every set is a subset of itself, `S ⊆ S`.

The *powerset operation*, `𝓟(s)`, may be understood as a relation between two objects that must be sets: the left object, `s` (a set), is R-related to the right object, `𝓟(s)` (the powerset of `s`), i.e. `(s, 𝓟(s)) ∈ R`. Actually, this might be bollocks considering the fact that there is no bijection between the set `ℕ` and its powerset `𝓟(ℕ)`; while `ℕ` is a countably infinite set, `𝓟(ℕ)` is an uncountably infinite set, i.e. it's a larger infinity. So, how would we even present the powerset operation if we wanted to interpret it as a relation?

Therefore, if we must state that `x` is a set using symbols only, it seems we have to do it using the inclusion relation, `∀x(x ⊆ y -> x is a set)`. In ZF, everything is a set because thus is asserted up front by fixing the domain of discourse appropriately.

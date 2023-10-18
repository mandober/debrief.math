# CT :: Topics :: Functor

*Functors* are structure-preserving maps.
Let F, G, …, range over functors.

Since a category consists of objects and arrows, a functor `F: C → D` is 
(1) a mapping on objects and (2) mapping on arrows.
It is common practise to denote both mappings by the same symbol, e.g. `F`.
We also loosely speak of F's arrow part as a 'map'.

The action on arrows mujst agreee with types: 
if `f ∈ C(A, B)`, then `F f ∈ D(F A, F B)`

F must preserve identity `F idᴀ = id ꜰₐ` and 
composition `F (g ∘ f) = F g ∘ F f`
The force of *functoriality* lies in the action on arrows 
and in the preservation of composition.

There is an *identity functor*, `Idᶜ: C → C`. 

Functors are *composable*:
`(G ∘ F) A = G (F A)` (composition acting on objects) and 
`(G ∘ F) f = G (F f)` (composition acting on arrows)

This data turns small categories and functors into a category `Cat`.

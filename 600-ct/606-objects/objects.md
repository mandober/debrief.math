# Object

## Objects in general

Objects are abstract elements of categories, commonly depicted as dots because, generally, we cannot know their structure. Objects are merely static primitives serving for morphisms to hang off of.

Objects of a category are considered to be abstract opaque sets. However, within `𝗦𝗲𝘁` category, which is a category of "small" (lest get burnt by paradoxes) sets, sometimes we do have information about the structure of some sets, and sometimes we're even supposed to use and rely on it.

An object `A` is, well, an object `A` - it is always equal to itself, `A = A`. Objects have no internal structure (or it's inaccessible to us), so we can reason about their equality solely based on the equality of their labels. So, all objects that have the same label are the same object even if the label is associated to many vertices, as is sometimes the case with commutative diagrams (in which case it is definitely supposed to be understood as the same object). This is contrasted by arrows, especially when they are stated as anonymous maps, `A ⟼ B`, in which case there may be many distinct arrows having those same source and target objects. However, if a name is given, whether along with a signature like `f : A -> B` (where `f` is a name, and `A → B` is a signature or type of an arrow), then `f = f`, i.e., all arrows bearing the same label should be consider the same arrow. The overly exposed point was that a signature does not identify an arrow, but a name does, and object only have a name so they are identified only by it. On the other hand, establishing equality between two arbitrary arrows is a hairy problem, inherited from set-theoretic functions.

In a category `𝒞`, a collection of objects is denoted by `Obj(𝒞)` and the membership of an object `A` in `𝒞` may be denoted by `A ∈ Obj(𝒞)`.

## Initial and Terminal Objects

We define initial and terminal objects, which we shall use for describing algebras and initial algebras.

(Definition) Let `𝒞` be a category. An object `0` is the initial object of `𝒞`
if, for all objects `a`, there is a unique morphism `0 → a`.

(Definition) Let `𝒞` be a category. An object `1` is the terminal object of `𝒞` if, for all objects `a`, there is a unique morphism `a → 1`.

(Lemma) Initial and terminal objects are unique up to isomorphism.

(Proof) Let 𝒞 be a category with initial objects 0 and 0′. There are unique morphisms `00′ ∶ 0 → 0′` and `0′0 ∶ 0′ → 0`, and `00 = id0` and `0′ 0′ = id0′`. Hence, `0′0 ∘ 00′ = id0` and `00′ ∘ 0′0 = id0′`. That is, 0 is unique up to isomorphism. Similarly, let `𝒞` be a category with terminal objects 1 and 1′. There are unique morphisms `11′ ∶ 1′ → 1` and `1′1 ∶ 1 → 1′`, and `11 = id1` and
`1′1′ = id1′`. Hence, `11′ ∘ 1′1 = id1` and `1′1 ∘ 11′ = id1′`. That is, 1 is unique up to isomorphism.

In Hask, Void (the empty or uninhabited type) is the initial object, and unit or `()` type is the terminal object.

In Set, the elements of a set 𝐴 can be considered as functions from a terminal object, that is, any singleton set, to 𝐴. More specifically, if 𝑥 ∈ 𝐴 and 1 is a terminal object, then 𝑥 can be considered as a function 𝑥 ∶ 1 → 𝐴 which assigns 𝑥 to the element of 1.

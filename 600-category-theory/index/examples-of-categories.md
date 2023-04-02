# Examples of categories

- sets
  - `Set`,    sets and functions on sets
  - `Finset`, finite sets and functions between finite sets
  - `Nonset`, non-empty sets and functions between nonempty sets

- categories of structured sets
  - `Top`, Topological spaces and continuous fns between topological spaces
  - `Vect`, Vector spaces and linear transformations
  - `Grp`, Groups and group homomorphisms
  - `Mon`, Monoids and monoid homomorphisms
  - `Met`, Metric spaces and contraction Maps
  - `Man`, Manifolds and smooth Maps
  - `Top Grp`, Topological groups and continuous homomorphisms
  - `Pos`, Partially ordered sets and monotone functions

- `Cat`, categories and functors
- subcategory
  - full subcategory
- Product category
- Arrow category
- Comma category
- discrete categories
  - category 𝟘: no obj, no arrs
  - category 𝟙: 1 obj, 1 arr
  - category 𝟚: 2 objs, 3 arrs
  - category 𝟛: 3 objs, 6 arrs (3 id arr, 3 arr)
- preorders, elements and relation ≤
- functor category: functors and NTs


CATEGORY   OBJECTS                   ARROWS
-------------------------------------------------------------------------------
Rel        Sets                      Relations on sets
Set        Sets                      Functions on sets
Finset     Finite sets               Functions on finite sets
Nonset     Non-empty sets            Functions on nonempty sets
Grph       Graphs                    Graph homomorphisms
Top        Topological spaces        Continuous fns on topological spaces
Vect       Vector spaces             Linear transformations
Grp        Groups                    Group homomorphisms
Mon        Monoids                   Monoid homomorphisms
Met        Metric spaces             Contraction Maps
Man        Manifolds                 Smooth Maps
Top Grp    Topological groups        Continuous homomorphisms
Pos        Partially ordered sets    Monotone functions
Hask       Haskell Types             Haskell functions

CATEGORY   OBJECTS                   ARROWS
-------------------------------------------------------------------------------
logic      Propositions              Entailments (implications)
PLs        Types                     Functions

# Function properties

- A set is a collection of objects, called its elements.
- A class is a membership-restricted special set.
- A type is a class of objects, called values.
- A relation is a special set (class).

A function is a
- set
- set of ordered pairs
- relation


relation is a set
type is a set
relation is a set of ordered pairs

function is a set
function is a relation
function is a set of ordered pairs
function is a type (function type)

## Properties of functions

A function is a special set.   
A function is a special type of relation.   
A type is a set.   
A function is a mapping between two sets (types).   
A relation is a set of ordered pairs (a,b).   

A function is defined in terms of sets:   
a function between two sets A and B   
(or a function on a set A, in case A = B),   
is a special type of relation between A and B;

Any binary relation between two sets `A` and `B` is a set, `𝓡 = { (a,b) | a ∈ A ∧ b ∈ B }`, of ordered pairs, `(a,b)` such that the first component, `a`, is from the domain and the second, `b`, is from the codomain.

`a𝓡b` is the notation meaning that `a` is 𝓡-related to `b`; another notation, `(a,b) ∈ 𝓡`, means the same.


A function `f : ℝ → ℝ` with `∀x,y ∈ ℝ` is
- *order-preserving*   :  (x <= y) -> (f x <= f y)
- *metric-preserving*  :   |x − y| -> |f x − f y|
- *addition-preserving*: f (x + y) -> f x + f y


A function `f : ℝ → ℝ` with `∀x,y ∈ ℝ` (is it ℝ or any set?) is *monotonic* if the elements `x` and `y` are covariant and the results `f x` and `f y` stay covariant. For example, `(x <= y) -> (f x <= f y)`. A function is *non-monotonic* is the relation is reversed or contravariant, e.g. `(x <= y) -> (f x > f y)`. Some functions are neither or both; e.g. `f : ℝ → ℝ, f x = x²` is neither; it is non-monotonic for `x ∈ (-1,0) ∨ x ∈ (0,1)` and monotonic for other values.

x      | x²
-------|-----
-2.0   | 4
-1.5   | 2.25
-0.1   | 0.01
-0.01  | 0.0001
 0     | 0
 0.01  | 0.0001
 0.1   | 0.01
 0.4   | 0.16
 0.5   | 0.25
 2     | 4

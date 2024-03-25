# Relational calculus

https://en.wikipedia.org/wiki/Relational_calculus

The relational calculus consists of two calculi:
- the tuple relational calculus
- the domain relational calculus
that is part of *the relational model* for databases 
and provide a declarative way to specify database queries.

The raison d'être of relational calculus is the *formalization of query optimization*, which is finding more efficient manners to execute the same query in a database.

The relational calculus is similar to the relational algebra, which is also part of the relational model: 
- *the relational calculus* is meant as a declarative language that prescribes no execution order on the subexpressions of a relational calculus expression
- *the relational algebra* is meant as an imperative language - the subexpressions of a relational algebraic expression are meant to be executed from left-to-right and inside-out following their nesting.

>Per *Codd's theorem*, the relational algebra and the domain-independent relational calculus are logically equivalent.

## Contents

- Example
- Mathematical properties
- Purpose

## Example

A relational algebra expression might prescribe the following steps to retrieve the phone numbers and names of book stores that supply "Some Sample Book":

1. Join book stores and titles over BookstoreID.
2. Restrict the result of that join to tuples for book Some Sample Book
3. Project the result of that restriction over StoreName and StorePhone

A relational calculus expression would formulate this query in the following descriptive or declarative manner:

  Get StoreName and StorePhone 
  for book stores 
  such that 
  there exists a title BK 
    with the same BookstoreID value 
    and with a BookTitle value 
    of Some Sample Book


## Mathematical properties

The relational algebra and the domain-independent relational calculus are logically equivalent: for any algebraic expression, there is an equivalent expression in the calculus, and vice versa. This result is known as **Codd's theorem**.

## Purpose

The raison d'être of the relational calculus is the formalization of query optimization. Query optimization consists in determining from a query the most efficient manner (or manners) to execute it. Query optimization can be formalized as translating a relational calculus expression delivering an answer A into efficient relational algebraic expressions delivering the same answer A.


## Refs

https://en.wikipedia.org/wiki/Tuple_relational_calculus

https://en.wikipedia.org/wiki/Binary_relation
https://en.wikipedia.org/wiki/Composition_of_relations
https://en.wikipedia.org/wiki/Homogeneous_relation#Particular_homogeneous_relations
https://en.wikipedia.org/wiki/Algebraic_logic#Calculus_of_relations
https://en.wikipedia.org/wiki/Tuple_relational_calculus
https://en.wikipedia.org/wiki/Domain_relational_calculus
https://en.wikipedia.org/wiki/Relational_model
https://en.wikipedia.org/wiki/Relation_algebra
https://en.wikipedia.org/wiki/Relation_(mathematics)
https://en.wikipedia.org/wiki/Vector_calculus
https://en.wikipedia.org/wiki/Logical_matrix#Matrix_representation_of_a_relation
https://en.wikipedia.org/wiki/Bit_array
https://en.wikipedia.org/wiki/Converse_relation
https://en.wikipedia.org/wiki/Complement_(set_theory)
https://en.wikipedia.org/wiki/Associationism
https://en.wikipedia.org/wiki/%CE%A0-calculus
https://en.wikipedia.org/wiki/Finite_difference
https://en.wikipedia.org/wiki/Finite_difference
https://en.wikipedia.org/wiki/Principia_Mathematica
https://en.wikipedia.org/wiki/Allen%27s_interval_algebra#Composition_of_relations_between_intervals
https://en.wikipedia.org/wiki/Index_calculus_algorithm
https://en.wikipedia.org/wiki/The_Principles_of_Mathematics
https://en.wikipedia.org/wiki/Augustus_De_Morgan
https://en.wikipedia.org/wiki/Connectionism
https://en.wikipedia.org/wiki/List_of_theorems_called_fundamental
https://en.wikipedia.org/wiki/Discrete_mathematics#Calculus_of_finite_differences,_discrete_analysis,_and_discrete_calculus
https://en.wikipedia.org/wiki/Relation
https://en.wikipedia.org/wiki/Region_connection_calculus

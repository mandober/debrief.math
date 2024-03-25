# Equality of Relations

https://www.cs.odu.edu/~toida/nerzic/content/relation/equality/equality.html

Equality of relations is measured in terms of relations-as-triples: domain, codomain, and the relational set of ordered pairs must all be the same for two binary relations to fair equal.


Two binary relations `R1 = A1 ⨯ A2` and `R2 = B1 ⨯ B2` are equal, 
iff these 3 sets are equal:
- `A1 = B1` (domains are equal), 
- `A2 = B2` (codomains are equal) and
- `R1 = R2` (relational set of ordered pairs)


For example, let    
`R1 = {<1, 2> , <2, 2>}` ⊆ `{1, 2} ⨯ {1, 2}` and    
`R2 = {<a, b> , <b, b>}` ⊆ `{a, b} ⨯ {a, b}` then    
`R1 = R2` iff `a = 1` and `b = 2`

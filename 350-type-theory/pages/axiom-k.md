# Axiom K

https://ncatlab.org/nlab/show/axiom+K+%28type+theory%29

In type theory, the **axiom K** is an axiom 
that when added to intensional type theory 
turns it into extensional type theory, 
or more precisely, into what is called here 
*propositionally extensional type theory*.

In the language of homotopy type theory, 
this means that all types are `h-sets`, so accordingly, 
**Axiom K is incompatible with the Univalence Axiom**.

Heuristically, the axiom asserts 
that each term of each identity type `IdA(x,x)` 
(of equivalences of a term `x : A`) 
is propositionally equal 
to the canonical reflexivity 
equality proof `reflₓ : IdA(x,x)`.

(See also at Extensional Type Theory ∷ Propositional extensionality)

## Versions of the Identity Type

The identity type is complex and is the subject of research in type theory.

While all type theories agrees on the name of the data constructor (`refl`), their properties and eliminator functions differ dramatically.

For extensional approaches, any identity type can be converted into a judgemental equality. A computational version is known as **Axiom K** due to Thomas Streicher. These are not very popular lately.

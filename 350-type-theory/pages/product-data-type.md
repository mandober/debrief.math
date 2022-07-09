# Product data type

https://en.wikipedia.org/wiki/Product_type

Product types are analogous to the cartesian product.

In type theory, product is an operation on types for constructing new types from the existing ones.

The values of a product type typically contain several values, called fields. All values of that type have the same combination of field types. The set of all possible values of a product type is the set-theoretic product, i.e., the Cartesian product, of the sets of all possible values of its field types.

products (tuple, record, struct)


produces a new, compound, type

a product of types is another, compounded, type in a structure. 

The "operands" of the product are types, and the structure of a product type is determined by the fixed order of the operands in the product. 

An instance of a product type retains the fixed order, but otherwise may contain all possible instances of its primitive data types. 

The expression of an instance of a product type will be a tuple, and is called a "tuple type" of expression. 

A product of types is a direct product of two or more types.



If there are only two component types, it can be called a "pair type". For example, if two component types A and B are the set of all possible values of that type, the product type written A × B contains elements that are pairs (a,b), where "a" and "b" are instances of A and B respectively. The pair type is a special case of the dependent pair type, where the type B may depend on the instance picked from A.

In many languages, product types take the form of a record type, for which the components of a tuple can be accessed by label. In languages that have algebraic data types, as in most functional programming languages, algebraic data types with one constructor are isomorphic to a product type.

In the Curry-Howard correspondence, product types are associated with logical conjunction (AND) in logic.

The notion directly extends to the product of an arbitrary finite number of types (a n-ary product type), and in this case, it characterizes the expressions which behave as tuples of expressions of the corresponding types. A degenerated form of product type is the unit type: it is the product of no types.

In call-by-value programming languages, a product type can be interpreted as a set of pairs whose first component is a value in the first type and whose second component is a value in the second type. In short, it is a cartesian product and it corresponds to a product in the category of types.

Most functional programming languages have a primitive notion of product type. For instance, the product of type1, ..., typen is written type1*...*typen in ML and (type1,...,typen) in Haskell. In both these languages, tuples are written (v1,...,vn) and the components of a tuple are extracted by pattern-matching. Additionally, many functional programming languages provide more general algebraic data types, which extend both product and sum types. Product types are the dual of sum types.

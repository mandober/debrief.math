# Inductive type

https://en.wikipedia.org/wiki/Inductive_type

Inductive type should not be confused with [Inductive Data Type][indt].    
Inductive data type may refer to:
- *Inductive family*:    
  family of inductive data types     
  indexed by another type or value.   
- *Recursive data type*:    
  data type for values that possibly    
  contains other values of the same type.  
- *Algebraic data type*:    
  data type, each of which values, is data   
  from other data types wrapped    
  in a data ctor of the ADT.   
  (What's confusing is that ADT is actually   
  the standard way to define inductive types;   
  e.g. in many FPLs, you use the `data` keyword   
  to define `Nat`, which is an inductive type,   
  and a recursive data type at that).   
  Also, in many FPLs, *canonically defined types*    
  are *possibly recursive sums of products*.

[indt]: https://en.wikipedia.org/wiki/Inductive_data_type_(disambiguation)

https://en.wikipedia.org/wiki/Type_theory

https://en.wikipedia.org/wiki/Identity_type
https://en.wikipedia.org/wiki/Impredicativity

https://en.wikipedia.org/wiki/Inductive_type
https://en.wikipedia.org/wiki/Intuitionistic_type_theory#Inductive_types
https://en.wikipedia.org/wiki/Homotopy_type_theory#Higher_inductive_types

https://en.wikipedia.org/wiki/Induction
https://en.wikipedia.org/wiki/Structural_induction
https://en.wikipedia.org/wiki/Induction-induction
https://en.wikipedia.org/wiki/Induction-recursion
https://en.wikipedia.org/wiki/Type_constructor
https://en.wikipedia.org/wiki/Coinduction
https://en.wikipedia.org/wiki/Inductive_data_type
https://en.wikipedia.org/wiki/Algebraic_data_type
https://en.wikipedia.org/wiki/Recursive_data_type
https://en.wikipedia.org/wiki/Mogensen-Scott_encoding
https://en.wikipedia.org/wiki/Homotopy_type_theory
https://en.wikipedia.org/wiki/Judgment_(mathematical_logic)

http://nlab-pages.s3.us-east-2.amazonaws.com/nlab/show/identity+type


### Inductive types

Inductive types is a way to create a large variety of types. 
In fact, all the types described above and more can be defined using the rules of inductive types. Once the type's constructors are specified, the eliminator functions and computation is determined by structural recursion.

There are similar, more powerful ways to create types. These include induction-recursion and induction-induction. There is also a way to create similar types using only lambda terms, called Scott encoding.

(NOTE: Type theories do not usually include coinductive types. They represent an infinite data type and most type theories limit themselves to functions that can be proven to halt.)

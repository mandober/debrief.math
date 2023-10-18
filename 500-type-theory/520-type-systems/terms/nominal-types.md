# PLT :: Type system :: Nominal types

**Nominal types**, or *named types*, are types with a name that are discerned from other types precisely by their name.

Names of types usually conform to a certain scheme that usually has the same requirements as the identifiers - after all, type names are also identifiers.

Nominal types stand only for themselves and no other type.

Language primitive types are nominal types. Although primitive values are created literally (as literals), they are usually considered to belong to a certain type, and only to that type. For example, if 'true' is a Boolean value (as it usually is), then 'true' can only be of the Boolean type. Conversely, the Boolean ctor must be used to create Boolean values (if we ignore literal values for a moment; we do need to pass a Boolean literal to the Boolean ctor as in the call `new Boolean(true)`, but this could have also been a string as in `new Boolean('true')`. That is to say, it's impossible not to have literals in a language. What about Lambda Calculus? Are the function definitions literals? In any case, LC is not yet a complete language, it needs I/O, and who knows if we'd need literals then).


In JS, for instance, primitive values have literals but they can also be created using a corresponding constructor fucntion, e.g. Boolean values can be created as literals (`true`), but they may also be created using the appropriate ctor function with a `new` call, `new Boolean(true)`.


Almost always, they include primitive types of the language, such as 'Boolean', 'Int', 'Float', 'String', etc.

Nominal types may also include special types such as top, bottom, 'undefined', 'null', and similar. Actually, 'undefined' and 'null' are nominal types that may be bottoms (bottom types) in a given language.


represent the bottom type. The top and bottom are type-theoretical, generic, names for the two types that sit at the opposite ends of a type hierarchy: *top type* is the supertype and *bottom type* the subtype of all other types in a language.


types, which may be named in the given language; for example, the top type may be named 'any', 'unknown', 'mixed', and the bottom type may be named 'never', 'zero', 'empty', `⊥`, etc. 



Nominal types are contrasted by *structural types* which have no name and are discerned by their structure. Structural types are referred to by their generic or conventinal names, e.g. struct, union, record, tuple, list, map, set, function. Structural types are usually type constructors, i.e. type-level functions, used as type builders.

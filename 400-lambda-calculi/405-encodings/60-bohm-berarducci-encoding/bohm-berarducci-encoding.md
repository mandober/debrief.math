# Böhm-Berarducci encoding

**The Böhm-Berarducci encoding** (BBE) is known as the adjustment of the *Church encoding* in typed settings. Like other encoding schemes, BBE can encode any data type using just anonymous function. *Scott's encoding* is similar to these two, and it has a concise algorithm for translation of Haskell's ADTs.

Böhm-Berarducci encoding is a bigger deal in statically-typed languages because it provides a way to introduce sum types and recursion into a language in a type-safe way that makes invalid states unrepresentable. Conversely, Church encoding is not as big of a deal in dynamically-typed languages because a Church-encoded type is still vulnerable to runtime exceptions.


BB-encoding a non-recursive data type:
1. First declare the datatype as a GADT that will be used a "model"
2. GADT uses the 'data' keyword while BB can use anything:
   - 'type' can be used to declare only a type alias but
   - 'newtype' is better if we're to impl classes for it
   - 'data' is probably the most comfortable since the type


* the return type is a forall-type
* each "ctor" param plays the role of data ctor
* there is an "extra" overall return type that is the same as
  the return types of each "ctor" param (that expect a funarg)

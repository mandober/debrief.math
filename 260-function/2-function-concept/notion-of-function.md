# Notion of a function

The problem is that math didn't complete the minimal set of requirements before a relation may consider itself a function. The biggest omission was leaving out, or being flexible with the specification of a codomain.



leaves many things unspecified or even ambiguous when it comes to functions, which may be frustrating in situations when a topic common to both math and PLs is discussed. The notion of functions is a prime example of a topic that is not well-defined neither in math itself, nor in many PLs. Like different mathematicians have different notion of functions, so each programming language has its own, ever slightly different from another PL, view of functions.

In math, the most general form of a function is denoted by `f(x) = y`.


with various authors pushing their own views, because the notion of a function is not standardized; unlike sets, which have numerous competing theories, and a preferable one (ZF), function do not enjoy such privilege, leaving authors to fend


 there are no theories of functions 

in at least one theory 


may sometimes feel frustrating


For example, referring to a function itself is sometimes denoted by `f` (which is correct), but other times by `f()`, which is sorta incorrect. Math leaves 


Unlike most programming languages, math doesn't bother defining types. Considering Haskell, as a very math-like language, it is evident that the things that are desirable in a PL are neglected in math. So, math doesn't (explicitly) define types, nor it offers a standardized means of constructing new types.


Types like the empty type (an uninhabited type - a type with no terms; in Haskell named `Void`), singleton types (type with exactly one single term, in Haskell called "unit" and denoted by `()`), nor does it define means of type construction.

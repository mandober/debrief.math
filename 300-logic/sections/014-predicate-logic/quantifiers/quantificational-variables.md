# Variables in predicate logic

We need to introduce a new type of term that lacks in propositional logic, called a variable. *Variables* are a kind of auxiliary symbol. In some ways they behave like individual constants, since they can appear in the list of arguments immediately following a predicate or function symbol. But in other ways they are very different from individual constants. In particular, their *semantic function* is not to refer to objects, rather, they are *placeholders* that indicate relationships between quantifiers and the argument positions of various predicates.

In a language of propositional logic we use single lowercase letters from English alphabet as constants that denote atomic sentences from a natural language. For example, `p` may stand for a sentence "it is raining". And just like various connectives join natural language's atomic sentences to make complex ones, we use logical connectives in propositional logic to join logical constant (letters), e.g. `p ⋀ q`, in order to make complex statements from atomic ones. Thus, in propositional logic, letters stood for individual constants (names), and they were the only basic term. Letters were used as constants, not as variables - the correspondence between a specific atomic sentence from a natural language was fixed to a particular letter (constant) in a language of propositional logic.

However, in predicate logic, we also use single lowercase letters, towards the end of the English alphabet, optionally decorated with a subscript, superscript and primes. We assume an infinite list of variables, so we never run out and always have a fresh one.

The set of terms of a language of predicate logic is expanded by introducing variables. If a language containes function symbols, we built additional terms by repeated application of these function symbols. Now we have two types of basic terms: *variables* and *individual constants*. In order to distinguish between them, we use lowercase names for constants; and if a constant is represented by a single letter, we take that letter from the beginning of the English alphabet.

We form complex terms by applying function symbols to either type of basic term. So, in addition to the term `father(c)`, where `c` is a constant, we'll also have the term `father(x)`, where `x` is a variable; and also similarly for `(0 + 1) × 1` vs `(y + z) × z`.

These new terms allow us to produce expressions that look like atomic sentences, except there are also variables, not only individual constants. For example, `Home(x)`, `Taller(c,y)`, `Taller(father(z),z)` are such expressions.

We call such expressions *atomic wffs*. They are not sentences by themselves, but they will be used with quantifiers to build sentences. The term *sentence* will mark wffs in which variables are used together with quantifiers that bind them (wffs without free variables).

Summary
* A language of FOL has an infinite supply of variable names.
* Variables occur in atomic wffs in any position normally occupied by a name.
* A sentence is a wffs in which all variables are bound by quantifiers.

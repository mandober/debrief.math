# Quantified sentences

In English, basic sentences are made by combining *noun phrases* and *verb phrases*. The simplest noun phrases are the *proper names* (Max, Claire), which correspond to the constant symbols in FOL. More *complex noun phrases* are formed by combining common nouns with determiners.

A **determiner** is a word, phrase or affix that occurs together with a noun phrase and serves to express the reference of that noun phrase in the context. That is, a determiner may indicate whether the noun is referring to a definite or indefinite element of a class, to a closer or more distant element, to an element belonging to a specified person or thing, to a particular number or quantity, etc. Common kinds of determiners in English include definite (the) and indefinite articles (a/an), demonstratives (this, that), possessives (my, their), cardinal numerals, quantifiers (many, both, all, no), distributives (each, any), interrogatives (which).

Combining common noun phases with determiners, we obtain *noun determiners phrases* (every cube, some man from Indiana, most children in the class, the dodecahedron in the corner, three blind mice, no student of logic).

Logicians call such noun phrases *quantified expressions* because they allow us to talk about quantities of things (every cube, most children, etc.).

Quantified sentences from a natural language cannot be converted into a symbolic language of propositional logic - for that we need a more powerful kind of logic - predicate logic.

Quantification takes us out of the realm of truth-functional connectives - we cannot determine the truth of quantified sentences by looking at the truth values of constituent sentences. Quantified sentences are not really made up of simpler sentences, so their truth value can not be easily determined.

In English, many non-truth-functional sentences have *hidden quantification*. For example, the sentence: "Max is home whenever Claire is at the library". The truth of this sentence at a particular time is not a truth function of its components at that time. The reason is that "whenever" is an implicit form of quantification, meaning "at every time that". So this sentence means: "Every time when Claire is at the library is a time when Max is at home".

Another example of a non-truth-functional connective that involves *implicit quantification* is "logically implies". You cannot tell whether `P` logically implies `Q` just by looking at their truth values because the claim means that every logically possible circumstance that makes `P` true makes `Q` true - the claim implicitly quantifies over all possible circumstances.

While there are many forms of quantification in English, only two are explicitly built into FOL, universal and existential quantification.

This may seem like a very small number of quantifiers, but surprisingly many other forms of quantification can be defined from these two using predicates and truth-functional connectives, including phrases like: "every cube", "three blind mice", "no tall student", "whenever".

However, some quantified expressions are outside the scope of FOL, including "most students", "many cubes", "infinitely many prime numbers".

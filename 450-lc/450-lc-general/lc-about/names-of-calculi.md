# The names of calculi

The collection of calculi based on the original Church's work is called lambda calculi, although the plural form is often replaced by the singular form lambda calculus.

The term "lambda calculi" unambiguously names the collection of formalisms based on the Church's original. The singular form, "lambda calculus", is also often for this purpose, particularly when the distinction is not important or clear from the context.

However, "lambda calculus" is a tremendously overloaded term; in fact, from the term alone we cannot even determine the broad category it is intended to designate. And there are a lot of categories. Perhaps the broadest categorization is into typed and untyped calculi, which immediately separates the bunch into the formalisms closely following the original untyped lambda calculus, and all the rest, typed, calculi.

The former class of untyped calculi, with no types around, is not as diverse as the later class, but even without the types there are many other factors that account for distinctions beteween the individual members. Of these, the order of evaluation is probably the most important factor, closely followed by the further granularity of reduction strategy. These factors further multiply when it comes to the implementation, e.g. the choice between the use of alphabetical names or the deBruijn indices for variables. In any case, none of these variants have a distinguishing name, so all are called just lambda calculus.

The situation is better in the class of typed calculi, where some members even have distinguishing, proper, names. That class is generally divided according to the supported features (picked from a very large type-related feature set) and organized into the so-called *lambda cube*.

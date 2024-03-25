# Truth value

https://iep.utm.edu/truth/

The notion of truth and the concrete *set of truth values* are also factors that have contributed to the further division of logic and formation of new types of logic. Being mostly orthogonal factors, the logics they have spawned can be comined with logics that other factors have given rise to, yielding, for example, fuzzy modal logic vs 3-valued affine logic.


*Truth value* is an element of the set of truth values, which, in standard logics, is the set `{true, false}` or `{1,0}` and it often called the *Boolean doamin*, `𝔹`.

Truth values 'true' and 'false' are *logical constants*.

They may be defined in terms of (nullary) logical connectives, or by defining them as constant symbols (namespaced to the syntactic class of logical constants). However defined, the truth values behave the same either way.

The truth values are often interpreted as *nullary connectives* (or nullary Boolean functions). If we consider logical connectives as operators (infix functions), of the 16 possible binary connectives (operators), two are constant functions: 'truth' (`⊤`, 1111) and 'falsity' (`⊥`, 0000), i.e
- `⊤(p, q) = 1`,   or just `⊤(_, _) = 1`
- `⊥(p, q) = 0`    (since they don't even look at the args)

Both discard their two arguments and just return 'true' (1) and 'false' (0), respectivelly.

Also, of the 4 unary operators (of which only NOT is the interesting one), two are the same constant fucntions, only this time each takes a single argument (which is ignored): 'truth' (`⊤`, 111) and 'falsity' (`⊥`, 000).

The 4 unary logical operators (unary connectives):

p | ⊤ | id| ¬ | ⊥
--|---|---|---|---
1 | 1 | 1 | 0 | 0
0 | 1 | 0 | 1 | 0

or, defined as prefix operators/functions:
-   `⊤(p) = 1`, or just `⊤(_) = 1`
-  `id(p) = p`
- `not(p) = ¬p`
-   `⊥(p) = 0`, or just `⊥(_) = 0`

In following this logic, nullary operations are then just taken to be the constant values 'true' and 'false' themselves. This is slighly controversal since it can be seen as going out of the domain, since their signature is not `𝔹ⁿ → 𝔹` (where n=1 for unary, n=2 for binary operators). The signature becomes `() → 𝔹`, which may also be interpreted as the collapse of `𝔹⁰ → 𝔹`, such that `𝔹⁰` evaluates to `()`.

NOTE: The signature `() → 𝔹` is to be interpreted *categorically*, in that the signature denotes the two constant functions - going from the terminal object `()` (that acts as an element-selector) to a truth value in the set `{0,1}`. So, the signature `() → 𝔹` actually collapses into just `𝔹` (when implemented e.g. in a PL), which is the proper type of the two truth values: `true : 𝔹` and `false : 𝔹`. This is needed because the signature `() → 𝔹` in many PLs indicates that a function takes nothing, in many PLs denoted by `()`, and returns a truth value (of the `𝔹`oolean type).




**Truth values in standard logics**: Propositons are declarative sentences that have a truth value. Propositons are statements that can be assigned a truth value. Classically, there are two truth values, 'true' and 'false'. A logic that has two truth values is called *bivalent logic*. The principle of bivalence (POB) states that a proposition is either true or false. Besides POB, classical logic is also based on the principle of excluded middle (PEM), which states that no other (middle) option is possible - here, meaning that a propositon can only ever be true or false and nothing else. These two principle conspire to make the truth values of classical logic very strong: a proposition can either be true or false, not both and not neither. Despite the fact that this usually holds, logic and mathematics, which are normally not in the habit of making generalizations that do not hold 100% of the time, in this case, rather surprisingly, accept ths (perhaps due to tradition). That is, classical mathematics accepts this, but intuitionistic (constructive) does not. By extension, LEM is not accepted in *intuitionistic logic* (IL), nor is double negation elimination (DNE).


Having two values is not the only option: *multi-valued logics* allow for more. 
*Three-valued logic* has 3 truth values (true, false, unknown). 

*Four-valued logic* has 4 truth values (true, false, both, none) and are used to model systems that aggregate information from multiple sources, where it can happen that a proposition turns out both true and false. In classical logic, this would be disasterous because a proposition that is both true and false is a contradiction and anything follows from contradiction due to the explosion principle (EFQ). But four-valued logics can handle this situation by assinging the truth value of 'both' to contradicting propositons and then handling the interactions of 'both' with other truth values, e.g. `both ∧ none = false`, `both ∨ none = true`, where 'none' denotes the fact that no sources exists to determine the proposition's truth value.

*Fuzzy logic* strech the notion of truth values to the interval from 0 to 1 inclusive. 0 marks certain falsity, 1 is absolute truth, and the valus in between denote the certainty of the truth of propositions. Logical connectives work in a special way, e.g. `¬p` is defined as `1 - p`, `p ∧ q` is `min(p, q)`, and `p → q` is `1 - (p - q)`.

# Semi-Thue system

https://en.wikipedia.org/wiki/Semi-Thue_system

Axel Thue

In TCS and mathematical logic a **String Rewriting System** (SRS), historically called a **semi-Thue system**, is a rewriting system over strings from a (usually finite) alphabet.

Given a binary relation `R` between fixed strings over the alphabet, called *rewrite rules*, denoted by `s → t`, an SRS extends the *rewriting relation* to all strings in which the lhs and rhs of the rules appear as substrings, that is `u s v → u t v`, where s,t,u,v are strings.

The notion of a semi-Thue system essentially coincides with the presentation of a *monoid*. Thus, they constitute a natural framework for solving *the word problem* (deciding whether two given expressions are equivalent with respect to a set of rewriting identities) for monoids and groups.

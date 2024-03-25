# Regular expression

https://en.wikipedia.org/wiki/Regular_expression

A **regular expression** consists of a sequence of characters and it specifies a match pattern to search for in text (it specifies a search pattern that is to be searched for in text). Regular expressions are a mini DSL for describing text-based patterns.

Regular expression techniques were developed in theoretical computer science and formal language theory. The concept was introduced in the 1950s, when Kleene formalized the concept of regular language.

Regexes came into common use with text-processing utilities on Unix. Different syntaxes for writing regular expressions have existed since 1980s, with two being standardized: POSIX and PCRE (Perl-compatible regular expressions).

Regular expressions are supported in all mainstream programming languages, but they are not the strict regular expressions as found in theoretical CS as they have been augmented with features that allow them to recognize even some non-regular languages (non-TCS-standard features like lookback, lookahead, etc). In TCS, a regular language is one that can be described by a regular expression (in the strict sense), and regular expressions can only recognize regular languages.

## Formal definition

The strict definition of regular expressions is given recursively; a regular expression, `r`, can recognize the 3 kinds of basic languages, along with the languages that can be made by using the 3 regular operators:

3 kinds of *basic languages*
1. `∅`       (the empty lang)
2. `{ε}`     (the empty-string lang)
3. `.`       (single-character lang)

3 *regular operations*
4. `r₁ ⋃ r₂` (union of regexes)
5. `r₁ • r₂` (concatenation of regexes)
6. `r⭑`      (Kleene star operator on a regex)

The empty-string language is unique, i.e. there is only one empty-string lang. The empty language is unique, i.e. there is only one empty language. There may be many single-string languages, one for each char in the language alphabet Σ. Thus, given any character `a` in `Σ`, there is a lang `{a}` that consists of exactly that one character.

The 3 *regular operations* are union, concatenation and star. Regular operations combine regexes - and thus languages recognized by them - enabling the recognition or description of more regular languages.


Regular languages are closed under the operations of
- union,          `L₁ ⋃ L₂`
- intersection,   `L₁ ⋂ L₂`
- concatenation,  `L₁ • L₂`
- complement,     `L̅`
- star,           `L⭑`
 
Regular languages are closed under the operations of
- subsequences
- reversal
- homomorphism
- suffixes
- division
- "avoids" relation


## Refs

* "Beware of zalgo" post:
https://stackoverflow.com/questions/1732348/#1732454

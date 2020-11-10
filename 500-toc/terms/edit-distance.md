# Edit distance

https://en.wikipedia.org/wiki/Edit_distance

**Edit distance** is a way of quantifying the similarity between two strings in terms of the number of editing actions required to transform one into the other.

Edit distances is used in error correction, natural language processing, spell correction, bioinformatics (similarity of DNA sequences), etc.

Edit distance definitions come in many flavours, depending on the set of allowed operations over the strings.

Edit distance types by allowed ops
- Levenshtein           | del | ins | subst |
- Damerau-Levenshtein   | del | ins | subst | transp
- Longest Common Subseq | del | ins |       |
- Hamming               |     |     | subst |
- Jaro                  |     |     |       | transp

Levenshtein distance:
- Insertion of a single symbol    : uv  ~~> uxv (ε→x)
- Deletion of a single symbol     : uxv ~~> uv  (x→ε)
- Substitution of a single symbol : uxv ~~> uyv (x→y, and y≠x)

Insertion and deletion use the same denotation as subst, i.e. they are also expressed in terms of symbol substitution: deletion substitutes an existing symbol with the empty string (ε), and insertion substitutes ε with a new symbol.

In Levenshtein's original definition, each of these operations has unit cost (except that substitution of a character by itself has zero cost), so the Levenshtein distance is equal to the minimum number of operations required to transform a to b.

Additional primitive operations have been suggested. Damerau-Levenshtein distance counts as a single edit a common mistake: transposition of two adjacent characters, formally characterized by an operation that changes uxyv into uyxv. For the task of correcting OCR output, merge and split operations have been used which replace a single character into a pair of them or vice versa.

The Levenshtein distance is 3
* kitten → sitten  (subst "s" for "k")
* sitten → sittin  (subst "i" for "e")
* sittin → sitting (ins   "g" at the end)

LCS distance costs 5 operations:
* kitten → itten   (del "k" at 0)
* itten  → sitten  (ins "s" at 0)
* sitten → sittn   (del "e" at 4)
* sittn  → sittin  (ins "i" at 4)
* sittin → sitting (ins "g" at 6)




https://en.wikibooks.org/wiki/Algorithm_Implementation/Strings/Longest_common_substring
https://en.wikibooks.org/wiki/Algorithm_Implementation/Strings
http://rosettacode.org/wiki/Longest_common_subsequence

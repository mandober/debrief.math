# Truth versus validity

The distinction between truth and validity is a fundamental principle in formal logic.

<!-- #region triples -->

<details><summary>Truth vs validity</summary>

The permutations of the validity of the argument (Arg), and truth values of the premises (P) and the conclusion (C), produces all the triples listed below.

n | Arg     | P | C | Notes
--|---------|---|---|-----------------------------
1 | (valid) | T | F | N/A (T ⊢ F cannot be valid)
2 | invalid | T | F |
3 | valid   | T | T | **valid and sound**
4 | invalid | T | T |
5 | valid   | F | F | valid but unsound
6 | invalid | F | F |
7 | valid   | F | T | valid but unsound
8 | invalid | F | T |

All the triples are possible except the first one, `(v,T,F)`: no valid argument can have true premises and the false conclusion; an argumnet cannot be valid and yet have true premises and the false conclusion.

This also means that when the premises are true and the conclusion is false, the only possibility is that the argument is *invalid*. In all other cases, the argument could be go both ways: it may be valid or invalid.

A valid argument whose premises and conclusion are all true is sound.


```js
1. (impossible : T ⊢ F)

no valid argument can           T
have true premises              T
----------------------------------- impossible
and the false conclusion.       F

2. (invalid : T ⊢ F)

Cats are mammals.               T
Dogs are mammals.               T
----------------------------------- invalid
Therefore, dogs are cats.       F


3. (VALID : T ⊢ T)

Cats are mammals.               T
Tigers are cats.                T
----------------------------------- valid
Therefore, tigers are mammals.  T

4. (invalid : T ⊢ T)

Cats are mammals.               T
Tigers are mammals.             T
----------------------------------- invalid
Therefore, tigers are cats.     T


5. (VALID : F ⊢ F)

Dogs are cats.                  F
Cats are birds.                 F
----------------------------------- valid
Therefore, dogs are birds.      F

6. (invalid : F ⊢ F)

Cats are birds.                 F
Dogs are birds.                 F
----------------------------------- invalid
Therefore, dogs are cats.       F


7. (VALID : F ⊢ T)

Cats are birds.                 F
Birds are mammals.              F
----------------------------------- valid
Therefore, cats are mammals.    T

8. (invalid : F ⊢ T)

Cats are birds.                 F
Tigers are birds.               F
----------------------------------- invalid
Therefore, tigers are cats.     T
```

The arguments above help us establish the general principles of logic:
* True premises do not guarantee validity (proved by 2 and 4)
* A true conclusion does not guarantee validity (proved by 4 and 8)
* True premises and conclusion do not guarantee validity (proved by 4)
* Valid reasoning does not guarantee a true conclusion (proved by case 5)
* False premises do not guarantee invalidity (proved by 5 and 7)
* A false conclusion does not guarantee invalidity (proved by 5)
* False premises and conclusion do not guarantee invalidity (proved by 5)
* Invalid reasoning does not guarantee a false conclusion (proved by 4 and 6)

</details>

<!-- #endregion -->

.

Therefore, while the *truth of propositions* and *the validity of reasoning* are distinct concepts, the relation between them is not entirely clear. But we also can't say that truth and validity are utterly independent of each other because the impossibility of (1) case (i.e. a valid argument with true premises and false conclusion is not possibile) shows that this particular combination of truth values is an absolute bar to validity. When an argument has true premises but a false conclusion it must be invalid; in fact, this is how we define invalidity.

On the other hand, this partial reliance of validity on truth values only exists for what logicians call the *semantic concept of validity*. Conversely, *syntactic concept of validity* makes no reference to truth values at all.

Despite these issues, true premises or a true conclusion should never mislead us into automatically assuming that an argument is valid. Similarly, false premises or false conclusion shouldn't mislead us into assuming that an argument is invalid. Moreover, valid reasoning shouldn't mislead us into assuming that the statements are true, just as invalid reasoning shouldn't mislead us into assuming that the statements are false.

However, thuth and validity do get combined in the concept of soundness: an **argument is sound** iff all the premises are true and the reasoning is valid. Then it follows that all sound arguments have true conclusions.

## Testing arguments for validity

Instead of testing for validity, logicians test for invalidity.

An invalid argument means the premises are true but the conclusion is false (this is the only combination when an argument is invalid; in other cases it could go both ways). In a weak sense, an argument is valid if it simply is not invalid. This weak sense of validity turns out to suffice for all the purposes of rigorous reasoning in mathematics.

To test for invalidity, we have to know when we're dealing with true premises and a false conclusion. However, logicians don't know whether statements are true or false (they leave it to the empirical scientists to find this out).

Despite this, logicians still have ways to test for validity. One way is to start by assuming that the premises are true and that the conclusion is false. That is, start by assuming invalidity, then check if that assumption holds. Another way is to assign all truth value combinations to all the statements: if a world in which the premises are true but the conclusion is still false is possible, then the argument is invalid in all possible worlds.

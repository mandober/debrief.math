# Basic notions

- deductive reasoning
- deductive argument
- argument
- premise
- conclusion
- validity, valid vs invalid argument
- soundness, sound vs unsound argument


[≝][🏲]
[≝][ᴅᴇꜰɪɴɪᴛɪᴏɴ]
[≝][ᴅᴇꜰɪɴɪᴛɪᴏɴ]
[≝][ᴅᴇꜰɪɴɪᴛɪᴏɴ][🏲]
[≝][⋅ᴅᴇꜰɪɴɪᴛɪᴏɴ⋅][🏲]

----

A (deductive) [argument][🏲] is __valid__ iff it takes the form that makes it impossible for the `premises` to be true and the `conclusion` nevertheless to be false. Otherwise, a deductive <ins>argument</ins> is *invalid*. Whether the premises are actually true or not is unimportant - the important thing is that the conclusion follows from the premises on the basis of the syntactic structure of the argument alone.

≝ A (deductive) argument is __sound__ iff it is both `valid`, and all of its premises are actually `true`. Otherwise, a deductive argument is *unsound*.















[🏲]: Argument is a logical form built from a set of statements: *premises* are a set of any number of statements that together set up the assumptions from which the final statement, called *conclusion*, must necessarily follow.


* All arguments have conclusions, but not all arguments have premises, since the set of premises can be empty.
* If the sentences involved belong to a natural language, they need to be declarative (indicative) sentences becuase only such sentences have a truth value.

≝ An argument is __valid__ iff the following condition is necessary: if all of its premises are true, then the conclusion is true. That is, if it would be possible for the conclusion of an argument to be false even though all its premises are true, then such an argument wouldn't be very reliable, it would be invalid.


---
Logic primer

https://logic.tamu.edu/Primer/

Any student who has mastered the material in this book will be well prepared to take a second course on metatheory, using
- Lemmon's classic, `Beginning Logic`
- Tennant's `Natural Logic`

We prefer systems of natural deduction 
to other ways of representing arguments, 
and we have adopted 
*Lemmon's technique of explicitly tracking assumptions* 
on each line of a proof. 
We find that this technique illuminates 
the relation between conclusions and premises 
better than other devices for managing assumptions. 
Besides that, it allows for shorter, more elegant proofs. 
A given assumption can be **discharged more than once**, 
so that it need not be assumed again 
in order to be discharged again. 
There is no need to assume P twice 
because the following is possible: 

```js
1     (1)   P -> (Q ⋀ R)            assume
2     (2)   P                       assume
1,2   (3)   Q ⋀ R                   from 1,2
1,2   (4)   Q                       from 3
1,2   (5)   R                       from 3
1     (6)   P -> Q                  from 4, discharge 2
1     (7)   P -> R                  from 5, discharge 2
1     (8)   (P -> Q) ⋀ (P -> R)     from 6,7
```

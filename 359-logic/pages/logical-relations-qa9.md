---
downloaded:       2021-11-14
author:           
page-url:         https://queuea9.wordpress.com/category/logical-relations/
page-title:       Logical relations | QA9
article-title:    Logical relations – QA9
article-length:   6099
article-created:  {Date-Creation-yyyymmdd}
article-modified: {Date-Revision-yyyymmdd}
desc:             Posts about Logical relations written by aaron.stump
---
# Logical relations | QA9

Posts about Logical relations written by aaron.stump
On many PL researchers’ lists of most important ever papers in PL is “Types, Abstraction, and Parametric Polymorphism” by the great John C. Reynolds.  I have been studying the paper rather intensively the past month or so, and would like to share some thoughts (and even a legend for the paper’s notation, at the end of the post!).

In this paper, Reynolds sets out to characterize mathematically what parametric polymorphism is.  Part of the idea is the familiar goal (in Computer Science) that different implementations of the same interface should be interchangeable: as long as they behave the same with respect to the interface, then no other piece of code should be able to tell the difference between them.  Another part of the idea is that type polymorphism can be used to enforce this, as different clients of some interface cannot discover details about the implementation that are hidden behind some type abstraction.

To move these ideas from the realm of intuition to theorems, Reynolds defines two semantics for types.  The first interprets types as sets.  For example, a type like ![\textit{Nat} \to \textit{Nat}](https://s0.wp.com/latex.php?latex=%5Ctextit%7BNat%7D+%5Cto+%5Ctextit%7BNat%7D&bg=1b1b1b&fg=dddddd&s=0&c=20201002) is interpreted as the set of all set-theoretic (mathematical) functions from natural numbers to natural numbers (assuming the type Nat gets interpreted as the set of natural numbers).  Programs in the polymorphic typed lambda calculus he considers are then interpreted as elements of those sets.  For example, ![\lambda\ x : \textit{Nat}.\ x](https://s0.wp.com/latex.php?latex=%5Clambda%5C+x+%3A+%5Ctextit%7BNat%7D.%5C+x&bg=1b1b1b&fg=dddddd&s=0&c=20201002) will be interpeted as the set-theoretic identity function on the set of natural numbers.  This part of the paper is not too surprising.  The type structure of the language enables a straightforward set-theoretic semantics for typed lambda calculus, at least until it comes to impredicative polymorphism.  Here Reynolds speculates in the paper that the semantics will work out, but discovers the next year that it does not (a problem shortly corrected by others who use a different background mathematical theory which avoids the problems raised by impredicativity).  But the paper actually starts out just with a simply typed language, where things work out cleanly, and then adds on polymorphism (where things do not).

The second semantics for types interprets them as binary relations on the sets given by the first semantics.  The relations are the ones familiar from the setting of logical relations.  For example, the relation associated with ![\textit{Nat} \to \textit{Nat}](https://s0.wp.com/latex.php?latex=%5Ctextit%7BNat%7D+%5Cto+%5Ctextit%7BNat%7D&bg=1b1b1b&fg=dddddd&s=0&c=20201002) relates two unary operations on the set of natural numbers iff those functions map related inputs to related outputs (related by the relation for Nat, which Reynolds will take to be the identity relation).  So they should map equal numeric inputs to equal numeric outputs.

The part of the paper that was driving me crazy is the Identity Extension Lemma.  This says that if you have a type and you interpret all its free type variables as identity relations (on the sets that the first interpretation assigns to those type variables), then the interpretation of that type will also be the identity relation.  So identity relations are extended by the semantics from type variables to all types.

Now, the vexing question to me was, why are we setting up all this machinery to define a bunch of identity relations?  There is one formalistic answer, which is that when it comes to polymorphism, Reynolds achieves Identity Extension by the expedient (not to say hack) of making the first interpretation of types invoke the second one (i.e., the relational one), to say that the set interpretation of a polymorphic type is the set of set-theoretic functions which satisfy Identity Extension.  Voila, Identity Extension holds now for polymorphic types!

But now the real answer — and I wish Reynolds had given more hints about this, or if he did, that I noticed them better: the point of the paper is not the relational semantics, though this is technically the most interesting part.  Really, we are just trying to define the set-theoretic semantics for polymorphic types, in such a way that all the functions we intend to be extensionally equivalent are soundly mapped down to the exact same mathematical object.  So we want to interpret mergesort and quicksort as the unique set-theoretic list-sorting function.  This is why Identity Extension is so important: it shows we did this correctly!  All the interesting equivalence has gotten squashed down in that first semantics.  Thus, the second semantics doesn’t have anything interesting to add.  But it is there as a specification of what we were trying to achieve.  For it is the description of the extensional equality we are trying to mash down with the first semantics.

The fact that the relational semantics is required by the set interpretation of polymorphism is, to me, a total cop-out.  It means that we only achieved the squashing down we wanted by including that extensional equality in our set interpretations.  So for the difficult part of the matter (i.e., polymorphism), it is as if we just said that the set interpretation of type A is the set of equivalence classes of terms, where the equivalence in question is the one given by the relational semantics.  If our goal was to achieve a set interpretation that satisfied that extensional equivalence (i.e., Identity Extension) but was independent of it, then at this point we failed.

Now, this is just the seminal paper in a pretty technically involved line of research.  It looks, though, in more modern treatments, as if the basic set-up is accepted: two semantics, mutually dependent.  That is clearly flawed, if the goal is as I just described (set interpretations which are independent of but satisfy the relational interpretations).  But perhaps that is not the goal of these more recent works?

If you think I am mistaken in any of the above, please perform your charitable deed of the day and correct me!  I am not an expert, just someone trying to understand…

As a service to other students of this paper, I am providing a short legend ([reynolds-key][1]) of notation for the first bit of it.  I will probably update this after our next reading-group meeting, when another member of the group is planning to add to it.

[1]: https://queuea9.files.wordpress.com/2020/11/reynolds-key.pdf

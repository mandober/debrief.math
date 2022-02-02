---
downloaded:       2021-09-22
author:           
page-url:         https://en.wikibooks.org/wiki/Haskell/The_Curry%E2%80%93Howard_isomorphism
page-title:       Haskell/The Curry–Howard isomorphism - Wikibooks, open books for an open world
article-title:    Haskell/The Curry–Howard isomorphism - Wikibooks, open books for an open world
article-length:   19755
article-created:  {Date-Creation-yyyymmdd}
article-modified: {Date-Revision-yyyymmdd}
desc:             {description}
---
# Haskell/The Curry–Howard isomorphism - Wikibooks, open books for an open world

The Curry–Howard isomorphism is a striking relationship connecting two seemingly unrelated areas of mathematics — type theory and structural logic.
The __Curry–Howard isomorphism__ is a striking relationship connecting two seemingly unrelated areas of mathematics — type theory and structural logic.

## Introduction\[[edit][1] | [edit source][2]\]

The Curry–Howard isomorphism, hereafter referred to as simply CH, tells us that in order to prove any mathematical theorem, all we have to do is construct a certain type which reflects the nature of that theorem, then find a value that has that type. This seems extremely weird at first: what do types have to do with theorems? However, as we shall see, the two are very closely related. A quick note before we begin: for these introductory paragraphs, we ignore the existence of expressions like `error` and `undefined` whose [denotational semantics][3] are ⊥. These have an extremely important role, but we will consider them separately in due time. We also ignore functions that bypass the type system like `unsafeCoerce#`.

We can build incredibly complicated types using Haskell's [higher-order functions][4] feature. We might want to ask the question: given an arbitrary type, under what conditions does there exist a value with that type (we say the type is *inhabited*)? A first guess might be 'all the time', but this quickly breaks down under examples. For example, there is no function with type `a -> b`, because we have no way of turning something of type `a` into something of a completely different type `b` (unless we know in advance which types `a` and `b` are, in which case we're talking about a monomorphic function, such as `ord :: Char -> Int`).

Incredibly, it turns out that a type is only inhabited when it corresponds to a true theorem in mathematical logic. But what is the nature of this correspondence? What does a type like `a -> b` mean in the context of logic?

### A crash course in formal logic\[[edit][5] | [edit source][6]\]

We need some background on formal logic before we can begin to explore its relationship to type theory. This is a *very* brief introduction; for a wider grounding we recommend you consult an introductory textbook on the subject matter.

In everyday language we use a lot of 'If... then...' sentences. For example, 'If the weather is nice today, then we'll walk into town'. These kinds of statements also crop up in mathematics; we can say things like 'If *x* is positive, then it has a (real) square-root'. Formal logic is a way of representing statements which approximate English meanings with a Boolean logic on which we can do computations. We use the A→B sign (read as 'A implies B') to indicate that B is true whenever A is true. For example, our earlier statement could be recast as ' *x* is positive → *x* has a real square-root ', meaning the number's positivity implies the existence of the desired kind of root. We'll often use letters to stand for entire statements, so for example if *W* is the statement 'the weather is nice', and *T* is the statement 'we'll walk into town', then we could say *W* → *T*.

Our definition of P→Q has some flaws. If *Q* is some statement that is always true, no matter what the circumstances — like 'the sun is hot' — then it doesn't matter what *P* is. *P* could even be a false statement, *Q* would still be true if *P* were true, so the implication *P* → *Q* is not considered to be proved wrong. *P* → *Q* is defined to be true whenever *P* is false and whenever *Q* is true. So → doesn't really represent any kind of cause-effect relationship; things like 'the sky is pink → the sun is hot' are defined to be true. There are other logical algebras besides Boolean logic which try to fix these "problems"[\[1\]][7] and we can also construct them in Haskell.

Other things that crop up lots in both everyday language and mathematics are things called conjunctions and disjunctions. The former represent statements involving an 'and', the latter statements involving an 'or'. We could represent the statement 'I will buy this magazine if it's in stock and I have enough money' by the symbolism ![{\displaystyle (M\wedge S)\to B}](https://wikimedia.org/api/rest_v1/media/math/render/svg/af61ed43f4f65d279d7eb92bfd42f71641a0565b), where *M* = 'I have enough money', *S* = 'The magazine is in stock', *B* = 'I will buy the magazine'. Essentially, one can just read the symbol ![{\displaystyle \wedge }](https://wikimedia.org/api/rest_v1/media/math/render/svg/1caa4004cb216ef2930bb12fe805a76870caed94) as 'and'. Similarly, one can read the symbol ![{\displaystyle \vee }](https://wikimedia.org/api/rest_v1/media/math/render/svg/7b76220c6805c9b465d6efbc7686c624f49f3023) as 'or', so that the statement 'I will either walk or get the train to work or both' could be represented as ![{\displaystyle W\vee T}](https://wikimedia.org/api/rest_v1/media/math/render/svg/4b8d496383134f033d7252c782a6127c343db2db), where *W* = 'I will walk to work', and *T* = 'I will get the train to work'.

Using these symbols, and a few more which will be introduced as we go, we can produce arbitrarily complicated symbol strings. There are two classes of these symbol strings: those that represent true statements, often called the __theorems__; and those which represent false statements, called the __nontheorems__. Note that whether a symbol string is a theorem or nontheorem depends on what the letters stand for, so ![{\displaystyle P\vee Q}](https://wikimedia.org/api/rest_v1/media/math/render/svg/57892b87b74754882daffcf850dd8b445b0fc436) is a theorem if, for example, *P* represents the statement 'It is daytime' and *Q* represents the statement 'It is night time' (ignoring exceptions like twilight), but it would be a nontheorem if *P* were 'Trees are blue' and *Q* were 'All birds can fly'. We'll often call a symbol string a __proposition__ if we don't know whether it's a theorem or not.

There are *many* more subtleties to the subject of logic (including the fact that when we say 'If you eat your dinner you'll get dessert' we actually mean 'Only if you eat your dinner will you get dessert'). If this is a subject that interests you, there are many textbooks around that comprehensively cover the subject.

### Propositions are types\[[edit][8] | [edit source][9]\]

So, given a type `a -> b`, what does that mean in terms of symbolistic logic? Handily, it simply means that *a* → *b*. Of course, this only makes sense if `a` and `b` are types which can further be interpreted in our symbolistic logic. This is the essence of CH. Furthermore, as we mentioned before, *a* → *b* is a theorem if and only if `a -> b` is an inhabited type.

Let's see this using one of the simplest of Haskell functions. `const` has the type `a -> b -> a`. Translated into logic, we have that *a* → *b* → *a*. This must be a theorem, as the type `a -> b -> a` is inhabited by the value `const`. Now, another way of expressing *a* → *b* is that 'If we assume *a* is true, then *b* must be true.' So *a* → *b* → *a* means that if we assume *a* is true, then if we further assume that *b* is true, then we can conclude *a*. This is of course a theorem; we assumed *a*, so *a* is true under our assumptions.

### The problem with ⊥\[[edit][10] | [edit source][11]\]

We've mentioned that a type corresponds to a theorem if that type is inhabited. However, in Haskell, every type is inhabited by the value `undefined`. Indeed, more generally, anything with type `forall a. a`, a value with denotational semantics of ⊥, is a problem. ⊥ in type theory corresponds to inconsistency in logic; we can prove any theorem using Haskell types because every type is inhabited. Therefore, Haskell's type system actually corresponds to an inconsistent logic system. However, if we work with a limited subset of Haskell's type system, and in particular disallow polymorphic types, we have a consistent logic system we can do some cool stuff in. Hereafter it is assumed we are working in such a type system.

Now that we have the basics of CH, we can begin to unpack a little more the relationship between types and propositions.

## Logical operations and their equivalents\[[edit][12] | [edit source][13]\]

The essence of symbolic logic is a set of propositions, such as *P* and *Q*, and different ways of combining these propositions such as *Q* → *P* or ![{\displaystyle P\vee Q}](https://wikimedia.org/api/rest_v1/media/math/render/svg/57892b87b74754882daffcf850dd8b445b0fc436). These ways of combining propositions can be thought of as operations on propositions. By CH, propositions correspond to types, so we should have that the CH equivalents of these proposition combinators are type operations, more normally known as type constructors. We've already seen an example of this: the implication operator → in logic corresponds to the type constructor `(->)`. The rest of this section proceeds to explore the rest of the proposition combinators and explain their correspondence.

### Conjunction and Disjunction\[[edit][14] | [edit source][15]\]

In order for ![{\displaystyle A\wedge B}](https://wikimedia.org/api/rest_v1/media/math/render/svg/e86fbe93c98e68dc66cd518c98d5f6a624f5022b) to be a theorem, both *A* and *B* must be theorems. So a proof for ![{\displaystyle A\wedge B}](https://wikimedia.org/api/rest_v1/media/math/render/svg/e86fbe93c98e68dc66cd518c98d5f6a624f5022b) amounts to proving both *A* and *B*. Remember that to prove a proposition *A* we find a value of type `A`, where *A* and `A` are CH correspondents. So in this instance we wish to find a value that contains two sub-values: the first whose type corresponds to *A*, and the second whose type corresponds to *B*. This sounds remarkably like a pair. Indeed, we represent the symbol string ![{\displaystyle A\wedge B}](https://wikimedia.org/api/rest_v1/media/math/render/svg/e86fbe93c98e68dc66cd518c98d5f6a624f5022b) by `(a, b)`, where `a` corresponds to *A* and `b` corresponds to *B*.

Disjunction is opposite to conjunction. In order for ![{\displaystyle A\vee B}](https://wikimedia.org/api/rest_v1/media/math/render/svg/e4039c1a12cca22bb4df619c295c9a6f8be045f9) to be a theorem, either *A* or *B* must be a theorem. Again, we search for a value which contains either a value of type `A` or a value of type `B`. This is `Either`. `Either A B` is the type which corresponds to the proposition ![{\displaystyle A\vee B}](https://wikimedia.org/api/rest_v1/media/math/render/svg/e4039c1a12cca22bb4df619c295c9a6f8be045f9).

### Falsity\[[edit][16] | [edit source][17]\]

It is occasionally useful to represent a false statement in our logic system. By definition, a false statement is one that can't be proven. So we're looking for a type which isn't inhabited. Although none of these types exist in the default libraries (don't get confused with the `()` type, which has precisely one value), we can define one (or for older versions of GHC that does not support Haskell2010, we turn on the `-XEmptyDataDecls` flag):

data Void

The effect of omitting the constructors means that `Void` is an uninhabited type. So the `Void` type corresponds to a nontheorem in our logic. There are a few handy corollaries here:

1.  `(Void, A)` and `(A, Void)` are both uninhabited types for any type `A`, corresponding to the fact that ![{\displaystyle F\wedge A}](https://wikimedia.org/api/rest_v1/media/math/render/svg/d8fa33588b57cac7cdc0b48536dbfd766067e02b) and ![{\displaystyle A\wedge F}](https://wikimedia.org/api/rest_v1/media/math/render/svg/d2440adf33706cc8a2f089b43a3beb20a1f6ea28) are both nontheorems if *F* is a nontheorem.
2.  `Either Void A` and `Either A Void` are essentially the same as `A` for any type `A`, [\[2\]][18] corresponding to the fact that ![{\displaystyle F\vee A}](https://wikimedia.org/api/rest_v1/media/math/render/svg/a07d73b6fd95cf3d9c6ee192e80208bbf2a07ce7) and ![{\displaystyle A\vee F}](https://wikimedia.org/api/rest_v1/media/math/render/svg/79676a8351edb07bd2132e9e4e31e72900509a89), where *F* is a nontheorem, are theorems only if *A* is a theorem.
3.  Any type that corresponds to a nontheorem can be replaced with `Void`. This is because any nontheorem-type must be uninhabited, so replacing it with `Void` everywhere doesn't change anything. `Void` is really equivalent to any nontheorem type[\[3\]][19].
4.  As we remarked in the first section, the implication *P* → *Q* is true if *Q* is true, regardless of the truth value of *P*. So we should be able to find a term with type `Void -> a`. In fact one does exist, but it's somewhat complicated to explain: the answer is the *empty function*. We can define a function `f :: A -> B` as a (probably infinite) set of pairs whose first element is an element of `A` (the *domain*) and second element is `f`'s output on this term, an element of `B` (the *codomain*). For example, the successor function on the naturals is represented as `{(0,1), (1,2), (2,3), ...}`. Note that in order to be a (total and well-defined) function, we must have precisely one pair `(a, f a)` for each term `a` with type `A`.
    
    The empty function, let's call it `empty` is represented in this way by the empty set. But as we must have a pair for each element of the domain, and there no pairs in our representation, the domain type must be empty, i.e. `Void`. What about the range type? `empty` never produces any output, so there are no restrictions placed on the range type. Thus, it is valid to assume that the range type has any type, so we can say `empty :: forall a. Void -> a`. Unfortunately, it's not possible to write this function in Haskell; we'd ideally like to write something like:
    
    empty :: Void -> a
    
    And stop there, but this is illegal Haskell. The closest we can come is the following:
    
    empty :: Void -> a
    empty \_ = undefined
    
    Alternatively:
    
    empty :: Void -> a
    empty = empty
    
    Another reasonable way would be to write (valid in GHC with EmptyCase extension):
    
    empty x = case x of { }
    
    The case statement is perfectly well formed since it handles every possible value of `x`.
    
    Note that this is perfectly safe, since the right-hand side of this function can never be reached (since we have nothing to pass it). So, the conclusion of all this is that `Void -> a` is an inhabited type, just as *P* → *Q* is true if *P* is false.
    

### Negation\[[edit][20] | [edit source][21]\]

The ¬ operation in logic turns theorems into nontheorems and vice versa: if *A* is a theorem then *¬A* is a nontheorem; if *A* is a nontheorem then *¬A* is a theorem. How can we represent this in Haskell? The answer's a sneaky one. We define a type synonym:

type Not a = a -> Void

So for a type `A`, `Not A` is just `A -> Void`. How does this work? Well, if `A` was a theorem-type, then `A -> Void` must be uninhabited: there's no way any function could return any value, because the return type, `Void` has no values (The function has to provide values for all inhabitants of A)! On the other hand, if `A` was a nontheorem, then `A` can be replaced with `Void` as we explored in the last section. Then the function `id :: Void -> Void` is an inhabitant of `Not A`, so `Not A` is a theorem as required (The function doesn't have to provide any values, since there are no inhabitants in its domain. Nevertheless it's a function — with an empty graph).

## Axiomatic logic and the combinatory calculus\[[edit][22] | [edit source][23]\]

So far we've only used some very basic features from Haskell's type system. Indeed, most of the features of logic we've mentioned can be explored using a very basic 'programming language', the combinator calculus. To fully appreciate how closely CH ties together these two areas of mathematics, we need to *axiomatise* both our discussion of formal logic and our discussion of programming languages.

### Axiomatic logic\[[edit][24] | [edit source][25]\]

We start with two axioms about how the → operation should behave (from now on, we assume that → is a right-associative function, i.e. *A* → *B* → *C* means *A* → (*B* → *C*)):

1.  *A* → *B* → *A*
2.  (*A* → *B* → *C*) → (*A* → *B*) → *A* → *C*

The first axiom says that given any two propositions *A* and *B*, if we assume both *A* and *B*, we know that *A* is true. The second says that if *A* implies that *B* implies *C* (or equivalently, if *C* is true whenever *A* and *B* are true), and *A* itself implies *B*, then knowing *A* is true would be enough to conclude that *C* is true. This may seem complicated, but a bit of thought reveals it to be common sense. Imagine we have a collection of boxes of various colours, some with wheels, some with lids, such that all the red boxes with wheels also have lids, and all the red boxes have wheels. Pick one box. Let *A* = 'The box under consideration is red', *B* = 'The box under consideration has wheels', *C* = 'The box under consideration has a lid'. Then the second law tells us that, as *A* → *B* → *C* (all red boxes with wheels also have lids), and *A* → *B* (all red boxes have wheels), then if *A* (if the box is red), then *C* must be true (the box has a lid).

We also allow one *inference law*, called *modus ponens*:

1.  If *A* → *B*, and *A*, then *B*.

This law allows us to create new theorems given old one. It should be fairly obvious; it is essentially the definition of what → means. This small basis provides a simple enough logic system which is expressive enough to cover most of our discussions. Here's a sample proof of the law *A* → *A* in our system:

Firstly, we know the two axioms to be theorems:

-   *A* → *B* → *A*
-   (*A* → *B* → *C*) → (*A* → *B*) → *A* → *C*

You'll notice that the left-hand side of the second axiom looks a bit like the first axiom. The second axiom guarantees that if we know that *A* → *B* → *C*, then we can conclude (*A* → *B*) → *A* → *C*. In this case, if we let *C* be the same proposition as *A*, then we have that if *A* → *B* → *A*, then (*A* → *B*) → *A* → *A*. But we already know *A* → *B* → *A*, that was the first axiom. Therefore, we have that (*A* → *B*) → *A* → *A* is a theorem. If we further let *B* be the proposition *C* → *A*, for some other proposition *C*, then we have that if *A* → *C* → *A*, then *A* → *A*. But, again, we know that *A* → *C* → *A* (it's the first axiom again), so *A* → *A*, as we wanted.

This example demonstrates that given some simple axioms and a simple way to make new theorems from old, we can derive more complicated theorems. It may take a while to get there — here we had several lines of reasoning to prove just that the obvious statement *A* → *A* is a theorem! — but we get there in the end. This kind of formalisation is attractive because we have essentially defined a very simple system, and it is very easy to study how that system works.

### Combinator calculus\[[edit][26] | [edit source][27]\]

The [lambda calculus][28] is a way of defining a simple programming language from a very simple basis. If you haven't already read the chapter that was just linked to, we recommend you read at least the introductory sections on the untyped version of the calculus. Here's a refresher in case you're feeling dusty. A lambda term is one of three things:

There is one reduction law, too, called *beta-reduction*:

As mentioned in the [lambda calculus][29] article, the difficulty comes when trying to pin down the notion of a free occurrence of an identifier. The combinator calculus was invented by the American mathematician Haskell Curry (after whom a certain programming language is named) because of these difficulties. There are many variants on the basic combinator calculus, but we consider one of the simplest here. We start with two so-called __combinators__:

The first function you should recognise as `const`. The second is more complicated, it is the monadic function `ap` in the `((->) e)` monad (which is essentially Reader). These two combinators form a complete basis for the entire lambda calculus. Every lambda calculus program can be written using just these two functions.

## Sample proofs\[[edit][30] | [edit source][31]\]

## Intuitionistic vs classical logic\[[edit][32] | [edit source][33]\]

So far, all of the results we have proved are theorems of intuitionistic logic. Let's see what happens when we try to prove the basic theorem of classical logic, `Not Not A -> A` . Recall that this translates as `((A -> Void) -> Void) -> A` . So, given a function of type `(A -> Void) -> Void` we need a function of type A. Now a function of type `(A -> Void) -> Void` exists precisely if type `A -> Void` is uninhabited, or in other words if type A is inhabited. So we need a function which takes any inhabited type, and returns an element of that type. Although it is simple enough to do this on a computer - we need only find the "simplest" or "first" inhabitant of each type - there is no way to do this using standard lambda-calculus or combinator techniques. So we see that this result cannot be proved using these two techniques, and hence that the underlying logic is intuitionistic rather than classical.

Instead, consider a traditional error handling function which calls `throw` when an error occurs, transferring computation to `catch`. The `throw` function cancels any return value from the original function, so it has type `A -> Void`, where `A` is the type of its arguments. The `catch` function then takes the `throw` function as its argument, and, if the `throw` triggers (i.e. returns a `Void`) will return the argument of the `throw` function. So the type of `catch` is `((A -> Void) -> Void) -> A` . [\[4\]][34]

## Notes

1.  [↑][35] Another way of looking at this is that we're trying to *define* our logical operator → such that it captures our intuition of the "if… then" construct in natural language. So we want statements like for all naturals ![x](https://wikimedia.org/api/rest_v1/media/math/render/svg/87f9e315fd7e2ba406057a97300593c4802b53e4), "![x](https://wikimedia.org/api/rest_v1/media/math/render/svg/87f9e315fd7e2ba406057a97300593c4802b53e4) is even" → "![{\displaystyle x+1}](https://wikimedia.org/api/rest_v1/media/math/render/svg/16df430ed7a23df9b160a5bbd957f306a0c3baa7) is odd" to be true. I.e. that implication must hold when we substitute ![x](https://wikimedia.org/api/rest_v1/media/math/render/svg/87f9e315fd7e2ba406057a97300593c4802b53e4) for any natural including, say, 5. But "5 is even" and "6 is odd" are both false, so we must have that False → False is true. Similarly by considering the statement for all naturals ![{\displaystyle x>3}](https://wikimedia.org/api/rest_v1/media/math/render/svg/ca13c1461fe5c28b6ba92af1e60b99cde4a53648), "![x](https://wikimedia.org/api/rest_v1/media/math/render/svg/87f9e315fd7e2ba406057a97300593c4802b53e4) is prime" → "![{\displaystyle x+1}](https://wikimedia.org/api/rest_v1/media/math/render/svg/16df430ed7a23df9b160a5bbd957f306a0c3baa7) is not prime", we must have that False → True is true. And obviously True → True must be true, and True → False is false. So we have that ![{\displaystyle x\to {}y}](https://wikimedia.org/api/rest_v1/media/math/render/svg/3706f8dfd6b09acb4c8a7de08ffc317e97e2f7a3) unless ![x](https://wikimedia.org/api/rest_v1/media/math/render/svg/87f9e315fd7e2ba406057a97300593c4802b53e4) is true and ![y](https://wikimedia.org/api/rest_v1/media/math/render/svg/b8a6208ec717213d4317e666f1ae872e00620a0d) false.
2.  [↑][36] Technically, the types `Either Void A` and `A` are isomorphic. Seeing as you can't have a value of type `Void`, every value in `Either Void A` must be a `Right`\-tagged value, so the transformation just strips the `Right` constructors.
3.  [↑][37] Again, the technical statement is that `Void` is isomorphic to any type which is a nontheorem.
4.  [↑][38] This argument is taken from Dan Piponi. "Adventures in Classical Land". *The Monad Reader* (6).

[1]: https://en.wikibooks.org/w/index.php?title=Haskell/The_Curry%E2%80%93Howard_isomorphism&veaction=edit&section=1 "Edit section: Introduction"
[2]: https://en.wikibooks.org/w/index.php?title=Haskell/The_Curry%E2%80%93Howard_isomorphism&action=edit&section=1 "Edit section: Introduction"
[3]: https://en.wikibooks.org/wiki/Haskell/Denotational_semantics "Haskell/Denotational semantics"
[4]: https://en.wikibooks.org/wiki/Haskell/Higher-order_functions "Haskell/Higher-order functions"
[5]: https://en.wikibooks.org/w/index.php?title=Haskell/The_Curry%E2%80%93Howard_isomorphism&veaction=edit&section=2 "Edit section: A crash course in formal logic"
[6]: https://en.wikibooks.org/w/index.php?title=Haskell/The_Curry%E2%80%93Howard_isomorphism&action=edit&section=2 "Edit section: A crash course in formal logic"
[7]: https://en.wikibooks.org/wiki/Haskell/The_Curry%E2%80%93Howard_isomorphism#cite_note-1
[8]: https://en.wikibooks.org/w/index.php?title=Haskell/The_Curry%E2%80%93Howard_isomorphism&veaction=edit&section=3 "Edit section: Propositions are types"
[9]: https://en.wikibooks.org/w/index.php?title=Haskell/The_Curry%E2%80%93Howard_isomorphism&action=edit&section=3 "Edit section: Propositions are types"
[10]: https://en.wikibooks.org/w/index.php?title=Haskell/The_Curry%E2%80%93Howard_isomorphism&veaction=edit&section=4 "Edit section: The problem with ⊥"
[11]: https://en.wikibooks.org/w/index.php?title=Haskell/The_Curry%E2%80%93Howard_isomorphism&action=edit&section=4 "Edit section: The problem with ⊥"
[12]: https://en.wikibooks.org/w/index.php?title=Haskell/The_Curry%E2%80%93Howard_isomorphism&veaction=edit&section=5 "Edit section: Logical operations and their equivalents"
[13]: https://en.wikibooks.org/w/index.php?title=Haskell/The_Curry%E2%80%93Howard_isomorphism&action=edit&section=5 "Edit section: Logical operations and their equivalents"
[14]: https://en.wikibooks.org/w/index.php?title=Haskell/The_Curry%E2%80%93Howard_isomorphism&veaction=edit&section=6 "Edit section: Conjunction and Disjunction"
[15]: https://en.wikibooks.org/w/index.php?title=Haskell/The_Curry%E2%80%93Howard_isomorphism&action=edit&section=6 "Edit section: Conjunction and Disjunction"
[16]: https://en.wikibooks.org/w/index.php?title=Haskell/The_Curry%E2%80%93Howard_isomorphism&veaction=edit&section=7 "Edit section: Falsity"
[17]: https://en.wikibooks.org/w/index.php?title=Haskell/The_Curry%E2%80%93Howard_isomorphism&action=edit&section=7 "Edit section: Falsity"
[18]: https://en.wikibooks.org/wiki/Haskell/The_Curry%E2%80%93Howard_isomorphism#cite_note-2
[19]: https://en.wikibooks.org/wiki/Haskell/The_Curry%E2%80%93Howard_isomorphism#cite_note-3
[20]: https://en.wikibooks.org/w/index.php?title=Haskell/The_Curry%E2%80%93Howard_isomorphism&veaction=edit&section=8 "Edit section: Negation"
[21]: https://en.wikibooks.org/w/index.php?title=Haskell/The_Curry%E2%80%93Howard_isomorphism&action=edit&section=8 "Edit section: Negation"
[22]: https://en.wikibooks.org/w/index.php?title=Haskell/The_Curry%E2%80%93Howard_isomorphism&veaction=edit&section=9 "Edit section: Axiomatic logic and the combinatory calculus"
[23]: https://en.wikibooks.org/w/index.php?title=Haskell/The_Curry%E2%80%93Howard_isomorphism&action=edit&section=9 "Edit section: Axiomatic logic and the combinatory calculus"
[24]: https://en.wikibooks.org/w/index.php?title=Haskell/The_Curry%E2%80%93Howard_isomorphism&veaction=edit&section=10 "Edit section: Axiomatic logic"
[25]: https://en.wikibooks.org/w/index.php?title=Haskell/The_Curry%E2%80%93Howard_isomorphism&action=edit&section=10 "Edit section: Axiomatic logic"
[26]: https://en.wikibooks.org/w/index.php?title=Haskell/The_Curry%E2%80%93Howard_isomorphism&veaction=edit&section=11 "Edit section: Combinator calculus"
[27]: https://en.wikibooks.org/w/index.php?title=Haskell/The_Curry%E2%80%93Howard_isomorphism&action=edit&section=11 "Edit section: Combinator calculus"
[28]: https://en.wikibooks.org/wiki/Lambda_Calculus "Lambda Calculus"
[29]: https://en.wikibooks.org/wiki/Lambda_Calculus "Lambda Calculus"
[30]: https://en.wikibooks.org/w/index.php?title=Haskell/The_Curry%E2%80%93Howard_isomorphism&veaction=edit&section=12 "Edit section: Sample proofs"
[31]: https://en.wikibooks.org/w/index.php?title=Haskell/The_Curry%E2%80%93Howard_isomorphism&action=edit&section=12 "Edit section: Sample proofs"
[32]: https://en.wikibooks.org/w/index.php?title=Haskell/The_Curry%E2%80%93Howard_isomorphism&veaction=edit&section=13 "Edit section: Intuitionistic vs classical logic"
[33]: https://en.wikibooks.org/w/index.php?title=Haskell/The_Curry%E2%80%93Howard_isomorphism&action=edit&section=13 "Edit section: Intuitionistic vs classical logic"
[34]: https://en.wikibooks.org/wiki/Haskell/The_Curry%E2%80%93Howard_isomorphism#cite_note-4
[35]: https://en.wikibooks.org/wiki/Haskell/The_Curry%E2%80%93Howard_isomorphism#cite_ref-1 "Jump up"
[36]: https://en.wikibooks.org/wiki/Haskell/The_Curry%E2%80%93Howard_isomorphism#cite_ref-2 "Jump up"
[37]: https://en.wikibooks.org/wiki/Haskell/The_Curry%E2%80%93Howard_isomorphism#cite_ref-3 "Jump up"
[38]: https://en.wikibooks.org/wiki/Haskell/The_Curry%E2%80%93Howard_isomorphism#cite_ref-4 "Jump up"

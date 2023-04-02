# The Curry-Howard Correspondence in Haskell

> The Wayback Machine - https://web.archive.org/web/20080819185521/http://www.thenewsh.com/~newsham/formal/curryhoward/

The Wayback Machine - https://web.archive.org/web/20080819185521/http://www.thenewsh.com/~newsham/formal/curryhoward/

#### Tim Newsham

The [Curry-Howard correspondence](https://web.archive.org/web/20080819185521/http://en.wikipedia.org/wiki/Curry-Howard_isomorphism) is a mapping between logic and type systems. On the one hand you have logic systems with propositions and proofs. On the other hand you have type systems with types and programs (or functions). As it turns out these two very different things have very similar rules. This article will explore the Curry-Howard correspondence by constructing a proof system using the Haskell type system (how appropriate since Haskell is named after Haskell Curry, the "Curry" in "Curry-Howard"). We'll set up the rules of logic using Haskell types and programs. Then we'll use these rules as an abstract interface to perform some logic profs.

Propositions and proofs
-----------------------

Propositions and proofs in logic systems correspond to types and programs (or functions) in programming languages. Each proposition will be represented by a type. Each proof will be represented with a program that has the matching type. The program need not do anything in particular. In fact, there may be many programs with the type we're after (just as there may be many proofs of a proposition). It doesn't matter. We just need to find a program with the given type. The existence of a program for the type will be a proof of the corresponding proposition! (Note: to be correct, the function must be total: it must terminate for all defined arguments. It's easy to cheat by using "undefined" in your proofs. In fact, this is a useful tool when debugging incomplete proofs). \[This is still not 100% accurate, but I don't currently have a full understanding of the details to present here. I will update this as I learn more. For now keep in mind that while the spirit of this discussion is correct, there are important details that are being glossed over.\]

To keep our system nicely abstracted, we're going to use the type "Prop p" to represent all propositions. This will make our code a little more complicated at first, but will pay off later on when we write an alternate implementation with the same interface. Our proposition data type is:

   data Prop p = Prop p

Conjunction
-----------

Conjunction is the logical "and" operator, usually written as "/\\". There are three built-in rules for this operator:

And-Introduction (or And-Injection): This rule says that if we know that propositions "p" and "q" are true, then the proposition "p and q" (written "p /\\ q") is also true. This rule is shown schematically as ![](chrome-extension://cjedbglnccaioiolemnfhjncicchinao/web/20080819185521im_/http://www.thenewsh.com/~newsham/formal/curryhoward/pics/andIntro.jpg). In this diagram the given propositions are shown above the line and the proposition being proven is shown below the line. To the right of the line there's a justification given in parenthesis. This rule will be a building block in building larger proofs involving conjunctions.

And-Elimination is a set of two rules. The first says that if we know "p and q" then we know "p": ![](chrome-extension://cjedbglnccaioiolemnfhjncicchinao/web/20080819185521im_/http://www.thenewsh.com/~newsham/formal/curryhoward/pics/andElim1.jpg). The second says that if we know "p and q" then we know "q": ![](chrome-extension://cjedbglnccaioiolemnfhjncicchinao/web/20080819185521im_/http://www.thenewsh.com/~newsham/formal/curryhoward/pics/andElim2.jpg).

Logical conjunction corresponds to Haskell types that have two constituent values each with their own independant type. The simplest example would be a tuple "(a, b)". Our implementation is a little fancier and slightly more complicated:

   data p :/\\ q = And (Prop p) (Prop q)

The only way to construct an item of type "p :/\\ q" is to use the "And" constructor with two values of type "Prop p" and "Prop q". If we have a value of type "p :/\\ q" then we know that values of type "Prop p" and of type "Prop q" must exist.

With this definition it is fairly straightforward to construct functions that correspond to the three rules for logical conjunction. The first rule, And-Introduction, takes two given propositions. Similarly our proof is a function that takes two propositions as arguments. The conclusion of the And-Introduction rule is a proposition involving the "and" operator. Similarly, the type of the result of our function is a Proposition involving the (:/\\) type:

   andInj :: Prop p -> Prop q -> Prop (p :/\\ q)
   andInj p q = Prop (And p q)

This "proof" is very simple. It just packages up the two given propositions using the "And" constructor.

The implementation of And-Elimination is also very simple. The two variants pull apart a proposition of type (p :/\\ q) and return one of the two enclosed values:

   andElimL :: Prop (p :/\\ q) -> Prop p
   andElimL (Prop (And p q)) = p

   andElimR :: Prop (p :/\\ q) -> Prop q
   andElimR (Prop (And p q)) = q

The whole point of having logic rules is to put them together to prove more interesting theorems. It's not hard to show that the "and" operator is commutative -- that is, you can freely swap the order of the operands. Written more formally, given "p /\\ q" we can prove "q /\\ p". The proof shown schematically looks like this: ![](chrome-extension://cjedbglnccaioiolemnfhjncicchinao/web/20080819185521im_/http://www.thenewsh.com/~newsham/formal/curryhoward/pics/andCommute.jpg)  
This diagram is nothing more than the composition of the diagrams given earlier. On the left hand side it starts with the given "p /\\ q". It uses And-elim2 to conclude "q". On the right hand side it starts with the given "p /\\ q" and uses And-elim1 to conclude "p". Finally And-intro is used on "q" and "p" to conclude "q /\\ p". This simple proof can also be shown (more compactly!) using our Haskell definitions:

   commuteAnd :: Prop (p :/\\ q) -> Prop (q :/\\ p)
   commuteAnd pq = andInj (andElimR pq) (andElimL pq)

the proof starts with a single argument of type "Prop (P :/\\ q)". The term "andElimR pq" results in a value of type "Prop q" and the term "andElimL pq" results in a value of type "Prop p". The "andInj" function then takes these values and returns a value of type "Prop (q :/\\ p)". We could provide more details if we wanted to be clearer:

   commuteAnd :: Prop (p :/\\ q) -> Prop (q :/\\ p)
   commuteAnd pq = andInj q p
     where q :: Prop q
           q = andElimR pq
           p :: Prop p
           p = andElimL pq

Notice that our Haskell proof did not contain any reference to the internal structure of the (:/\\) data type. Having defined and proven our rules "andInj", "andElimR" and "andElimL" we shouldn't ever have to peek into the implementation of the (:/\\) data type again.

Disjunction
-----------

Disjunction is the logical "or" operator, usually written as "\\/". As with conjunction, there are three built-in rules for using disjunction. However, this time there are two introduction rules and one elimination rule. The introduction rules are very simple: If you know "p" then you know "p or q" (it doesn't matter what "q" is in this case) ![](chrome-extension://cjedbglnccaioiolemnfhjncicchinao/web/20080819185521im_/http://www.thenewsh.com/~newsham/formal/curryhoward/pics/orIntro1.jpg). The second is the mirror of this rule; if you know "q" then you know "p or q" (no matter what "p" is) ![](chrome-extension://cjedbglnccaioiolemnfhjncicchinao/web/20080819185521im_/http://www.thenewsh.com/~newsham/formal/curryhoward/pics/orIntro2.jpg).

The rule for Or-Elimination is slightly more complicated. It states that if you know "p or q" and if you can prove "r" from "p" and if you can prove "r" from "q" then you can conclude "r": ![](chrome-extension://cjedbglnccaioiolemnfhjncicchinao/web/20080819185521im_/http://www.thenewsh.com/~newsham/formal/curryhoward/pics/orElim.jpg). This might be a little harder to understand than the other rules so far, but it makes sense. From "p or q" you know that either "p" is true, or "q" is true (maybe both). By proving "r" for both of these cases, we've proven "r". The diagram has some extra book-keeping on it that we haven't seen yet. The superscript "\[i\]" and the brackets around "p" and "q" are used to keep track of assumptions. In this case these marks indicate that "p" and "q" are both assumptions that were introduced by the "or-elim" rule. While this might be obvious in this small diagram, it is a lot harder to keep track of in a larger proof diagram.

Logical disjunction corresponds to Haskell types which can contain a constiuent value of one type or of another type. The prototypical example is the "Either a b" data type. Our implementation is:

   data p :\\/ q = OrL (Prop p) | OrR (Prop q)

Notice that it is possible to construct a value of type "p :\\/ q" using the "OrL" constructor by providing a value of type "Prop p". It is also possible to construct a value of type "p :\\/ q" using the "OrR" constructor by providing a value of type "Prop q". If we have a value of type "p :\\/ q" we know that a value of type "Prop p" or type "Prop q" (or both) must exist.

Providing Haskell implementations for the injection rules is straightforward:

   orInjL :: Prop p -> Prop (p :\\/ q)
   orInjL p = Prop (OrL p)

   orInjR :: Prop q -> Prop (p :\\/ q)
   orInjR q = Prop (OrR q)

Implementing the elimination rule isn't much harder, but deserves more discussion:

   orElim :: Prop (p :\\/ q) -> (Prop p -> Prop r) -> (Prop q -> Prop r) -> Prop r
   orElim (Prop (OrL p)) p2r q2r = p2r p
   orElim (Prop (OrR q)) p2r q2r = q2r q

The most important part of this definition is the type (which corresponds to statement of the or-elim rule). The givens are of type "Prop (p :\\/ q)", "Prop p -> Prop r" and "Prop q -> Prop r". The first is the disjunction we want to eliminate. The next two arguments are functions that take a proposition of one type and result in a proposition of another type. These correspond to proofs. Remember: proof in logic, function in Haskell. The type is saying "if you know p or q and you can give me a proof of r from p and you can give me a proof of r from q, then I can give you a proof of r." And that's what the implementation does. If the disjunction was built with "OrL" and encloses a value of type "p" to get a value of type "r" we just apply the function that converts from "p" to "r". Similarly, if we start with an "OrR" containing a value of type "q", we just apply "q2r" to it to get a value of type "r". In either case we end up with a value of type "r".

Now that we have the rules for using disjunction we can build up larger proofs using these rules. Here is a simple proof that "or" is commutative: ![](chrome-extension://cjedbglnccaioiolemnfhjncicchinao/web/20080819185521im_/http://www.thenewsh.com/~newsham/formal/curryhoward/pics/orCommute.jpg)  
and here is the proof written in Haskell:

   commuteOr :: Prop (p :\\/ q) -> Prop (q :\\/ p)
   commuteOr pORq = orElim pORq (\\p -> orInjR p) (\\q -> orInjL q)

In words this proof analyzes the two cases of "p or q" and proves that if we know "p" then we know "q or p" and if we know "q" then we know "q or p".

Two points are worth noting. First, assumptions are introduced as arguments to embedded functions in the Haskell proof. Second, we did not need to be as careful about marking where assumptions came from. Although it might be confusing to remember where an assumption was introduced in a diagram, its obvious where arguments come from in a function definition.

Implication
-----------

Implication is the "if-then" of logic. It is often written with an arrow: "p -> q" means if "p" is true then "q" is true. This can be read "p implies q", "if p then q" or "q if p". Keep in mind that "p -> q" is a proposition that can be either true or false, just as "p or q" is.

The introduction rule for implication is ![](chrome-extension://cjedbglnccaioiolemnfhjncicchinao/web/20080819185521im_/http://www.thenewsh.com/~newsham/formal/curryhoward/pics/impIntro.jpg). This rule says that if you can prove "q" while assuming "p" then "p -> q" is true. The elimination rule (famously known as "modus ponens") is ![](chrome-extension://cjedbglnccaioiolemnfhjncicchinao/web/20080819185521im_/http://www.thenewsh.com/~newsham/formal/curryhoward/pics/impElim.jpg). This rule says that if you know that "p implies q" and you know that "p" is true then "q" must be true.

Logical implication corresponds to the function type in Haskell. The implication "p -> q" corresponds to a function that takes a value of type "p" and returns a value of type "q" (coincidentally written as "p -> q" in Haskell!). The correspondence to logical implication is obvious: if a value of type "p" exists, then a value of type "q" must exist if we have a function which turns Ps into Qs.

Our Haskell implementation wraps up the function type to give it a convenient type name ":=>". The injection and elimination rules are straightforward:

   data p :=> q = Imp (Prop p -> Prop q)

   impInj :: (Prop p -> Prop q) -> Prop (p :=> q)
   impInj p2q = Prop (Imp p2q)

   impElim :: Prop p -> Prop (p :=> q) -> Prop q
   impElim p (Prop (Imp p2q)) = p2q p

Equivalence
-----------

Equivalence is a combination of two implications. If "p -> q" and "q -> p" then we say that "p" and "q" are equivalent to each other. This is written "p <-> q" or "p == q" and can be read as "p is equivalent to q", "p equals q", "p if and only if q" or "p iff q". The rules for working with equivalence are obvious from this description. Injection states that "p" and "q" are equivalent if "p -> q" and "q -> p": ![](chrome-extension://cjedbglnccaioiolemnfhjncicchinao/web/20080819185521im_/http://www.thenewsh.com/~newsham/formal/curryhoward/pics/equivIntro.jpg). The two elimination rules state that you can pull the equivalence apart to get at the first implication ![](chrome-extension://cjedbglnccaioiolemnfhjncicchinao/web/20080819185521im_/http://www.thenewsh.com/~newsham/formal/curryhoward/pics/equivElim1.jpg) or the second implication ![](chrome-extension://cjedbglnccaioiolemnfhjncicchinao/web/20080819185521im_/http://www.thenewsh.com/~newsham/formal/curryhoward/pics/equivElim2.jpg).

In Haskell implication is nothing more than two implications glued together:

   data p :== q = Equiv (Prop p -> Prop q) (Prop q -> Prop p)

   equivInj :: Prop (p :=> q) -> Prop (q :=> p) -> Prop (p :== q)
   equivInj (Prop (Imp p2q)) (Prop (Imp q2p)) = Prop (Equiv p2q q2p)

   equivElimL :: Prop (p :== q) -> Prop (p :=> q)
   equivElimL (Prop (Equiv p2q q2p)) = Prop (Imp p2q)
   equivElimR :: Prop (p :== q) -> Prop (q :=> p)
   equivElimR (Prop (Equiv p2q q2p)) = Prop (Imp q2p)

### An example: Subsume

Now that we have several tools at our disposal for writing propositions and proofs about them, let's look at a slightly more complicated proof. Here is a proof of a theorem called "subsume" that states that if we know "p -> q" then we can conclude "(p /\\ q) == p": ![](chrome-extension://cjedbglnccaioiolemnfhjncicchinao/web/20080819185521im_/http://www.thenewsh.com/~newsham/formal/curryhoward/pics/subsume.jpg)  
Although this proof is quite a bit larger and more complicated than the ones we've seen earlier, each step is as simple and mechanical as those in the earlier proofs. On the left hand side the proof starts by assuming "p /\\ q". It then uses and-elimination to conclude "q". By imp-injection this means that "p /\\ q -> p". On the right hand side the proof starts by assuming "p". Along with the given "p -> q" this is used to conclude "q". Combining this conclusion with the assumption "p" using and-introduction lead to the conclusion "p /\\ q". Having proved "p /\\ q" from the assumption "p" we can conclude "p -> p /\\ q". Combining the left and right sides using equiv-introduction gives us the desired conclusion that "p /\\ q <-> p".

This same proof written in Haskell looks like this:

   subsume :: forall p q. Prop (p :=> q) -> Prop ((p :/\\ q) :== p)
   subsume pIMPq = equivInj (impInj pq2p) (impInj p2pq)
     where pq2p :: Prop (p :/\\ q) -> Prop p
           pq2p assumePQ = andElimL assumePQ
           p2pq :: Prop p -> Prop (p :/\\ q)
           p2pq assumeP = andInj assumeP q
             where q = impElim assumeP pIMPq

Notice that this proof shows the sub-proof items as separate functions. This is not strictly necessary but helps to keep the proof readable. The types of all of the intermediate functions are also explicitely given. This is not needed, but since the types represent propositions, they provide useful information about the intermediate steps of the proof. It also provides an opportunity for the compiler to identify flaws in the intermediate steps while we're writing the proof since the type checker infers all of the intermediate types and checks them against the declarations as it type checks the function declaration. Of course this proof would also work just fine if it was more terse:

   subsume :: Prop (p :=> q) -> Prop ((p :/\\ q) :== p)
   subsume pIMPq = equivInj (impInj (\\pq -> andElimL pq)) 
                            (impInj (\\p -> andInj p (impElim p pImpq)))

Negation
--------

Logical negation is the familiar concept "not". It's written with a bar symbol, as "not p" and sometimes with a tilde such as "~p". This can be read as "not p" or "p is not true" or "p is false". The rules for working with negation are a little strange. In order to talk about them we first have to introduce the symbols "true" and "false". "True" is the symbol that represents a fact that is always true. "False" is a symbol that is defined to be "~true". Not-introduction ![](chrome-extension://cjedbglnccaioiolemnfhjncicchinao/web/20080819185521im_/http://www.thenewsh.com/~newsham/formal/curryhoward/pics/notIntro.jpg) states that if you can prove "false" while assuming "p", then "not p" is true. This is analogous to equating "~p" to "p -> false" or "if p then false". Not-elimination ![](chrome-extension://cjedbglnccaioiolemnfhjncicchinao/web/20080819185521im_/http://www.thenewsh.com/~newsham/formal/curryhoward/pics/notElim.jpg) states that if you have know "p" and you know "~p" then you have just proven "false".

Implementing "not" in the Haskell type system is based on a slightly different rule than the two already discussed: absurdity. This rule states that if you know "false" then anything is true. It's similar to the expression "when pigs fly." If you say that you'll give someone a million dollars "when pigs fly" you aren't worried about ever having to pay them because you know pigs will never fly. Similarly, we don't care if we say that "p" is true when "false" is true, because we know "false" will never be true!

The negation of "p" is represented in the Haskell type system as a function that takes a value of type "p" and can return a value of any type. If "p" is false, then if we can provide a "p" we can say anything is true:

   data Not p = Not (forall q. (Prop p -> Prop q))

Truth corresponds to any data type that we know exists. We are free to make one up. False is defined as a synonym for "not true". Since it's handy to have around a value of the truth type, we define that as well:

   data TRUTH = TRUTH
   type FALSE = Not TRUTH

   truth :: Prop TRUTH
   truth = Prop TRUTH

Using these definitions it is not hard to construct the "absurdity" rule and use it to construct Not-injection and Not-elimination:

   absurd :: Prop FALSE -> Prop p
   absurd (Prop (Not true2p)) = true2p truth

   notInj :: forall p. (Prop p -> Prop FALSE) -> Prop (Not p)
   notInj p2false = Prop (Not p2any)
     where p2any :: forall q. Prop p -> Prop q
           p2any assumep = absurd (p2false assumep)

   notElim :: Prop p -> Prop (Not p) -> Prop q
   notElim p (Prop (Not np)) = np p

The definition of FALSE contains an embedded function that takes a value of type "Prop TRUTH" and returns a value of "Prop p" for any type "p". The defintion of "absurd" applies "truth" to this function to get a return value of the desired type. Notice that it might not be possible to actually construct such a function, but we only have to do so "when pigs fly!" The definition of not-injection takes a function that can convert a proposition of "p" into a proposition of anything. It uses this function to construct another function that converts a proposition "p" into any proposition. This function is then wrapped up as a "Not" data type. Finally, notElim takes a proposition "p" and "not p" and uses the function embedded in the "Not" datastructure, which can convert a "Prop p" into anything, and uses it to construct a "Prop q". If your head is spinning at this point, you might want to take a break and read over this one more time -- this is a strange and interesting way of thinking about negation.

### An examples: DeMorgan's law

Once we have the negation rules we can use them without having to remember the details of their implementation. Here are two proofs of DeMorgan's famous law. The first proof shows that if "~(p \\/ q)" is true then so is "~p /\\ ~q": ![](chrome-extension://cjedbglnccaioiolemnfhjncicchinao/web/20080819185521im_/http://www.thenewsh.com/~newsham/formal/curryhoward/pics/deMorgan1.jpg)  
In Haskell:

   deMorgan1 :: forall p q. Prop (Not (p :\\/ q)) -> Prop ((Not p) :/\\ (Not q))
   deMorgan1 npORq = andInj (notInj p2false) (notInj q2false)
     where p2false :: Prop p -> Prop FALSE
           p2false assumeP = notElim (orInjL assumeP) npORq
           q2false :: Prop q -> Prop FALSE
           q2false assumeQ = notElim (orInjR assumeQ) npORq

The second proof shows the opposite: if "~p /\\ ~q" is true then so is "~(p \\/ q)":

   deMorgan2 :: forall p q. Prop (Not p :/\\ Not q) -> Prop (Not (p :\\/ q))
   deMorgan2 npORnq = notInj pORq2false
     where pORq2false :: Prop (p :\\/ q) -> Prop FALSE
           pORq2false assumepORq = orElim assumepORq p2false q2false
           p2false :: Prop p -> Prop FALSE
           p2false assumep = notElim assumep (andElimL npORnq)
           q2false :: Prop q -> Prop FALSE
           q2false assumeq = notElim assumeq (andElimR npORnq)

These two proofs could be combined to show an equivalence between "~(p \\/ q)" and "~p /\\ ~q". Can you construct this proof?

Where is the Excluded-Middle?
-----------------------------

There are other familiar rules for dealing with "not" that we have not introduced. One such rule says "not (not p) = p". Another famous rule, known as the law of excluded middle, says "p" is either true or it is false ("p \\/ ~p"). However, these rules are not necessarily true in the Curry-Howard correspondence! The Curry-Howard correspondence relates the Haskell type system to [Intuitionistic logic](https://web.archive.org/web/20080819185521/http://en.wikipedia.org/wiki/Intuitionistic_logic). Just as there are geometries in which Euclid's fifth postulate is not assumed to be true, there are logic systems in which the double-negation rule is not assumed to be true.

But what about when we want to assume that these rules are true? These rules are very handy to have, and are an important part of [Classical Logic](https://web.archive.org/web/20080819185521/http://en.wikipedia.org/wiki/Classical_logic). Luckily we can still use Haskell type system to implement and use these rules. Unfortunately, it gets a little complicated.

Classical logic can be implemented in the Haskell type system if all propositions are represented by functions that take continuations. A [Continuation](https://web.archive.org/web/20080819185521/http://en.wikipedia.org/wiki/Continuations) is a function that says what to do next. Functions that use continuations take a continuation as an argument and instead of returning a value to the caller directly they pass their result to the continuation function. When using a continuation passing style it is not hard to implement non-local control flow like exits, breaks and continues that are familiar in languages like C. I won't go into much more detail because quite frankly continuations scare me and hurt my head.

To implement classical logic in the Haskell type systems we first need continuations. Here is a simple implementation that is roughly equivalent to the one in Control.Monad.Cont:

   data CProp r p = CProp ((p -> r) -> r)
   run :: CProp r p -> (p -> r) -> r
   run (CProp f) k = f k
   propCC :: ((forall q. p -> CProp r q) -> CProp r p) -> CProp r p
   propCC f = CProp (\\k -> run (f (\\a -> CProp (\\k' -> k a))) k)
   instance Monad (CProp r) where
       return p = CProp (\\c -> c p)
       p >>= mkq = CProp (\\c -> run p (\\r -> run (mkq r) c))

The data type "CProp r p" represents a function that generates a result of type "p" and can pass it along to a continuation that consumes it and results in a value of type "r". The "run" function just invokes a "CProp" with some input and a continuation function. The "propCC" function is an implementation of the famous [call-with-current-continuation](https://web.archive.org/web/20080819185521/http://en.wikipedia.org/wiki/Call-with-current-continuation) function. It is a building block for constructing non-local control flow. It behaves in a fashion that is similar to setjmp -- it records the current location of the program and lets you jump back to it at a later point. Finally "CProp r" is defined as a monad so we can use the standard monad combinators to combine them together.

The continuations we defined are a bit general. For the sake of our propositions we don't care what the result type of the continuation will be, so we're free to just pick one and avoid always specifying an extra type argument "r":

   type Prop = CProp ()

With this definition, the types of all of our previously defined rules remain the same. I told you it would pay off to package up our types!

   data p :/\\ q = And (Prop p) (Prop q)
   data p :\\/ q = OrL (Prop p) | OrR (Prop q)
   data p :=> q = Imp (Prop p -> Prop q)
   data p :== q = Equiv (Prop p -> Prop q) (Prop q -> Prop p)
   data Not p = CNot (forall q. (Prop p -> Prop q))
   data TRUTH = TRUTH
   type FALSE = Not TRUTH

The definition of the logic rules is also very similar. The main difference is that we need to use "return" whenever we want to package up a result as a Prop, and we have to use "bind" (>>=) when we want to construct a Prop that uses values returned from other Props. This is a straightforward exercise in monadic programming:

   andInj :: Prop p -> Prop q -> Prop (p :/\\ q)
   andInj p q = return (And p q)
   
   andElimL :: Prop (p :/\\ q) -> Prop p
   andElimL pq = pq >>= \\(And p q) -> p
   andElimR :: Prop (p :/\\ q) -> Prop q
   andElimR pq = pq >>= \\(And p q) -> q
   
   orInjL :: Prop p -> Prop (p :\\/ q)
   orInjL p = return (OrL p)
   orInjR :: Prop q -> Prop (p :\\/ q)
   orInjR q = return (OrR q)
   
   orElim :: Prop (p :\\/ q) -> (Prop p -> Prop s) -> (Prop q -> Prop s) -> Prop s
   orElim pORq p2r q2r = pORq >>= byCases
     where byCases (OrL p) = p2r p
           byCases (OrR q) = q2r q
   
   impInj :: (Prop p -> Prop q) -> Prop (p :=> q)
   impInj p2q = return (Imp p2q)
   
   impElim :: Prop p -> Prop (p :=> q) -> Prop q
   impElim p pIMPq = pIMPq >>= \\(Imp p2q) -> p2q p
   
   equivInj :: Prop (p :=> q) -> Prop (q :=> p) -> Prop (p :== q)
   equivInj pIMPq qIMPp = do
       (Imp p2q) <- pIMPq
       (Imp q2p) <- qIMPp
       return (Equiv p2q q2p)
   
   equivElimL :: Prop (p :== q) -> Prop (p :=> q)
   equivElimL pEQq = pEQq >>= \\(Equiv p2q q2p) -> return (Imp p2q)
   equivElimR :: Prop (p :== q) -> Prop (q :=> p)
   equivElimR pEQq = pEQq >>= \\(Equiv p2q q2p) -> return (Imp q2p)
   
   absurd :: Prop FALSE -> Prop p
   absurd false = false >>= \\(CNot true2p) -> true2p truth
   
   notInj :: forall p. (Prop p -> Prop FALSE) -> Prop (Not p)
   notInj p2false = return (CNot p2any)
     where p2any :: forall q. Prop p -> Prop q
           p2any assumep = absurd (p2false assumep)
   
   notElim :: Prop p -> Prop (Not p) -> Prop q
   notElim p np = np >>= \\(CNot p2any) -> p2any p

Since our types and function names are all the same (modulo the different definition of "Prop") all of our earlier theorems work identically with these new definitions.

So far we haven't accomplished anything other than making our code more complicated. Our goal of course is to define the rules of classical logic. It suffices to prove the law of the excluded middle, and without further ado, here it is:

   exclMiddle :: forall p. Prop (p :\\/ Not p)
   exclMiddle = propCC func1
     where func1 :: (forall q. p :\\/ Not p -> Prop q) -> Prop (p :\\/ Not p)
           -- k  :: forall q. p :\\/ (Not p) -> Prop q
           func1 k = return (OrR (return (CNot func2)))
             where func2 :: Prop p -> Prop q
                   func2 k' = k (OrL k')

If this doesn't make sense to you at first, well, then good! It took me a long time (and help from other people) to write this. Simply put what is going on here is that "propCC" (call-with-current-continuation) is being used to return an "OrR" value that has a "Not" value wrapped up in it. Recall that "Not" contains a function that can be used to convert a value of type "p" into a value of any type. Well, we're cheating here a little. The funtion that we're returning (func2) jumps back to the begining and returns an "OrL" with a value of type "p" if it is ever called! If some other code ever tries to use the function inside of the "Not p" to do anything (obviously passing in a value of type "p" and proving that "p" is true) then the program jumps back in time and undoes the initial return and replaces it with another return! Pretty devious.

Ok, that was very complicated, but as always, once we have defined our rule, we can freely use it without having to worry about how or why it works. Here is a proof of false-elimination ![](chrome-extension://cjedbglnccaioiolemnfhjncicchinao/web/20080819185521im_/http://www.thenewsh.com/~newsham/formal/curryhoward/pics/falseElim.jpg). This theorem, which is sometimes taken as a rule in lieu of the excluded-middle rule, states that if you can prove "false" by assuming "not p" then "p" must be true:

   falseElim :: forall p. (Prop (Not p) -> Prop FALSE) -> Prop p
   falseElim np2false = orElim exclMiddle p2p np2p
     where p2p :: Prop p -> Prop p
           p2p assumep = assumep
           np2p :: Prop (Not p) -> Prop p
           np2p assumenp = absurd (np2false assumenp)

The proof considers the two cases "p" and "~p" that arise from the excluded-middle. If "p" is true then clearly "p" is true. If "p" is not true, then we can prove false using the given, and use the rule of absurdity to prove anything at all, including that "p" is true.

It's also fairly straightforward to show that if "not (not p)" is true then "p" is true using the law of excluded-middle. Here's the proof:

   notNot :: forall p. Prop (Not (Not p)) -> Prop p
   notNot nnp = orElim exclMiddle p2p np2p
     where p2p :: Prop p -> Prop p
           p2p assumep = assumep
           np2p :: Prop (Not p) -> Prop p
           np2p assumenp = notElim assumenp nnp

Logic definitions and theorems
------------------------------

The two logic systems and the theorems proved with them are available as separate files. These files and this tutorial (excluding the images) are all in the public domain and can be used in any manner you see fit.

*   [IntLogic.hs](chrome-extension://cjedbglnccaioiolemnfhjncicchinao/IntLogic.hs) - The definitions for Intuitionistic logic using Haskell types.
*   [IntTheorems.hs](chrome-extension://cjedbglnccaioiolemnfhjncicchinao/IntTheorems.hs) - Theorems proven using IntLogic.hs.
*   [ClassLogic.hs](chrome-extension://cjedbglnccaioiolemnfhjncicchinao/ClassLogic.hs) - The definitions for Classical logic using Haskell types.
*   [ClassTheorems.hs](chrome-extension://cjedbglnccaioiolemnfhjncicchinao/ClassTheorems.hs) - Theorems proven using Classogic.hs.
*   [HaskRoad.hs](chrome-extension://cjedbglnccaioiolemnfhjncicchinao/HaskRoad.hs) - Some more theorems taken from exercises and examples in [The Haskell Road to Logic, Maths and Programming](https://web.archive.org/web/20080819185521/http://homepages.cwi.nl/~jve/HR/).

* * *

Acknowledgements and further reading.
-------------------------------------

The logic diagrams and some of the proofs are taken from:

*   [Using Z - Specification, Refinement, and Proof](https://web.archive.org/web/20080819185521/http://www.usingz.com/text/zedbook.pdf) by Jim Woodcock. This book is about the Z-notation, a specification language. It has a very approachable introduction to predicate calculus, set theory and several other interesting subjects. See [the website](https://web.archive.org/web/20080819185521/http://www.usingz.com/) for more information.

If you found this tutorial interesting you should check out the following:

*   [Curry-Howard-Lambek correspondence](https://web.archive.org/web/20080819185521/http://haskell.org/haskellwiki/Curry-Howard-Lambek_correspondence) on the haskell.org wiki
*   [Value recursion in the continuation monad](https://web.archive.org/web/20080819185521/http://www.cse.ogi.edu/~magnus/mdo-callcc-slides.pdf) by Magnus Carlsson. A slide-deck on continuations, with a proof of the law of the excluded middle
*   Djinn is a theorem prover in Haskell. If you give it a type (proposition) it will return a function (proof) that matches that type. You can get djinn with darcs: **darcs get http://darcs.augustsson.net/Darcs/Djinn**. Djinn is also supported by [lambdabot](https://web.archive.org/web/20080819185521/http://www.cse.unsw.edu.au/~dons/lambdabot.html). Log in to irc.freenode.net and **/msg lambdabot ?djinn a -> a** for example.

I would like to thank #haskell, and ddarius in particular for helping me understand how to implement the law of the excluded middle and answering many questions I had while working through the code in this tutorial.

I would also like to thank Roberto Zunino for helping me with a type error in my propCC definition.

Many thanks to all the authors who have made math, logic and Haskell books, papers, slides and talks available for free to everyone on the internet. Without this wealth of information I would not have learned any of the concepts in this tutorial.


[Source](https://web.archive.org/web/20080819185521/http://www.thenewsh.com/~newsham/formal/curryhoward/)
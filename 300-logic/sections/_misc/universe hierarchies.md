---
downloaded:       2021-09-21
author:           
page-url:         https://pigworker.wordpress.com/2015/01/09/universe-hierarchies/
page-title:       universe hierarchies | pigworker in a space
article-title:    universe hierarchies
article-length:   12835
article-created:  {Date-Creation-yyyymmdd}
article-modified: {Date-Revision-yyyymmdd}
desc:             Back in 2011, at the Hotel Erica, Berg en Dal, I gave this talk about cumulative hierarchies of universes in type theory. It was a first attempt at simplifying their treatment. But what's it all about, anyway? In many ways, cumulative hierarchies of universes are the motivation for type theories in the first place. Bertrand…
---
# universe hierarchies | pigworker in a space

Back in 2011, at the Hotel Erica, Berg en Dal, I gave this talk about cumulative hierarchies of universes in type theory. It was a first attempt at simplifying their treatment. But what’s it …
Back in 2011, at the Hotel Erica, Berg en Dal, I gave [this talk][1] about cumulative hierarchies of universes in type theory. It was a first attempt at simplifying their treatment. But what’s it all about, anyway?

In many ways, cumulative hierarchies of universes are the motivation for type theories in the first place. Bertrand Russell, having delivered the troublesome ‘set of all sets which don’t contain themselves’ paradox, sought to fix the problem by classifying sets into layers. Type 0 sets are boring ordinary sets which are defined without quantifying over any universal set. Type 1 sets include all the type 0 sets, but also the set of all type 0 sets and those which quantify over it. Type 2 sets yadayada. The paradox fails because the problematic set cannot belong to the type of sets that it talks about.

Per Martin-Löf’s 1971 type theory had one sort, Type, and took Type : Type. Jean-Yves Girard showed this theory inconsistent by translating a non-normalising term from his own inconsistent System U, which had two layers, both impredicative (admitting universal quantification over anything). Various systems of layering have been introduced to fix this problem, juggling power, flexibility and complexity. The basis for what we tend to use today is Zhaohui Luo’s Extended Calculus of Constructions, which has one impredicative layer, Prop, at the bottom (but can it really be the bottom if it’s impredicative?) and a sequence of predicative layers, Type\_0, Type\_1, and so ad infinitum. The rules make

  Prop : Type\_0 : Type\_1 : ...

but also

  Prop ≤ Type\_0 ≤ Type\_1 : ...

The impredicativity of Prop and predicativity of Type\_n is clear from the rules for forming function types

    G, x : A |- P : Prop             G |- A : Type\_n     G, x : A |- Type\_n
  ----------------------------     ------------------------------------------
    G |- (x : A) -> P : Prop         G |- (x : A) -> B : Type\_n

So you can form propositions by quantifying over anything, allowing second-order definitions of propositional connectives, e.g. the following are in Prop if P and Q are

  P /\\ Q  =  (R : Prop) -> (P -> Q -> R) -> R
  P \\/ Q  =  (R : Prop) -> (P -> R) -> (Q -> R) -> R

but the domain and range of a function type must exist at the same level as the function type itself.

The ≤ relation is a subtyping relation, known as ‘cumulativity’ and it’s used to extend the conversion rule with a kind of subsumption.

    G |- s : S     G |- T : Type\_n     S ≤ T
  -----------------------------------------------
    G |- s : T

Cumulativity is thus a preorder which includes conversion and level inclusion. Luo also closes cumulativity equi-co-variantly for functions.

    S = S'     T ≤ T'
  -----------------------------------
    (x : S) -> T  ≤  (x : S') -> T'

He does this not because anything goes horribly wrong if you treat function types as contravariant in their domain, but to ensure that ≤ can be modelled by inclusion in a set-theoretic semantics. If you see functions as relations — subsets of input-output pairs — then growing the notional codomain keeps functions the same, but shrinking the domain requires throwing pairs out of the function as inputs cease to be available.

Formally, universe levels allow us to police paradox, but informally, if we have to write universe levels all over the place, that’s a nuisance. Many systems (notably not Agda) allow us to write Type (or Set, or whatever it’s called) and hope. There are lots of ways to interpret such a thing. [Bob Harper and Randy Pollack][2] allow “anonymous universes”, where we read each usage of Type as meaning Type\_n for some n which we couldn’t be bothered to write: it is not difficult to collect all the constraints on such n’s and ensure a solution exists. It’s slightly unpleasant to have programs which are piecewise accepted although collectively damned, but at least it’s clear what’s going on. And why it’s not enough. Bob and Randy note that we might write

  id {X : Type} (x : X) : X
  id x = x

(where the curly braces indicate an argument to be kept hidden) but if we treat that Type as fixed for all uses of the definition, then

  id id

is an error. The type (X : Type\_n) -> X -> X lives at Type\_(n+1) and above and so cannot instantiate X : Type\_n. The trouble is that we have said *some* layer has a polymorphic identity function, when we meant to say that *every* layer has a polymorphic identity function. The fix is to treat each usage of a definition as if its anonymous Type occurrences are fresh: the two ids get different Types, and we learn that the first must be bigger than the second.

We get the same situation with datatypes. I can write

  data List (X : Type) : Type  :=  nil  |  cons (x : X) (xs : List X)

Let’s say that X : Type\_m and List X : Type\_l. Because List X can store elements of X, we need m ≤ l. If I write cons Nat nil, where Nat : Type\_n, then we have Type\_n instantiating X, so n < m ≤ l, which might be ok. But if I write cons (List Nat) nil, the game is up: I now have l < m ≤ l. Just as every level is closed under the formation of function types, so I want every level to be closed under the formation of list types. Ye olde Lego system treated datatypes as *declared* rather than defined, and thus did not extend anonymous Type generativity to them. These days, Coq does something sensible (i.e., generativity in more places) to allow cons (List Nat) nil, but I’m not entirely sure what: I think [this][3] is the relevant document, and it seems to suggest that inductive types are treated as a form of definition.

Agda does something entirely different. Ulf Norell once told me that he’d tried implementing the full Harper-Pollack story, but that it had proven computationally too expensive. (Matthieu Sozeau has implemented Harper-Pollack in a version of Coq: I get the impression from him that it is also quite compute-intensive, but that these days the engines can take it.) Agda removes cumulativity in favour of explicit universe polymorphism. Lack of cumulativity means that Set0 : Set1, but Set0 /: Set2. The level of a function type is the maximum of its domain and codomain levels, so Set0 -> Set0 : Set1, Set1 -> Set0 : Set2, etc. The identity function is

id : {l : Level}{X : Set l} -> X -> X
id x = x

and you get anonymous Type generativity by explicitly quantifying over the level variables involved. Lack of cumulativity is a nuisance: if you are working polymorphically over some X : Set0, you do not get X : Set1 — instead, you must wrap X in gratuitous record type. Levels are just that bit more explicit, and uses of ‘max’ are hard to avoid.

What would I do? I’d think about the Central Bank of Ireland, a magnificent work of performance architecture by the late Sam Stephenson. The building was constructed around a pair of reinforced concrete lift shafts. Working at ground level, they built one floor of the building, and then they winched it up to the top of the lift shafts and pinned it into place. The building appeared to be growing downward from the Dublin sky. At each step, they did the construction at the lowest level possible, then shifted it to where they needed it.

What do we need? For starters, we need some notion of level, equipped with a relation < so we can say

         i < j
  --------------------
    Type\_j :> Type\_i

If < is well founded (i.e., call a level ‘accessible’, inductively, if every level below it is accessible; the hierarchy is well founded if all levels are accessible), we should be able to build a model. Working bidirectionally, we should just be able to close levels under constructions like function type. We need antisymmetry: i < j contradicts j < i. We do not need distinct levels to be comparable with <

    Type\_i :> S     x : S |- Type\_i :> T
  ----------------------------------------
    Type\_i :> (x : S) -> T

We then need a partial order from which we generate the cumulativity relation (for my taste, treating function types contravariantly in the input and covariantly in the output). To be compatible, < must imply ≤, but it need not be the case that i ≤ j for distinct i and j implies i < j. A construction which relies on i ≤ j but not i < j makes use of cumulativity but not membership, and can thus be remapped to a setting where i and j merge or to a setting where they separate.

A specific use case might be in the formalization of category theory, where we might want to say that objects tend to be at least as large as arrows without enforcing whether or not that inequality is strict. Types-and-functions has large objects and small arrows. Functors-and-natural-transformations has large objects and large arrows. (I'm grateful to Paolo Capriotti for that example.)

I'm very happy to be explicit about whether things are ‘large’ or ‘small’, provided I can shift constructions to other settings which respect the constraints upon which I rely. That's to say, I would prefer not to have anonymous Type. I'd like to be locally explicit about universe levels, so that the level constraints the typechecker encounters contain no unknown quantities. But then I'd like to winch constructions into any level system which is compatible with the one they come from. The simplest version of this story just amounts to marking each usage of a definition with its remapping; we engineer the syntax of remappings so that trivial embeddings are marked by the absence of a more explicit shift. However, we might be able to do better than that.

For one thing, there will be situations when the typechecking discipline makes it obvious which shift is happening. Just as the level at which you check a function type is the level at which you check its domain and codomain, so we might like to be clear that the level at which we check List X is the level at which we check X. We should be able to define things which play the role of type constructors and are subject to type checking, rather than type synthesis. We may thus specify how the levels used in the arguments and in the definiens relate to the level at which the type is being checked. Partial applications of these type constructors typecheck exactly when their eta-long forms do. So, when we write

  data List (X : Type) : Type  ::=  nil  |  cons (x : X) (xs : List X)

we’re really treating Type as a variable standing for the universe at which we’re checking list type formation. Meanwhile, if our local hierarchy has a successor structure, we might write.

  data Desc : Suc Type  ::=  pi (S : Type) (T : S -> Desc)  |  ...

to indicate that such descriptions of types always form a relatively large type.

For another thing, there are situations in which there’s always a level that will do and it doesn’t matter what it is. Let’s revisit the identity function

  id {X : Type} (x : X) : X
  id x = x

Whatever universe X inhabits, we can always shift id to it. Similarly, if we define composition

  {A : Type} {B (a : A) : Type} {C (a : A) (b : B a) : Type}
  (f {a : A} (b : B a) : C a b) . (g (a : A) : B a)  :  (a : A) -> C a (g a)
  f . g = \\ x -> f (g a)

then that Type could be anything. If our local universe hierarchy always has least upper bounds, the relevant A, B and C will always tell us which Type to choose. I’m stumbling towards the intuition that here, the usage sites of A, B and C see them as classifiers, rather than the classified. We never need them to be small, just large enough. One clue is that the constructions of id and . can happen in the singleton hierarchy (always assuming that their types don’t themselves need to have types).

And that brings me to another thought. In smash-the-syntactic-phase-distinction dependent type theory land, we sometimes forget to distinguish the twin roles of types: being valid classifiers and being members of some universe. When we declare a thing, we need to check that its given type is a valid classifier, and we tend not to say which level that type belongs to. We often neglect to consider systems where there are types which can classify but not be classified, so that ‘type’ means ‘type at some level’. If we’re interested in building a powerful hierarchy in which to construct everything, it makes sense to have skyhooks all the way up. But if we’re in the business of winching constructions to wherever we need them, then the weaker the system we start from, the more systems we can target.

So I’m certainly not saying I have a fully formed proposal all worked out and ready to go. What I am saying is that the current implementations of cumulative hierarchies complicate the construction of things in order to facilite a diversity of ways in which they can be used. Sam Stephenson showed us that we could build all the floors without leaving the ground. Yet again, it’s that key lesson which I learned from James McKinna: never resort to polymorphism when initiality will do.

[1]: https://personal.cis.strath.ac.uk/conor.mcbride/Crude.pdf "crude but effective"
[2]: http://homepages.inf.ed.ac.uk/rpollack/export/universes_TCS.ps.gz "H-P"
[3]: http://pauillac.inria.fr/~herbelin/articles/univalgcci.pdf "Hugo's story"

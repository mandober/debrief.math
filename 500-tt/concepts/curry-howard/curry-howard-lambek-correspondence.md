# Curry-Howard-Lambek correspondence - HaskellWiki

> The Curry-Howard-Lambek correspondance is a three way isomorphism between types (in programming languages), propositions (in logic) and objects of a Cartesian closed category. Interestingly, the isomorphism maps programs (functions in Haskell) to (constructive) proofs in logic (and vice versa).

The **Curry-Howard-Lambek correspondance** is a three way isomorphism between types (in programming languages), propositions (in logic) and objects of a Cartesian closed [category](chrome-extension://cjedbglnccaioiolemnfhjncicchinao/Category_theory "Category theory"). Interestingly, the isomorphism maps programs (functions in Haskell) to (constructive) proofs in logic (and _vice versa_).

Life, the Universe and Everything
---------------------------------

As is well established by now,

theAnswer :: Integer
theAnswer \= 42

The logical interpretation of the program is that the type `Integer` is inhabited (by the value `42`), so the existence of this program _proves_ the proposition `Integer` (a type without any value is the "bottom" type, a proposition with no proof).

Inference
---------

A (non-trivial) Haskell function maps a value (of type `a`, say) to another value (of type `b`), therefore, _given_ a value of type `a` (a proof of `a`), it _constructs_ a value of type `b` (so the proof is _transformed_ into a proof of `b`)! So `b` is inhabited if `a` is, and a proof of `a -> b` is established (hence the notation, in case you were wondering).

representation :: Bool \-> Integer
representation False \= 0
representation True \= 1

says, for example, if `Boolean` is inhabited, so is `Integer` (well, the point here is demonstration, not discovery).

Connectives
-----------

Of course, atomic propositions contribute little towards knowledge, and the Haskell type system incorporates the logical connectives ![\and](chrome-extension://cjedbglnccaioiolemnfhjncicchinao/wikiupload/math/9/c/a/9cae4437756a15b8e44ec23e07fb1f65.png) and ![\or](chrome-extension://cjedbglnccaioiolemnfhjncicchinao/wikiupload/math/5/a/d/5addb134385e47a2efa484f6306e75a1.png), though heavily disguised. Haskell handles ![\or](chrome-extension://cjedbglnccaioiolemnfhjncicchinao/wikiupload/math/5/a/d/5addb134385e47a2efa484f6306e75a1.png) conjuction in the manner described by Intuitionistic Logic. When a program has type ![A \or B](chrome-extension://cjedbglnccaioiolemnfhjncicchinao/wikiupload/math/b/c/3/bc3bb0c995cba32ea6701e709ff7efe5.png), the value returned itself indicates which one. The algebraic data types in Haskell has a tag on each alternative, the constructor, to indicate the injections:

data Message a \= OK a | Warning a | Error a

p2pShare :: Integer \-> Message String
p2pShare n | n \== 0 \= Warning "Share! Freeloading hurts your peers."
           | n < 0 \= Error "You cannot possibly share a negative number of files!"
           | n \> 0 \= OK ("You are sharing " ++ show n ++ " files.")

So any one of `OK String`, `Warning String` or `Error String` proves the proposition `Message String`, leaving out any two constructors would not invalidate the program. At the same time, a proof of `Message String` can be pattern matched against the constructors to see which one it proves. On the other hand, to prove `String` is inhabited from the proposition `Message String`, it has to be proven that you can prove `String` from any of the alternatives...

show :: Message String \-> String
show (OK s) \= s
show (Warning s) \= "Warning: " ++ s
show (Error s) \= "ERROR! " ++ s

The ![\and](chrome-extension://cjedbglnccaioiolemnfhjncicchinao/wikiupload/math/9/c/a/9cae4437756a15b8e44ec23e07fb1f65.png) conjuction is handled via an isomorphism in Closed Cartesian Categories in general (Haskell types belong to this category): ![\mathrm{Hom}(X\times Y,Z) \cong \mathrm{Hom}(X,Z^Y)](chrome-extension://cjedbglnccaioiolemnfhjncicchinao/wikiupload/math/5/2/c/52cab8191cc7aa52341690ede4617b9f.png). That is, instead of a function from ![X \times Y](chrome-extension://cjedbglnccaioiolemnfhjncicchinao/wikiupload/math/7/2/9/72993a42be92952dd51584341f7c56a8.png) to ![Z](chrome-extension://cjedbglnccaioiolemnfhjncicchinao/wikiupload/math/2/1/c/21c2e59531c8710156d34a3c30ac81d5.png), we can have a function that takes an argument of type ![X](chrome-extension://cjedbglnccaioiolemnfhjncicchinao/wikiupload/math/0/2/1/02129bb861061d1a052c592e2dc6b383.png) and returns another function of type ![Y \rightarrow Z](chrome-extension://cjedbglnccaioiolemnfhjncicchinao/wikiupload/math/1/9/9/1997d66dc653420d710e993dd03d828c.png), that is, a function that takes ![Y](chrome-extension://cjedbglnccaioiolemnfhjncicchinao/wikiupload/math/5/7/c/57cec4137b614c87cb4e24a3d003a3e0.png) to give (finally) a result of type ![Z](chrome-extension://cjedbglnccaioiolemnfhjncicchinao/wikiupload/math/2/1/c/21c2e59531c8710156d34a3c30ac81d5.png): this technique is (known as currying) logically means ![A \and B \rightarrow C \iff A \rightarrow (B \rightarrow C)](chrome-extension://cjedbglnccaioiolemnfhjncicchinao/wikiupload/math/9/4/4/944ca6e5aca7411406542c8d1c32dacc.png).

_(insert quasi-funny example here)_

So in Haskell, currying takes care of the ![\and](chrome-extension://cjedbglnccaioiolemnfhjncicchinao/wikiupload/math/9/c/a/9cae4437756a15b8e44ec23e07fb1f65.png) connective. Logically, a proof of ![A \and B](chrome-extension://cjedbglnccaioiolemnfhjncicchinao/wikiupload/math/d/c/c/dcc5adb397904e74d55243892fe80340.png) is a pair ![(a, b)](chrome-extension://cjedbglnccaioiolemnfhjncicchinao/wikiupload/math/2/d/0/2d05e1f15387f87456155cd96cc06235.png) of proofs of the propositions. In Haskell, to have the final ![C](chrome-extension://cjedbglnccaioiolemnfhjncicchinao/wikiupload/math/0/d/6/0d61f8370cad1d412f80b84d143e1257.png) value, values of both ![A](chrome-extension://cjedbglnccaioiolemnfhjncicchinao/wikiupload/math/7/f/c/7fc56270e7a70fa81a5935b72eacbe29.png) and ![B](chrome-extension://cjedbglnccaioiolemnfhjncicchinao/wikiupload/math/9/d/5/9d5ed678fe57bcca610140957afab571.png) have to be supplied (in turn) to the (curried) function.

Theorems for free!
------------------

Things get interesting when polymorphism comes in. The composition operator in Haskell proves a very simple theorem.

(.) :: (b \-> c) \-> (a \-> b) \-> (a \-> c)
(.) f g x \= f (g x)

The type is, actually, `forall a b c. (b -> c) -> (a -> b) -> (a -> c)`, to be a bit verbose, which says, logically speaking, for all propositions `a, b` and `c`, if from `a`, `b` can be proven, and if from `b`, `c` can be proven, then from `a`, `c` can be proven (the program says how to go about proving: just compose the given proofs!)

Negation
--------

Of course, there's not much you can do with just truth. `forall b. a -> b` says that given `a`, we can infer anything. Therefore we will take `forall b. a -> b` as meaning `not a`. Given this, we can prove several more of the axioms of logic.

type Not x \= (forall a. x \-> a)

doubleNegation :: x \-> Not (Not x)
doubleNegation k pr \= pr k

contraPositive :: (a \-> b) \-> (Not b \-> Not a)
contraPositive fun denyb showa \= denyb (fun showa)

deMorganI :: (Not a, Not b) \-> Not (Either a b)
deMorganI (na, \_) (Left a) \= na a
deMorganI (\_, nb) (Right b) \= nb b

deMorganII :: Either (Not a) (Not b) \-> Not (a,b)
deMorganII (Left na) (a, \_) \= na a
deMorganII (Right nb) (\_, b) \= nb b

Type classes
------------

A type class in Haskell is a proposition _about_ a [type](chrome-extension://cjedbglnccaioiolemnfhjncicchinao/Type "Type").

class Eq a where
    (\==) :: a \-> a \-> Bool
    (/=) :: a \-> a \-> Bool

means, logically, there is a type `a` for which the type `a -> a -> Bool` is inhabited, or, from `a` it can be proved that `a -> a -> Bool` (the class promises two different proofs for this, having names `==` and `/=`). This proposition is of existential nature (not to be confused with [existential type](chrome-extension://cjedbglnccaioiolemnfhjncicchinao/Existential_type "Existential type")). A proof for this proposition (that there is a type that conforms to the specification) is (obviously) a set of proofs of the advertised proposition (an implementation), by an `instance` declaration:

instance Eq Bool where
    True  \== True  \= True
    False \== False \= True
    \_     \== \_     \= False

(/=) a b \= not (a \== b)

A not-so-efficient sort implementation would be:

sort \[\] \= \[\]
sort (x : xs) \= sort lower ++ \[x\] ++ sort higher
                     where (lower,higher) \= partition (< x) xs

Haskell infers its type to be `forall a. (Ord a) => [a] -> [a]`. It means, if a type `a` satisfies the proposition about propositions `Ord` (that is, has an ordering defined, as is necessary for comparison), then `sort` is a proof of `[a] -> [a]`. For this to work, somewhere, it should be proved (that is, the comparison functions defined) that `Ord a` is true.

Multi-parameter type classes
----------------------------

Haskell makes frequent use of multiparameter type classes. Type classes constitute a Prolog-like logic language, and multiparameter type classes define a relation between types.

### [Functional dependencies](chrome-extension://cjedbglnccaioiolemnfhjncicchinao/Functional_dependencies "Functional dependencies")

These type level functions are set-theoretic. That is, `class TypeClass a b | a -> b` defines a relation between types `a` and `b`, and requires that there would not be different instances of `TypeClass a b` and `TypeClass a c` for different `b` and `c`, so that, essentially, `b` can be inferred as soon as `a` is known. This is precisely functions as relations as prescribed by set theory.

Indexed types
-------------

_(please someone complete this, should be quite interesting, I have no idea what it should look like logically)_


[Source](https://wiki.haskell.org/Curry-Howard-Lambek_correspondence)
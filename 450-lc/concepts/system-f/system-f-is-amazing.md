# System F

http://rubrication.blogspot.com/2010/05/system-f-is-amazing.html

System F has a complicated enough typing system to be interesting, without having the full insanity of dependent types. Types like sums, products and recursive types can be encoded directly in System F.

System F allows taking types as arguments as well as terms.

The basic idea is that we can apply a function like   
`(Λ X . λ f : X → X, x : X . f x)`    
to types and terms and evaluate it    
in a way analogous to the λ-Calculus:    
`(Λ X . λ f : X → X, x : X . f x) [T] g t ⇒ g t`

```hs
-- term in System F: typing is merged with terms
h : Λ X . λ f : X → X, x : X . f x

-- similar term in Haskell where the type is given separatly
h :: (a -> a) -> a -> a
h = λ f x -> f x  -- or:
h f x = f x       -- moving the args to the lhs
```

In fact, In Haskell this function has the explicit type below, meaning the first arg is actually a type, even though it is not given explicitly since it can be inferred from the corresponding term.

```hs
h :: forall a. (a -> a) -> a -> a
h f x = f x

-- passing in the type (Nat) explicitly partially
-- applies that type, specializing the function
h′ = h @Nat
```

---

## System F is Amazing
By Rubrication, 2010

I've been working with System F quite a bit lately, as it has a complicated enough typing system to be interesting, without having the full insanity of dependent types.

I've been working with System F including sums products and recursive types. However, all of these can actually be encoded directly in System F. At first I thought this was merely a curiosity. It turns out however that for recursive types, the built in variety has some serious advantages.

System F allows you to take types as arguments as well as terms. From this system you can weave together an impressive array of very expressive types.

First I'll define a few of these, and then I'll further describe what I find really fascinating.

The basic idea is that we can apply a function such as 

`(ΛX. λf : X → X, x : X. f x)`


to some types and terms and we evaluate in a way analogous to the λ-calculus

`(ΛX. λf : X → X, x : X. f x) [T] g t ⇒ g t`

Now lets look at how we can spin some basic datatypes directly from such a simple calculus.

`∀X. X`

This is the type 0.

We can think of it as an encoding of False. It is a type which has no inhabitants. If we try to make one, we find we have no way to return a term of an arbitrary type X. Try filling in the question mark: Λ X. ?

0 → 0

This is the type 1. We can think of it as representing True. It has one inhabitant (that is, all terms that fill this type normalise to the same expression). It's fairly obvious how to write this one:

λ x:0. x

Now we'll move on to some standard language features in functional programming languages:

∀ X. (A→B→X) → X

This is the type of pairs (A,B). For any two types, A and B we can produce a pairing. The inhabitants of this are a bit more interesting:

pair :: ∀ A B. A→B→(A,B)
pair = Λ A B. λ a: A, b : B. Λ X. λ p : A→B→X. p x y

fst :: ∀ A B. (A,B)→A
fst = Λ A B. λ p : ∀ X. (A→B→X)→X . p [A] (λ x : A, y : B.x)

snd :: ∀ A B. (A,B)→B
snd = Λ A B. λ p : ∀ X. (A→B→X)→X . p [B] (λ x : A, y : B.y)

The constructors and destructors just fall out naturally. You hardly have to think at all about what to produce, just follow the type discipline. This is part of the beauty of parametricity.

∀ X. (A→X)→(B→X)→X

This is the type of sums A+B. If you look closely, you'll see that there is a pattern developing. Constructors for a datatype have the form (K1→...→X). See if the pattern is more obvious from the code below.

inl :: ∀ A B . A→A+B
inl = Λ A B . λ a:A. Λ X . λ left : A→X, right B→X. left a

inr :: ∀ A B . B→A+B
inr = Λ A B . λ b:B. Λ X . λ left : A→X, right B→X. right b

case :: ∀ A B C. A+B→(A→C)→(B→C)→C
case = Λ A B C. 
              λ c : ∀ X. (A→X)→(B→X)→X.
                λ f: A→C, g:B→C
                        c [C] f g

If you look closely at the way case was defined, you'll see that we didn't actually do anything. It turns out that inhabitants of the data act as their own case selector. If you try writing down Bool:

∀ X. X→X→X

You'll find a similar thing is true for if-then-else, which turns out to be superfluous. This is great! So we can get "case" for free from the data type. It turns out this works in general for inductive types.

Now, for something really amazing. It turns out that recursive types are present as well. The data type Nat, which is often written as μ X. 1+X, can be written down as follows:

∀ X. X→(X→X)→X

If you've been paying attention, you'll note the correspondence between the first X and Zero, and the second (X→X) and Succ. Well it turns out μ X. F X can be encode itself as follows:

μ X. F X = ∀ X. (F X→X)→X

Ok great. That's fairly interesting. Now comes the part that had me floored with the beauty of System F. It is typical in programming languages to have an explicit constructor which allows us to inject into a type. For fun we can write the following type, which simulates the domain equation of the untyped lambda calculus:

data D = InD D→D

This turns out to be somewhat interesting, in that we can produce non-terminating computations with the type, without ever using explicit recursion. Witness the following code*:

omega = (\ x -> case x of 
                     InD g -> g (InD g))
               (InD (\ x -> case x of 
                         InD g -> g (InD g)))

Great! We can write down silly terms that don't terminate. What's the point you ask? Well, we can write down this type in System F. But System F is strongly normalising (it will always evaluate to a normal form, so it can't just compute forever). Something seems fishy here, how can this possibly be? Let us look at this datatype in System F.

∀ X . (X→X)→X

So far so good. Now, let's try to make the constructor:

omega = Λ X . λ f : X→X. ???

We can't find one! What happened? It turns out that this type is not inhabited in System F. When we wrote the constructor in Haskell, we were LYING!!! That constructor doesn't actually exist, because that type has no valid inhabitants.

It's often the case that in proof assistants recursive types are restricted, often with a positivity restriction on the functor F such that such we don't end up lying about what constructors are actually possible. However, in System F, where we are asked to provide the constructors, this problem never occurs. It seems likely to me that since Mendler style induction schemes are more general than induction with functors restricted to positivity, that there are many types which have inhabitants in System F, which are thrown out by proof assistants such as Coq, despite being perfectly O.K. In addition, there are all sorts of silly types that are allowed in a language like Haskell, despite the fact that they have no realistic inhabitants.

I hope you found this as amazing as I did.

* Note: you might have to add some arbitrary show instance to get haskell to allow you run omega. Don't worry about how you define "show" since omega never returns!


---

http://rubrication.blogspot.com/2012/03/decidable-equality-in-agda.html

http://rubrication.blogspot.com/2015/03/judgemental-equality-homotopy-type.html

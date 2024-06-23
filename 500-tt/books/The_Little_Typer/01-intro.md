# 1. Introduciton
(The More Things Change, the More They Stay the Same)

*Atoms* are built from a tick mark directly followed by one or more letters
and hyphens (In Pie, only atoms use the tick mark).

[The Law of Tick Marks] A tick mark directly followed by one or more letters and hyphens is an Atom.

[The Commandment of Tick Marks] Two expressions are the same Atom if their values are tick marks followed by identical letters and hyphens.

A pair begins with `cons` and ends with two more parts, called its `car` and its `cdr` (In Lisp, `cons` is used to make lists longer. in Pie, `cons` only constructs pairs).

Neither `cons` nor `Pair` alone is even an expression. Both require two arguments (In Lisp, `cons` is a procedure and has meaning on its own, but special forms such as `cond` or `lambda` are meaningless if they appear alone).

Expressions that describe other expressions, such as `Atom`, are called types. When a name, such as `Pair` or `Atom`, refers to a type, it starts with an upper-case letter.

[The Law of Atom] Atom is a type.

## Judgments

A *judgment* (in Per Martin-Löf sense) is an attitude one takes towards an expression. When we come to know something, we are making a judgment.

The 4 forms of judgments (first 2 for types, last 2 for terms):
1. `A` is a type.                              `A 𝚝𝚢𝚙𝚎`
2. `A` and `B` are the same type.              `A ≡ B 𝚝𝚢𝚙𝚎`
3. `a` is a `A` (`a` is a term of type `A`)    `a : A`
4. `a` is the same as `b`.                     `a ≡ b : A`
  (`a` and `b` are equal terms of type `A`)


There are many different possibilities for formulating the *judgmental structure of dependent type theory*, but the classic version due to Martin-Lof is still a very popular one:

The basic judgment of type theory, analogous to "A has a proof", is denoted by `a : A` and it means that the term `a` has type `A`.

>Types:

1. `A 𝚝𝚢𝚙𝚎`   
    means that `A` is a type,   
    presupposing:   
    - `Γ 𝚌𝚘𝚗𝚝𝚎𝚡𝚝` (that `Γ` is a context)

2. `A ≡ B 𝚝𝚢𝚙𝚎`    
    means that `A` and `B` are equal types   
    in the context `Γ`, presupposing:
    - `Γ 𝚌𝚘𝚗𝚝𝚎𝚡𝚝`
    - `Γ : A 𝚝𝚢𝚙𝚎`
    - `Γ : B 𝚝𝚢𝚙𝚎`

>Terms:

3. `a : A`   
    means that `a` is a term of type `A`   
    in context `Γ`, presupposing:    
    - `Γ 𝚌𝚘𝚗𝚝𝚎𝚡𝚝`
    - `Γ : A 𝚝𝚢𝚙𝚎`

4. `a ≡ b : A`   
    means `a` and `b` are equal terms of type `A`   
    in context `Γ` presupposing:
    - `Γ 𝚌𝚘𝚗𝚝𝚎𝚡𝚝`
    - `Γ ⊢ A 𝚝𝚢𝚙𝚎`
    - `Γ ⊢ a : A`
    - `Γ ⊢ b : A`


## Judgments contd.

- Is this a judgment? `Atom` and `(Pair Atom Atom)` are the same type.
+ Yes, it is a judgment, but there is no reason to believe it.
+ Judgments are acts of knowing, and believing is part of knowing.
- Aren't judgments sentences?
+ Sentences get their meaning from those who understand them. The sentences capture thoughts that we have, and thoughts are more important than the words we use to express them.
- Coming to know that `(Pair Atom Atom)` and `(Pair Atom Atom)` are the same type was a judgment indeed-o.
- Some forms of judgment only make sense after an earlier judgment. This earlier judgment is sometimes called a **presupposition**.

>To ask whether an expression is described by a type, 
>one must have already judged that the supposed type is a type.

>>To ask whether two expressions are the same according to a type, 
>>one must first judge that both expressions are described by the type 
>>(i.e. one must first judge that each expression is, in fact, a type).

To describe the expressions, the supposed type must also be a type.

Expressions that are written differently may nevertheless be the same. 
One way of writing these expressions is more direct than the others.

>The **normal form** of an expression is the most direct way of writing it. 

Any two expressions that are the same have identical normal forms, 
and any two expressions with identical normal forms are the same.

>Sameness is always according to a type, 
>so normal forms are also determined by a type.

+ Is `'bag` the normal form of 
  `(cdr (cdr (cons 'bustop (cons 'rat 'bag))))`
- Question is incomplete: normal forms are determined by a type since sameness is a relation that is always according to some type.
+ Aha, `'bag` is the normal form of the `Atom` 
  `(cdr (cdr (cons 'bustop (cons 'rat 'bag))))`. - Yes
+ Is `(cons 'rat 'bag)` a normal `(Pair Atom Atom)`? - Yes

- What is the normal form of `(car (cons (cons 'bag 'rat) 'bus))`
+ What about the type (hehe)?
- ...if the type is `(Pair Atom Atom)`
+ then the normal form is `(cons 'bag 'rat)` [NB `cons` makes pairs - not lists]

- The previous description of what it means to be a `(Pair Atom Atom)` is incomplete. It must mean ...
+ to be a pair whose `car` is an `Atom`, and whose `cdr` is also an `Atom`, or an expression that is the same as such a pair.


+ Does every expression have a normal form?
- (bitchslap!) It does not make sense to ask whether an expression has a normal form without specifying its type.
- Given a type, however, every expression described by that type does have a normal form determined by that type.
- If two expressions are the same according to their type, then they have identical normal forms. So this must mean that we can check whether two expressions are the same by comparing their normal forms.

>**Normal Forms**: Given a type, every expression described by that type has a normal form (which is the most direct way of writing it).
>>If two expressions are the same, then they have identical normal forms, and if they have identical normal forms, then they are the same.

**Normal Forms and Types**: Sameness is always according to a type, so normal forms are also determined by a type.

**The First Commandment of cons**: Two cons-exp are the same `(Pair A D)` if their `car`s are the same `A` and their `cdr`s are the same `D` (here, `A` and `D` stand for any type).

The expression `(Pair (cdr (cons Atom 'rat)) (car (cons 'bag Atom)))` is neither described by a type, nor is it a type, so asking for its normal form is meaningless. Expressions that cannot be described by a type and that are not themselves types are also called *ill-typed*. `Pair` is not a type when its arguments are actual atoms (like literal `Atom` type). It is only an expression when its arguments are types (e.g. of the type `Atom`, like `'rat : Atom`).

>Types themselves also have normal forms. If two types have identical normal forms, then they are the same type; and if two types are the same type, then they have identical normal forms.

The normal form of *the type* 
`(Pair (car (cons Atom 'rat)) (cdr (cons 'bag Atom)))` 
must be `(Pair Atom Atom)` 
because the normal form of `(car (cons Atom 'rat))` is `Atom`, 
and the normal form of `(cdr (cons 'bag Atom))` is `Atom`.

**Normal Forms of Types**: Every expression that is a type has a normal form, which is the most direct way of writing that type. If two expressions are the same type, then they have identical normal forms, and if two types have identical normal forms, then they are the same type.

Now we know that 
  `(cons 'rat 'bag)` 
is a 
  `(Pair Atom Atom)`
but it is also a
  `(Pair`
    `(car (cons Atom 'what))`
    `(cdr (cons 'ever Atom)))`
because the normal form of
  `(Pair` 
    `(car (cons Atom 'what))` 
    `(cdr (cons 'ever Atom)))` 
is 
  `(Pair Atom Atom)`; 
and 
  `(cons 'rat 'bag)` 
is indeed a 
  `(Pair Atom Atom)`.

Another way to say this is that
  `(Pair`
    `(car`
      `(cons Atom 'olive))`
    `(cdr`
      `(cons 'oil Atom)))`
and
  `(Pair Atom Atom)`
are *the same type*.

**Claims before Definitions**: In Pie, using `define` to associate a name with an expression requires that the expression's type has previously been associated with the name using `claim`.

```pie
(claim one
  Nat)
(define one
  (add1 zero))

one : Nat
one = S Z
```

`one` is normal because its *top*, `add1` is a constructor, and because the argument tucked under the top `add1`, namely `zero`, is normal. And `zero` is normal because the top `zero` is a constructor, albeit nullary.

>An expression with a constructor at the top is called a value. Values are also called **canonical expressions**.

Even though 
  (add1
  (+ (add1 zero)
    (add1
      (add1 zero))))
is *not normal*, it is a *value*. It is not normal 
because it is not the most direct way of writing 3, 
whose normal form is `(add1 (add1 (add1 zero)))`.

**Values**: An expression with a data ctor at the top is called a value.

Expressions, such as `Nat` or `(Pair Nat Atom)`, are types (not ctors).

*A part of explaining a new type is to say what its ctors are*. The ctor exps are the direct ways of building exps with the new type.

The ctors of `Nat` are `zero` and `add1`; the ctor of `Pair` is `cons`.

+ What is the relationship between values and normal forms?
- In a value, the top ctor's args need not be normal, but if they are, then the entire ctor exp is in normal form.

**Values and Normal Forms**: Not every value is in normal form. This is because the args to a ctor need not be normal. *Each exp has only one normal form, but it is sometimes possible to write it as a value in more than one way*.

Finding a value that is the same as some 
starting expression is called **evaluation**.

In Lisp, values are distinct from expressions, and the result of evaluation is a value. But in Pie, expressions do not refer to some external notion of meaning, there is nothing but expressions and what we judge about them.

**Everything is an Expression**: In Pie, values are also expressions. Evaluation in Pie finds an expression, not some other kind of thing.

+ Why is there a difference between normal forms and values?
- A normal expression has no remaining opportunities for evaluation. Usually, expressions that are normal are easier to understand. Finding a value is often sufficient, however, because the top constructor can be used to determine what must happen next.
+ If finding a value is often sufficient, does that mean we are free to find the value and stop whenever we want?
- Yes, assuming that specific info about the ctor's args is never needed.

Two `Nat` expressions, that aren't values, are the same if their values are the same. There are exactly two ways in which two Nat values can be the same: one for each constructor.

*The Commandment of zero*: zero is the same Nat as zero; `zero ∈ Nat`
*The Commandment of add1*: If `n` is the same Nat as `k`, then `(add1 n)` is the same Nat as `(add1 k)`; `n ∈ Nat -> S n ∈ Nat`; `m = n -> S m = S n`.

+ Why is `(add1 (+ 0 1))` the same Nat as `(add1 (+ 1 0))`?
- Both of these Nats have add1 at the top, so they are values.
+ Why is `(+ 0 1)` the same Nat as `(+ 1 0)`?
- These Nats are not values (but exp), so to determine whether they are the same, we must find their values, which are the same.

**In Pie, definitions are forever** 
Once a name has been claimed, it cannot be reclaimed, and 
once a name has been defined, it cannot be redefined.

Pie is strict: it is necessary to evaluate a ctor's arg in order to evaluate an exp involving it.

+ What does it mean for two expressions to be the same `(Pair Atom Nat)`?
- It must mean that the value of each exp has `cons` at the top. And, their `car`s are the same `Atom` and their `cdr`s are the same `Nat`.

>All atoms are ctors: each atom is itself a ctor. Each atom constructs itself.
All atoms (instances of the `Atom` type) are values. `Atom` is a type says that atoms are `Atom` values. In the expression `'rat`, the top constructor is `'rat` and the value is `'rat`.

Nat is not a constructor. zero and add1 are. Constructors create data, while Nat describes data that is just zero, or data that has add1 at its top and another Nat as its argument.

Pair is not a ctor because Pair-expressions describe exps with `cons` at the top. Ctors create data, not types. `Pair`, `Nat` and `Atom` are **type constructor** because they construct types.

What? `Atom` is a type ctor that has infinitely many data ctors?

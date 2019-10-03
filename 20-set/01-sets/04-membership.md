# Set membership

<!-- TOC -->

- [Set elements](#set-elements)
- [Sets vs propositions](#sets-vs-propositions)
- [Membership relation](#membership-relation)
- [Non-membership relation](#non-membership-relation)
- [Terminal set member](#terminal-set-member)

<!-- /TOC -->


## Set elements

Objects belonging to a set are called **elements** or **members**. They are distinct objects that make up that set. A set element may be a set itself.

If an element is not a set itself, it might be called an **ur-element** or **atom**. A set that contains only atoms may be called an **atomic set**. A set that only contains sets may be called a **class**. A **proper class** cannot be a member.

> Once defined, a set is an object in its own right, different from any other object and distinct from any of its members:
>       
> $$x\neq \{x\}$$     
>       
> meaning, a set containing a single element is not the same as that element.



## Sets vs propositions

A set or an element do not have a truth value on their own, as opposed to a proposition, which has a truth value (being either true or false) so it may be used with logical connectives, such as ¬(not), ∧ (and), ∨ (or).

In order to use them with logical connectives, we need a relation between objects and sets, and this is where the memberhip relation comes in.

## Membership relation

**Membership relation** is the fundamental binary relation between an object and a set ("_belongs to_", "_is an element of_"), which is always denoted using the modified Greek letter ε (epsilon) as in:

$$a \in A$$, more rarely by $$A \ni a$$

and read "*an element `a` belongs to a set `A`*", or "*an object `a` is an element of a set `A`*".

When we substitute concrete objects for these variables, if we find our that the `a` does really belong to the set `A` (i.e. then the membership relation holds), then the proposition is true; otherwise false.


## Non-membership relation

**Non-membership relation** may be defined in terms of the membership relation, becoming negated membership relation:

$$b\not\in A = ¬(b\in A)$$

It is usually denoted by $$b \not\in A$$, and more rarely by $$A \not\ni b$$



## Terminal set member

A large finite set may be denoted extensionally using ellipses and the **terminal set member**. For example, $$\{1,2,3, \dots,100\}$$ is a finite set where 100 is the terminal set member.


---

https://en.wikipedia.org/wiki/Element_(mathematics)

# Function object

In the `Set` category, homset (all arrow between two objects `a` and `b`) also for a set, and this set may be considered as an object in the `Set` category, denoted `a -> b`. This is similar to how we can construct products by taking two objects and mapping them into a third object that is their product,`a ⨯ b`, or coproduct, `a + b`. Generelly, the function object may not exists, but in the `Set` category it does.

If `z` represent a function object, (`a -> b`), and `a` an object, we can form a pair `(a -> b, a)`.

We need 3 objects to define this relation: object that is an arg type, a function type, and an obj that is return type.

It's a relation between 3 objects - there is the argument type, the return type and there's the function type. So three things need to be related and we can't draw an arrow between three things. We'd like to say that we take a function and an argument and that produces a result; we'd like to put an arrow between the two objects (functional and arg) and then to continuw it to the third return object, but we can't do that in category theory since all arrows
are singular.

With sets instead, we'd say let's pick an element of this set, which will be our function and let's take an element of this set, which would be the argument, and form a pair - a function and an appropriate argument; then that pair, of function and an argument, can be mapped to the result which is an element of `b`.

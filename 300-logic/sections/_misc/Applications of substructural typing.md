---
downloaded:       2022-01-15
page-url:         https://blog.tchatzigiannakis.com/applications-of-substructural-typing/
page-title:       Applications of substructural typing - Mature Pessimizations - A programming blog by Theodoros Chatzigiannakis
article-title:    Applications of substructural typing
---
# Applications of substructural typing - Mature Pessimizations - A programming blog by Theodoros Chatzigiannakis

In a previous writing, we mentioned a family of types called substructural types. A type is substructural if it disallows any of the three structural rules: contraction (the ability to use a variable more than once), weakening (the ability to leave a variable unused), and exchange (the ability to reorder usages of two variables with respect to their declaration order).

In this writing, we will look at several problems that substructural type systems can help us solve at compile time, in ways that common unrestricted type systems are simply unable to do.
[In a previous writing][1], we mentioned a family of types called *substructural types*. A type is substructural if it disallows any of the three structural rules: contraction (the ability to use a variable more than once), weakening (the ability to leave a variable unused), and exchange (the ability to reorder usages of two variables with respect to their declaration order).

In this writing, we will look at several problems that substructural type systems can help us solve at compile time, in ways that common unrestricted type systems are simply unable to do.

## [][2]Avoiding repeated disposal

In the C language, when a `FILE*` has been closed, the pointer’s value becomes indeterminate and any program that uses it again is ill-formed. Consider the following C program which, although contrived when taken at face value, is a reduction of real-world resource-managing constructs:

```
1
2
3
4
```

```
FILE *f = fopen("data.txt", "w");
fprintf(f, "Hello world!");
if(A()) fclose(f);
if(B()) fclose(f);
```

This program is ill-formed if `A()` and `B()` both return a non-zero value. For the compiler to figure this out, it needs to predict the result of `A()` and `B()`, both of which may be impossible to compute at compile time.

This means that it’s impossible for the compiler to determine whether this program is well-formed or not. Given the definition of the C language, the problem *“Is this pointer used safely?”* is undecidable in the general case. There isn’t much we can realistically expect from a compiler except for it to assume that the answer is *“yes”* – that is, give a false positive. And this is one of the greatest sources of bugs in C programs.

Safer languages in the C family (e.g. C# and Java) work around this problem by giving well-defined runtime behavior for such cases. For example, you could define closing a file to be an idempotent operation, or to throw an exception that safely shuts down further potentially erroneous behavior. But it is going to be a core theme of this blog that catching bugs at compile time is better than catching them at runtime, so let’s see what else can be done.

Many operations on many types in many languages have problems similar to that of `fclose()`: they have an invariant that cannot be expressed through the type system. This particular invariant is a rather common one: *“The argument passed to me should not be used again.”*

In our example, the double disposal is caused because there is at least one code path that violates that invariant. If we define such resource-managing types to disallow contraction, then their corresponding operations will have more control over their arguments – specifically, they will be able to choose if those arguments can be used again afterwards.

For example, here are the signatures of `fopen()`, `fprintf()` and `fclose()` in an unrestricted type system:

```
1
2
3
```

```
FILE *fopen(const char *filename, const char *mode);
int fprintf(FILE *stream, const char *format, ...);
int fclose(FILE *stream);
```

If `FILE*` was defined to disallow contraction, we would rewrite them as:

```
1
2
3
```

```
FILE *fopen(const char *filename, const char *mode);
(FILE *, int) fprintf(FILE *stream, const char *format, ...);
int fclose(FILE *stream);
```

Let `(FILE *, int)` be syntactic sugar for a struct that contains a `FILE*` and an `int` – that is, a *tuple.* This is not a change to the type system, just a convenient way to signify that we are returning two values instead of one.

For these revised signatures, the problematic program would now become:

```
1
2
3
4
```

```
FILE *f1 = fopen("data.txt", "w");
(FILE *f2, int s1) = fprintf(f1, "Hello world!");
if (A()) fclose(f2);
if (B()) fclose(f2);
```

When the file handle pointed to by `f1` is passed to `fprintf()`, it is moved inside `fprintf()` and our local variable goes out of scope. But that’s okay because we can continue using the same file handle by retrieving the new `FILE*` returned by `fprintf()`. By returning the `FILE*` that we passed to it, `fprintf()` is now giving us explicit permission to continue using the file handle safely.

On the contrary, `fclose()` does not give the file handle back. This is its way of telling us explicitly that the file handle cannot be used again, once `fclose()` has been called on it. Because the first call to `fclose()` moves `f2` and causes it to go out of scope, the compiler can now detect that the second call to `fclose()` is using a consumed variable.

By doing this, we’ve turned this case of *“Is this pointer used safely?”* into the simpler question *“Is there a possibility that this local variable been used already?”*. Because the compiler can easily decide that, it can draw our attention to this problem by refusing to accept the program. This forces us to rethink our code snippet and rewrite it in a way that can be statically validated. One possible rewrite is this:

```
1
2
3
```

```
FILE *f1 = fopen("data.txt", "w");
(FILE *f2, int s1) = fprintf(f1, "Hello world!");
if (A() | B()) fclose(f2);
```

Notice that it’s not the lack of contraction itself that ensures single disposal of a resource. Rather, the lack of contraction gives the disposal operation the chance to express a certain aspect of its contract through the type system. It’s still the responsibility of the author of that operation to ensure that it takes advantage of the type system, by not returning the disposed resource.

## [][3]Ensuring disposal

Let’s consider our previous snippet as part of a function:

```
 1
 2
 3
 4
 5
 6
 7
 8
 9
10
```

```
int func(void) {
    FILE *f1 = fopen("data.txt", "w");
    (FILE *f2, int s1) = fprintf(f1, "Hello world!");
    if (A() | B()) {
        fclose(f2);
        return 1;
    }
    /* do other things */
    return 0;
}
```

If neither `A()` nor `B()` return a non-zero value, then `fclose()` will never be called on `f2`. This means that we will leave a file handle open. And because `f2` is a local variable, it stands to reason that we won’t be able to get its value back at a later point in order to close it. This is a potential resource leak, which is another kind of undesired situation in a program.

Again, mainstream languages solve this by introducing a runtime system that releases resources. That runtime system is usually a tracing garbage collector or a form of reference counting. A tracing garbage collector introduces non-deterministic observable behavior in the program. It also interacts badly with features like exceptions (although I would call this a shortcoming of the concept of exceptions rather than of the GC). And it interoperates dangerously with foreign code that’s executed outside the GC-managed environment. A reference counting scheme introduces its own increment-decrement overhead and it’s still imperfect, as it can silently create leaks in the form of circularly-referenced objects. We would ideally like to find something that’s deterministic and perfectly non-leaking.

Back to our code, the problem manifests itself because there is at least one code path in which the variable goes unused. If we decided to disallow weakening, the above snippet would result in a type error.

One possible rewrite that would solve this is as follows:

```
 1
 2
 3
 4
 5
 6
 7
 8
 9
10
11
```

```
int func(void) {
    FILE *f1 = fopen("data.txt", "w");
    (FILE *f2, int s1) = fprintf(f1, "Hello world!");
    if (A() | B()) {
        fclose(f2);
        return 1;
    }
    /* do other things */
    fclose(f2);
    return 0;
}
```

By disallowing weakening on a resource-managing type, we can ensure that a disposal operation is eventually called for every variable of that type on all code paths. This means that there is no way to leak the resource represented by that type.

Strictly speaking, a disposal operation cannot be written if the type does not support weakening. We can assume that the actual implementation of the disposal operation has less strict rules about its usage than we do. For example, the disposal operation could make a system call that closes the file and assume that the file handle has been moved into that system call. Alternatively, if the resource isn’t external, the disposal operation could perform the necessary steps to de-initialize it and finally, it could cast the linear type variable into a non-linear form that can be dropped freely.

Alternatively, we could define a language where a resource-managing type is *affine* instead of linear. The compiler can trivially decide whether a variable of that type is used or not. For all code paths where the variable is left unused, the compiler can automatically insert instructions that will call the object’s designated destructor. This not only ensures the absence of resource leaks, but it easily opens the door to automatic resource management without the need for a runtime system such as a tracing garbage collector or a reference counting scheme – the compiler decides statically the end of life of each object by answering the question *“Has this variable been used in this code path or not?”:*

```
 1
 2
 3
 4
 5
 6
 7
 8
 9
10
```

```
int func(void) {
    FILE *f1 = fopen("data.txt", "w");
    (FILE *f2, int s1) = fprintf(f1, "Hello world!");
    if (A() | B()) {
        fclose(f2); /* compiler-generated cleanup */
        return 1;
    }
    fclose(f2); /* compiler-generated cleanup */
    return 0;
}
```

Affine types are used right now for this purpose:

-   The `std::unique_ptr` smart pointer type in C++ is an example of an affine type. It cannot be directly assigned, but the `std::move()` operation can be used for the same purpose. In this case, the old variable is reset and a new variable takes ownership of the internal pointer. This preserves the semantics of non-contraction. Additionally, `std::unique_ptr` defines its destructor to destroy the referent object if it has not been set to `nullptr`. This allows the object to be dropped and destroyed without resource leaks.
-   Rust is a relatively new systems programming language that makes extensive use of affine types in this form. Each type is affine by default, but the user can opt-in and support the contraction rule by implementing the copy trait. Because affine types are recognized by the compiler, violations of the affine type’s limitations are caught at compile time, rather than runtime. Additionally, because there is nothing to check at runtime, this resource management scheme can be implemented with zero overhead.

## [][4]Enforcing stateful contracts

Network connections are another kind of resource. They are often exposed through abstractions that are comparable in simplicity to that of a file, but they are more complicated underneath.

In the C language, the functions that help manage network connections are the following ones:

```
1
2
3
4
5
6
7
8
```

```
int socket(int domain, int type, int protocol);
int connect(int sockfd, const struct sockaddr *addr, socklen_t addrlen);
int bind(int sockfd, const struct sockaddr *addr, socklen_t addrlen);
int listen(int sockfd, int backlog);
int accept(int sockfd, struct sockaddr *addr, socklen_t *addrlen); 
ssize_t write(int fd, const void *buf, size_t count);
ssize_t read(int fd, void *buf, size_t count);
int close(int fd);
```

This has too many C-specific details – like the fact that sockets are represented as file descriptors. Let’s simplify it to the parts we’re interested in:

```
1
2
3
4
5
6
7
8
```

```
SOCKET *socket(void);
void connect(SOCKET *sock, ADDRESS *addr);
void bind(SOCKET *sock, ADDRESS *addr);
void listen(SOCKET *sock);
SOCKET *accept(SOCKET *sock, ADDRESS *addr);
void write(SOCKET *sock, void *buf, size_t count);
void read(SOCKET *sock, void *buf, size_t count);
void close(SOCKET *sock);
```

An abstract way of how these operations work in the case of TCP is as follows:

-   To establish a TCP connection from the client side, we need to create a socket using the `socket()` operation. Now the socket is initialized. Then, we need to connect to an address using the `connect()` operation. Now the socket is hopefully connected. We can start sending and receiving data using the `write()` and `read()` operations respectively. The socket remains connected. Finally, we can close the socket using the `close()` operation. Now the socket is closed.
-   To establish a TCP connection from the server side, we again need to create a socket using the `socket()` operation. Now the socket is initialized. Then, we need to bind the socket to an address using the `bind()` operation. Now the socket is bound. Then, we need to start listening to incoming connections using the `listen()` operation. Now the socket is listening. We can accept the first potential connection in the queue using the `accept()` operation. Now the existing socket is still listening, while a new socket is connected. We can start sending and receiving data to the new socket using the `write()` and `read()` operations respectively. The socket remains connected. Finally, we can close the socket using the `close()` operation. Now the socket is closed.

There is a problem with an API like this.

Notice that a socket has multiple states that it goes through: the “initial” state, the “bound” state, the “listening” state, the “connected” state and the “closed” state. There are very specific valid transitions between those states. A “listening” socket can `accept()` new connections but we can’t `bind()` it to an address anymore – that ship has sailed.

Yet despite the clearly defined states of a socket and the transitions between them, there is nothing in the type signatures of the API that suggests the order in which these operations should be called to establish a successful connection on either side. There is room for error here, as a user of the API may fail to perform the sequence correctly in some code paths.

The obvious solution to this problem is to declare different types that represent different states of a resource. Then, the operations that represent transitions can be rewritten to take the current state of the resource and return the next:

```
1
2
3
4
5
6
7
8
```

```
INITIALIZEDSOCKET *socket(void);
CONNECTEDSOCKET *connect(INITIALIZEDSOCKET *sock, int port);
BOUNDSOCKET *bind(INITIALIZEDSOCKET *sock, int port);
LISTENINGSOCKET *listen(BOUNDSOCKET *sock);
CONNECTEDSOCKET *accept(LISTENINGSOCKET *sock);
void write(CONNECTEDSOCKET *sock, void *buf, size_t count);
void read(CONNECTEDSOCKET *sock, void *buf, size_t count);
void close(CONNECTEDSOCKET *sock);
```

But there’s still room for error. For example, the `connect()` operation will take the given socket from the “initialized” state to the “connected” state and that transition is now expressed through the type system. But since we still have a reference to the socket in its initialized state, there’s nothing that prevents us from calling `connect()` multiple times on it.

So even though `connect()` expresses that the socket is in a new state, it has no way to prevent the pointer to the old state from being reused. We would be able to solve this problem if we disallowed contraction, because that would give `connect()` the opportunity to consume the “initialized” state of the socket and leave only the new one available for further use.

```
1
2
3
4
5
6
7
8
```

```
INITIALIZEDSOCKET *socket(void);
CONNECTEDSOCKET *connect(INITIALIZEDSOCKET *sock, int port);
BOUNDSOCKET *bind(INITIALIZEDSOCKET *sock, int port);
LISTENINGSOCKET *listen(BOUNDSOCKET *sock);
(CONNECTEDSOCKET *, LISTENINGSOCKET *) accept(LISTENINGSOCKET *sock); // improvement here 
void write(CONNECTEDSOCKET *sock, void *buf, size_t count);
void read(CONNECTEDSOCKET *sock, void *buf, size_t count);
void close(CONNECTEDSOCKET *sock);
```

There’s another use for affine types, then – enforcing the stateful contracts we express through an API. A careful consideration will reveal that this is basically a generalization of the `fclose()` case, but instead of “consuming” the object in order to dispose it, we may return it in new states which may or may not have further operations defined on them.

## [][5]Eliminating race conditions

A data race occurs when a memory location is subject to multiple concurrent accesses and at least one of those accesses attempts to modify it.

Again, most languages solve this by introducing a memory model that involves volatile variables, atomic operations, locks, barriers, and all that stuff. A concurrency approach of this kind not only takes a serious toll on performance, but it makes it nearly impossible to predict a program’s behavior without understanding some pretty complicated formalism that very few people understand (or are even aware of).

The problem of a data race manifests itself because a resource has been shared between multiple threads. A type that disallows contraction cannot be shared, so it cannot participate in this kind of unsafe or complicated concurrency. Instead, such a type requires you to rethink your code and structure it in a way that it does not act as a source of non-determinism.

For example, here is a simplification of Rust’s channel API:

```
1
2
```

```
fn send<T>(chan: &Channel<T>, t: T);
fn recv<T>(chan: &Channel<T>) -> T;
```

In terms of C#, this would be:

```
1
2
3
4
5
```

```
class Channel<T>
{
    void Send(T t) { ... }
    T Receive() { ... }
}
```

Disallowing contraction for types `T` gives the channel the ability to provide thread-safe message parsing. The reason is simply that if one thread sends an object to another thread, the sender loses the object, as it is now transferred to the receiver. This ensures that no two threads will ever have access to the same object, but they can exchange it at will.

Obviously, in the above case, `Channel<T>` is shared between the two threads. This is not the case in the actual Rust API. The actual API gives out a `Sender<T>` and a `Receiver<T>` object, both of which operate on a hidden shared resource that acts as the channel.

## [][6]Safely and efficiently updating immutable data

In recent years, functional programming has gained a lot of ground in the industry, as it solves many of the problems we encounter in modern software.

One example of such practice is the use of immutable types. These are types whose instances have state that does not change throughout their lifetime. To represent a change on these instances requires the creation of a new instance.

For example, in most C-family languages, numbers are immutable:

```
1
2
3
```

```
int x = 2;
int y = 3;
int z = x + y;
```

`operator+` takes two numbers as operands and returns a new number as a result. The operands remain unchanged.

Modern languages such as C# and Java do the same thing for other types, like strings:

```
1
2
3
```

```
string x = "Hello ";
string y = "world!";
string z = string.Concat(x, y);
```

Again, concatenation of two strings creates a new string. The existing strings retain their previous values.

Mutable state is a common source of bugs in many programs. In fact, even race conditions are a special kind of mutability-related bugs. Such bugs are simply not applicable to immutable types. Yet for all of its advantages, immutability makes certain programs awkward or decreases their performance.

With an immutable but unrestricted data type, there are really only a handful of ways to represent change:

-   One way is to create a copy of the initial instance, with the relevant pieces of the copy changed to match our desired mutation. The obvious disadvantage of this is the amount of copying that’s going to take place on very large objects (such as large arrays).
-   The other way is to create a computation that holds the old object and the changes to be applied to it. For example, a modified array could store a reference to the original array, plus a dictionary-like structure that says which of its slots differ from the original array, and what their new value is. This saves time (and possibly memory) compared to naive copying, but it still makes array access have unpredictable performance, and that performance will still be nowhere near that of a simple C-like array. At the very least, if we expect the old arrays to not be used often, we can implement this array type to do the inverse thing: update the physical data in-place and change the existing references to keep track of their difference.

Either way, these methods are too expensive or too complicated or too unpredictable for certain performance-minded scenarios. Sadly, we sometimes have to decide between safety or performance. It’s not an accident that the GHC implementation of Haskell offers a plethora of array interfaces: `Array`, `UArray`, `DiffArray`, `DiffUArray`, `IOArray`, `IOUArray`, `StorableArray`,`STArray`, `STUArray`.

Substructural types give us the best of both worlds, without doing any clever trickery to cut down on runtime overhead. Again, consider disallowing contraction on arrays. Changing an element would now be an operation like this:

```
1
```

```
T[] Modify<T>(T[] array, int index, T value);
```

Usage:

```
1
2
```

```
int[] original = new int[1024];
int[] modified = Modify<int>(original, 0, 5);
```

Because `original` has been moved into `Modify()`, there is no way to compare it to `modified` and tell whether it’s a brand new array with our change applied to it, or whether it’s the old array updated to reflect our changes:

```
1
2
3
```

```
int[] original = new int[1024];
int[] modified = Modify<int>(original, 0, 5);
bool same = original == modified; // error: 'original' has been moved
```

In general, because lack of contraction implies lack of aliasing, there is no way for us to keep an object in its “before” and “after” state and observe whether a mutation operation was “destructive” or not. The implementation of such an operation could always choose to perform the mutation in the most efficient way, and we would never know the difference.

All non-contracting types might as well be considered immutable. And if we ban from a language certain questionable concepts, such as mutable global state, all operations on non-contracting types might as well be considered pure.

## [][7]Avoiding access order mistakes

Consider this function that takes a tree and returns a new tree with a particular function applied to its nodes:

```
 1
 2
 3
 4
 5
 6
 7
 8
 9
10
11
12
13
```

```
Tree<TResult> Apply<T, TResult>(Tree<T> tree, Func<T, TResult> func)
{
    if (tree is Leaf<T>)
    {
        var leaf = tree.GetValue();
        return new Leaf<TResult>(func(leaf));
    }
    else
    {
        var (left, right) = tree.GetChildren();
        return new Node<TResult>(Apply(left, func), Apply(right, func));
    }
}
```

In the case where the tree’s root is a leaf, we return a new leaf with the function applied to its value. In the case where the tree’s root is a non-leaf node, we get its two children, the left one and the right one, we apply the function recursively to both, and we put the result in a new non-leaf node.

What if we made the mistake of applying the function in the wrong order?

```
1
2
```

```
var (left, right) = tree.GetChildren();
return new Node<TResult>(Apply(right, func), Apply(left, func));
```

An unrestricted type system cannot catch this mistake, because the return type of both `Apply()` calls is the same. The clue about the error lies in the order in which the children were given to us and the order in which we used them. If we disallowed exchange for the tree’s types, the erroneous program would exhibit a type error at compile time.

Apart from avoiding rookie mistakes, there are other cases in which an ordered type system could help an API express the order in which its data should be used.

For example, a tree could be laid out not in random access memory, but in serialized form. Take XML or JSON documents: they represent trees, but they are laid out as really long strings. The API that reads the serial form and yields the tree representation could force the client code to read the data in a depth-first left-to-right manner by exposing ordered types for access to its data. This could allow the reader to parse the document sequentially and on-demand, without performing jumps.

## [][8]Bibliography

-   Kodama, K., Suenaga, K. and Kobayashi, N. (2008). [Translation of tree-processing programs into stream-processing programs based on ordered linear type][9]. *Journal of Functional Programming*, 18(03).
-   Reed, E. (2015). [Patina: A Formalization of the Rust Programming Language][10].
-   Sato, R., Suenaga, K. and Kobayashi, N. (2011). [Ordered Types for Stream Processing of Tree-Structured Data][11]. *Journal of Information Processing*, 19, pp.74-87.
-   Tov, J. and Pucella, R. (2010). [Stateful Contracts for Affine Types][12]. *Programming Languages and Systems*, pp.550-569.
-   Wadler, P. (1990). [Linear Types Can Change the World!][13].
-   Walker, D. (2005). [Substructural Type Systems][14]. In: B. Pierce, ed., *Advanced Topics in Types and Programming Languages*, 1st ed. MIT Press, pp.3-43.
-   Wansbrough, K. and Jones, S. (1999). [Once upon a polymorphic type][15]. *26th ACM Symposium on Principles of Programming Languages*.

[1]: https://blog.tchatzigiannakis.com/structural-rules-and-substructural-logics/
[2]: https://blog.tchatzigiannakis.com/applications-of-substructural-typing/#avoiding-repeated-disposal
[3]: https://blog.tchatzigiannakis.com/applications-of-substructural-typing/#ensuring-disposal
[4]: https://blog.tchatzigiannakis.com/applications-of-substructural-typing/#enforcing-stateful-contracts
[5]: https://blog.tchatzigiannakis.com/applications-of-substructural-typing/#eliminating-race-conditions
[6]: https://blog.tchatzigiannakis.com/applications-of-substructural-typing/#safely-and-efficiently-updating-immutable-data
[7]: https://blog.tchatzigiannakis.com/applications-of-substructural-typing/#avoiding-access-order-mistakes
[8]: https://blog.tchatzigiannakis.com/applications-of-substructural-typing/#bibliography
[9]: http://www.kb.ecei.tohoku.ac.jp/~koba/papers/jfp-olt.pdf
[10]: ftp://ftp.cs.washington.edu/tr/2015/03/UW-CSE-15-03-02.pdf
[11]: https://www.jstage.jst.go.jp/article/ipsjjip/19/0/19_0_74/_pdf
[12]: http://download.springer.com/static/pdf/81/chp%253A10.1007%252F978-3-642-11957-6_29.pdf?originUrl=http%3A%2F%2Flink.springer.com%2Fchapter%2F10.1007%2F978-3-642-11957-6_29&token2=exp=1488818460~acl=%2Fstatic%2Fpdf%2F81%2Fchp%25253A10.1007%25252F978-3-642-11957-6_29.pdf%3ForiginUrl%3Dhttp%253A%252F%252Flink.springer.com%252Fchapter%252F10.1007%252F978-3-642-11957-6_29*~hmac=b55927933eaf3652c00c1d0b43f8948eb1651dbd143920996d8cf1c053d77296
[13]: http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.31.5002&rep=rep1&type=pdf
[14]: https://mitpress.mit.edu/sites/default/files/titles/content/9780262162289_sch_0001.pdf
[15]: https://www.microsoft.com/en-us/research/publication/once-upon-a-polymorphic-type/

---
downloaded:       2021-11-03
author:           Korbmacher, Johannes
page-url:         https://plato.stanford.edu/entries/lambda-calculus/
page-title:       The Lambda Calculus (Stanford Encyclopedia of Philosophy)
---
# The Lambda Calculus (Stanford Encyclopedia of Philosophy)

The λλ-calculus is, at heart, a simple notation for functions
and application. The main ideas are applying a function to an
argument and forming functions by abstraction. The syntax of
basic λλ-calculus is quite sparse, making it an elegant, focused
notation for representing functions. Functions and arguments are on a
par with one another. The result is a non-extensional theory of
functions as rules of computation, contrasting with an extensional
theory of functions as sets of ordered pairs. Despite its sparse
syntax, the expressiveness and flexibility of the λλ-calculus
make it a cornucopia of logic and mathematics. This entry develops
some of the central highlights of the field and prepares the reader
for further study of the subject and its applications in philosophy,
linguistics, computer science, and logic.
The λλ\-calculus is, at heart, a simple notation for functions and application. The main ideas are *applying* a function to an argument and forming functions by *abstraction*. The syntax of basic λλ\-calculus is quite sparse, making it an elegant, focused notation for representing functions. Functions and arguments are on a par with one another. The result is a non-extensional theory of functions as rules of computation, contrasting with an extensional theory of functions as sets of ordered pairs. Despite its sparse syntax, the expressiveness and flexibility of the λλ\-calculus make it a cornucopia of logic and mathematics. This entry develops some of the central highlights of the field and prepares the reader for further study of the subject and its applications in philosophy, linguistics, computer science, and logic.

## 1\. Introduction

The λλ\-calculus is an elegant notation for working with *applications* of *functions* to *arguments*. To take a mathematical example, suppose we are given a simple polynomial such as x2−2⋅x+5x2−2⋅x+5. What is the value of this expression when x\=2x\=2? We compute this by ‘plugging in’ 2 for xx in the expression: we get 22−2⋅2+522−2⋅2+5, which we can further reduce to get the answer 5. To use the λλ\-calculus to represent the situation, we start with the λλ\-term

λx\[x2−2⋅x+5\].λx\[x2−2⋅x+5\].

The λλ operators allows us to *abstract* over xx. One can intuitively read ‘λx\[x2−2⋅x+5\]λx\[x2−2⋅x+5\]’ as an expression that is waiting for a value aa for the variable xx. When given such a value aa (such as the number 2), the value of the expression is a2−2⋅a+5a2−2⋅a+5. The ‘λλ’ on its own has no significance; it merely *binds* the variable xx, guarding it, as it were, from outside interference. The terminology in λλ\-calculus is that we want to *apply* this expression to an *argument*, and get a value. We write ‘MaMa’ to denote the application of the function MM to the argument aa. Continuing with the example, we get:

(λx\[x2−2⋅x+5\])2⊳22−2⋅2+5⟨Substitute 2 for x⟩\=4−4+5⟨Arithmetic⟩\=5⟨Arithmetic⟩(λx\[x2−2⋅x+5\])2⊳22−2⋅2+5⟨Substitute 2 for x⟩\=4−4+5⟨Arithmetic⟩\=5⟨Arithmetic⟩

The first step of this calculation, plugging in ‘2’ for occurrences of xx in the expression ‘x2−2⋅x+5x2−2⋅x+5’, is the passage from an __*abstraction term*__ to another term by the operation of substitution. The remaining equalities are justified by computing with natural numbers.

This example suggests the central principle of the λλ\-calculus, called __*ββ\-reduction*__, which is also sometimes called __*ββ\-conversion*__:

(λx\[M\])N⊳M\[x:=N\](β)(λx\[M\])N⊳M\[x:\=N\]

The understanding is that we can *reduce* or *contract* (⊳)(⊳) an application (λxM)N(λxM)N of an abstraction term (the left-hand side, λxM)λxM) to something (the right-hand side, N)N) by simply plugging in NN for the occurrences of xx inside MM (that’s what the notation ‘M\[x:=N\]M\[x:\=N\]’ expresses). __*ββ\-reduction*__, or __*ββ\-conversion*__, is the heart of the λλ\-calculus. When one actually applies ββ\-reduction to reduce a term, there is an important proviso that has to be observed. But this will be described in Section 2.1, when we discuss bound and free variables.

### 1.1 Multi-argument operations

What about functions of multiple arguments? Can the λλ\-calculus represent operations such as computing the length of the hypotenuse of a right triangle:

Hypotenuse of a right triangle with legs of length xx and y⇒√x2+y2y⇒√x2+y2.

The length-of-hypotenuse operation maps two positive real numbers xx and yy to another positive real number. One can represent such multiple-arity operations using the apparatus of the λλ\-calculus by viewing the operation as taking one input at a time. Thus, the operation can be seen as taking one input, xx, a positive real number, and producing as its value not a *number*, but an *operation*: namely, the operation that takes a positive real number yy as input and produces as output the positive real number √x2+y2√x2+y2. One could summarize the discussion by saying that the operation, __hypotenuse-length__, that computes the length of the hypotenuse of a right triangle given the lengths aa and bb of its legs, is:

__hypotenuse-length__ :=λa\[λb\[√a2+b2\]\]:\=λa\[λb\[√a2+b2\]\]

By the principle of ββ\-reduction, we have, for example, that __hypotenuse-length__ 3, the application of __hypotenuse-length__ to 3, is λb\[√32+b2\]λb\[√32+b2\], which is a function of that is ‘waiting’ for another argument. The λλ\-term __hypotenuse-length__ 3 can be viewed as a function that computes the length of the hypotenuse of a right triangle one of whose legs has length 3. We find, finally, that (__hypotenuse-length__ 3)4—the application of __hypotenuse-length__ to 3 and then to 4—is 5, as expected.

Another way to understand the reduction of many-place functions to one-place functions is to imagine a machine MM that initially starts out by loading the first aa of multiple arguments a,b,…a,b,… into memory. If one then suspends the machine after it has loaded the first argument into memory, one can view the result as another machine Maa that is awaiting one fewer input; the first argument is now fixed.

### 1.2 Non-Extensionality

An important philosophical issue concerning the λλ\-calculus is the question of its underlying concept of functions. In set theory, a function is standardly understood as a set of argument-value pairs. More specifically, a function is understood as a set ff of ordered pairs satisfying the property that (x,y)∈f(x,y)∈f and (x,z)∈f(x,z)∈f implies y\=zy\=z. If ff is a function and (x,y)∈f(x,y)∈f, this means that the function f assigns the value yy to the argument xx. This is the concept of __*functions-as-sets*__. Consequently, the notion of equality of functions-as-sets is equality *qua* sets, which, under the standard principle of extensionality, entails that two functions are equal precisely when they contain the same ordered pairs. In other words, two functions are identical if and only if they assign the same values to the same arguments. In this sense, functions-as-sets are *extensional* objects.

In contrast, the notion of a function at work in λλ\-calculus is one where functions are understood as *rules*: a function is given by a rule for how to determine its values from its arguments. More specifically, we can view a λλ\-term λx\[M\]λx\[M\] as a description of an operation that, given xx, produces MM; the body MM of the abstraction term is, essentially, a *rule* for what to do with xx. This is the conception of __*functions-as-rules*__. Intuitively, given rules MM and NN, we cannot in general decide whether λx\[M\]λx\[M\] is equal to λx\[N\]λx\[N\]. The two terms might ‘behave’ the same (have the same value given the same arguments), but it may not be clear what resources are needed for showing the equality of the terms. In this sense, functions-as-rules are *non-extensional* objects.

To distinguish the extensional concept of functions-as-sets from the non-extensional concept of functions-as-rules, the latter is often referred to as an *‘intensional’* function concept, in part because of the ostensibly intensional concept of a rule involved. This terminology is particularly predominant in the community of mathematical logicians and philosophers of mathematics working on the foundations of mathematics. But from the perspective of the philosophy of language, the terminology can be somewhat misleading, since in this context, the extensional-intensional distinction has a slightly different meaning.

In the standard possible-worlds framework of philosophical semantics, we would distinguish between an extensional and an intensional function concept as follows. Let us say that that two functions are *extensionally equivalent at a world* if and only if they assign the same values to the same arguments at that world. And let us say that two functions are *intensionally equivalent* if and only if they assign the same values to the same arguments at *every* possible-world. To illustrate, consider the functions __highest-mountain-on-earth__ and __highest-mountain-in-the-Himalayas__, where __highest-mountain-on-earth__ assigns the highest mountain on earth as the value to every argument and __highest-mountain-in-the-Himalayas__ assigns the highest mountain in the Himalayas as the value to every argument. The two functions are extensionally equivalent (at the actual world), but not intensionally so. At the actual world, the two functions assign the same value to every argument, namely Mt. Everest. Now consider a world where Mt. Everest is not the highest mountain on earth, but say, Mt. Rushmore is. Suppose further that this is so, just because Mt. Rushmore is 30.000 feet/9.100 m higher than it is at the actual world, while Mt. Everest, with its roughly 29.000 feet/8.800 m, is still the highest mountain in the Himalayas. At that world, __highest-mountain-on-earth__ now assigns Mt. Rushmore as the value to every argument, while __highest-mountain-in-the-Himalayas__ still assigns Mt. Everest to every object. In other words, __highest-mountain-on-earth__ and __highest-mountain-in-the-Himalayas__ are extensionally equivalent (at the actual world) but not intensionally equivalent.

A function concept may now be called *extensional* if and only if it requires functions that are extensionally equivalent at the actual world to be identical. And a function concept may be classified as *intensional* if and only if it requires intensionally equivalent functions to be identical. Note that these classifications are conceptually different from the distinctions commonly used in the foundations of mathematics. On the terminology used in the foundations of mathematics, functions-as-sets are classified as extensional since they use the axiom of extensionality as their criterion of identity, and functions-as-rules are classified as intensional because they rely on the ostensibly intensional concept of a rule. In the present possible-worlds terminology, function concepts are classified as extensional or intensional based of their behavior at possible-worlds.

An issue from which conceptual confusion might arise is that the two terminologies potentially pass different verdicts on the function concept at work in the λλ\-calculus. To see this, consider the following two functions:

ADD\-ONE:=λx\[x+1\]ADD\-TWO\-SUBTRACT\-ONE:=λx\[\[x+2\]−1\]ADD\-ONE:\=λx\[x+1\]ADD\-TWO\-SUBTRACT\-ONE:\=λx\[\[x+2\]−1\]

These two functions are clearly extensionally equivalent: they assign the same value to the same input at the actual world. Moreover, given standard assumptions in possible worlds semantics, the two functions are also *intensionally* equivalent. If we assume that mathematical facts, like facts about addition and subtraction, are necessary in the sense that they are the same at every possible world, then we get that the two functions give the same value to the arguments at *every* possible world. So, an intensional function concept would require the two functions to be identical. In the λλ\-calculus, however, it’s not clear at all that we should identify the two functions. Formally speaking, without the help of other principle, we cannot show that the two λλ\-terms denote the same function. Moreover, informally speaking, on the conception of *functions-as-rules*, it’s not even clear that we *should* identify them: the two terms involve genuinely different rules, and so we might be tempted to say that they denote different functions.

A function concept that allows for intensionally equivalent functions to be distinct is called __*hyperintensional*__. The point is that in possible-worlds terminology, the function concept at work in the λλ\-calculus may be regarded not as intentional but *hyper*intensional—in contrast to what the terminology common in the foundations of mathematics says. Note that it’s unclear how an intensional semantic framework, like the possible-worlds framework, could even in principle account for a non-intensional function concept. On the semantics of the λλ\-calculus, see section [7][1]. The point here was simply to clarify any conceptual confusions that might arise from different terminologies at play in philosophical discourse.

The hyperintensionality of the λλ\-calculus is particularly important when it comes to its applications as a theory of not only functions, but more generally *nn\-ary relations*. On this, see section [9.3][2]. It is effectively the hyperintensionality of the λλ\-calculus that makes it an attractive tool in this context. It should be noted, however, that the λλ\-calculus can be made extensional (as well as intensional) by postulating additional laws concerning the equality of λλ\-terms. On this, see section [5][3].

## 2\. Syntax

The official syntax of the λλ\-calculus is quite simple; it is contained in the next definition.

__Definition__ For the alphabet of the language of the λλ\-calculus we take the left and right parentheses, left and right square brackets, the symbol ‘λλ’, and an infinite set of variables. The class of __*λλ\-terms*__ is defined inductively as follows:

1.  Every variable is a λλ\-term.
2.  If MM and NN are λλ\-terms, then so is (MN)(MN).
3.  If MM is a λλ\-term and xx is a variable, then (λx\[M\])(λx\[M\]) is a λλ\-term.

By ‘term’ we always mean ‘λλ\-term’. Terms formed according to rule (2) are called __*application terms*__. Terms formed according to rule (3) are called __*abstraction terms*__.

As is common when dealing with formal languages that have grouping symbols (the left and right parenthesis, in our case), some parentheses will be omitted when it is safe to do so (that is, when they can be reintroduced in only one sensible way). Juxtaposing more than two λλ\-terms is, strictly speaking, illegal. To avoid the tedium of always writing all needed parentheses, we adopt the following convention:

__Convention__ (association to the left): When more than two terms M1M2M3…MnM1M2M3…Mn are juxtaposed we can recover the missing parentheses by __*associating to the left*__: reading from left to right, group M1M1 and M2M2 together, yielding (M1M2)M3…Mn(M1M2)M3…Mn; then group (M1M2)(M1M2) with M3M3: ((M1M2)M3)…Mn((M1M2)M3)…Mn, and so forth.

The convention thus gives a unique reading to any sequence of λλ\-terms whose length is greater than 2.

### 2.1 Variables, bound and free

The function of λλ in an abstraction term (λx\[M\](λx\[M\]) is that it __*binds*__ the variable appearing immediately after it in the term MM. Thus λλ is analogous to the universal and existential quantifiers ∀∀ and ∃∃ of first-order logic. One can define, analogously, the notions of free and bound variable in the expected way, as follows.

__Definition__ The syntactic functions FVFV and BVBV (for ‘free variable’ and ‘bound variable’, respectively) are defined on the set of λλ\-terms by structural induction thus:

For every variable xx, term MM, and term NN:

FreeBound(1)FV(x)\={x}BV(x)\=∅(2)FV(MN)\=FV(M)∪FV(N)BV(MN)\=BV(M)∪BV(N)(3)FV(λx\[M\])\=FV(M)−{x}BV(λx\[M\])\=BV(M)∪{x}FreeBound(1)FV(x)\={x}BV(x)\=∅(2)FV(MN)\=FV(M)∪FV(N)BV(MN)\=BV(M)∪BV(N)(3)FV(λx\[M\])\=FV(M)−{x}BV(λx\[M\])\=BV(M)∪{x}

If FV(M)\=∅FV(M)\=∅ then MM is called a __*combinator*__.

Clause (3) in the two definitions supports the intention that λλ binds variables (ensures that they are not free). Note the difference between BVBV and FVFV for variables.

As is typical in other subjects where the concepts appear, such as first-order logic, one needs to be careful about the issue; a casual attitude about substitution can lead to syntactic difficulties.\[[1][4]\] We can defend a casual attitude by adopting the convention that we are interested not in terms themselves, but in a certain equivalence class of terms. We now define substitution, and then lay down a convention that allows us to avoid such difficulties.

__Definition__ (substitution) We write ‘M\[x:=N\]M\[x:\=N\]’ to denote the substitution of NN for the free occurrences of xx in MM. A precise definition\[[2][5]\] by recursion on the set of λλ\-terms is as follows: for all terms AA, BB, and MM, and for all variables xx and yy, we define

1.  x\[x:=M\]≡Mx\[x:\=M\]≡M
2.  y\[x:=M\]≡yy\[x:\=M\]≡y (yy distinct from x)x)
3.  (AB)\[x:=M\]≡A\[x:=M\]B\[x:=M\](AB)\[x:\=M\]≡A\[x:\=M\]B\[x:\=M\]
4.  (λx\[A\])\[x:=M\]≡λx\[A\](λx\[A\])\[x:\=M\]≡λx\[A\]
5.  (λy\[A\])\[x:=M\]≡λy\[A\[x:=M\]\](λy\[A\])\[x:\=M\]≡λy\[A\[x:\=M\]\] (yy distinct from x)x)

Clause (1) of the definition simply says that if we are to substitute MM for xx and we are dealing simply with xx, then the result is just MM. Clause (2) says that nothing happens when we are dealing (only) with a variable different from xx but we are to substitute something for xx. Clause (3) tells us that substitution unconditionally distributes over applications. Clauses (4) and (5) concern abstraction terms and parallel clauses (1) and (2) (or rather, clauses (2) and (1), in opposite order): If the bound variable zz of the abstraction term λz\[A\]λz\[A\] is identical to the variable xx for which we are to do a substitution, then we do not perform any substitution (that is, substitution “stops”). This coheres with the intention that M\[x:=N\]M\[x:\=N\] is supposed to denote the substitution of NN for the *free* occurrences of xx in MM. If MM is an abstraction term λx\[A\]λx\[A\] whose bound variable is xx, then xx does not occurr freely in MM, so there is nothing to do. This explains clause 4. Clause (5), finally, says that if the bound variable of an abstraction term differs from xx, then at least xx has the “chance ” to occur freely in the abstraction term, and substitution continues into the body of the abstraction term.

__Definition__ (change of bound variables, αα\-convertibility). The term NN is obtained from the term MM by a __*change of bound variables*__ if, roughly, any abstraction term λx\[A\]λx\[A\] inside MM has been replaced by λy\[A\[x:=y\]\]λy\[A\[x:\=y\]\].

Let us say that terms MM and NN are __*αα\-convertible*__ if there is a sequence of changes of bound variables starting from MM and ending at NN.

__Axiom__. __*ββ\-conversion*__ (stated with a a no-capture proviso):

(λx\[M\])N⊳M\[x:=N\](λx\[M\])N⊳M\[x:\=N\],  
provided no variable that occurrs free in NN becomes bound after its substitution into MM.

Roughly, we need to adhere to the principle that free variables ought to remain free; when an occurrence of a variable is threatened to become bound by a substitution, simply perform enough αα\-conversions to sidestep the problem. If we keep this in mind, we can work with λλ\-calculus without worrying about these nettlesome syntactic difficulties. So, for example, we can't apply the function λx\[λy\[x(y−5)\]\]λx\[λy\[x(y−5)\]\] to the argument 2y2y because upon substitution of “2y2y” for “xx”, the “yy” in “2y2y” would be captured by the variable-binding operator “λyλy”. Such a substitution would yield a function different from the one intended. However, we can first transform λx\[λy\[x(y−5)\]\]λx\[λy\[x(y−5)\]\] to λx\[λz\[x(z−5)\]\]λx\[λz\[x(z−5)\]\] by αα\-conversion, and then apply this latter function to the argument 2y2y. So whereas the following is *not* a valid use of ββ\-conversion: (λx\[λy\[x(y−5)\]\])2y⊳λy\[2y(y−5)\](λx\[λy\[x(y−5)\]\])2y⊳λy\[2y(y−5)\] we can validly use ββ\-conversion to conclude: (λx\[λz\[x(z−5)\]\])2y⊳λz\[2y(z−5)\](λx\[λz\[x(z−5)\]\])2y⊳λz\[2y(z−5)\] This example helps one to see why the proviso to ββ\-conversion is so important. The proviso is really no different from the one used in the statement of an axiom of the predicate calculus, namely: ∀xϕ→ϕτx∀xϕ→ϕτx, provided no variable that is free in the term ττ before the substitution becomes bound after the substitution.

The syntax of λλ\-calculus is quite flexible. One can form all sorts of terms, even self-applications such as xxxx. Such terms appear at first blush to be suspicious; one might suspect that using such terms could lead to inconsistency, and in any case one might find oneself reaching for a tool with which to forbid such terms. If one were to view functions and sets of ordered pairs of a certain kind, then the xx in xxxx would be a function (set of ordered pairs) that contains as an element a pair (x,y)(x,y) whose first element would be xx itself. But no set can contain itself in this way, lest the axiom of foundation (or regularity) be violated. Thus, from a set theoretical perspective such terms are clearly dubious. Below one can find a brief sketch of one such tool, type theory. But in fact such terms do not lead to inconsistency and serve a useful purpose in the context of λλ\-calculus. Moreover, forbidding such terms, as in type theory, does not come for free (e.g., some of the expressiveness of untyped λλ\-calculus is lost).

### 2.2 Combinators

As defined earlier, a __*combinator*__ is a λλ\-term with no free variables. One can intuitively understand combinators as ‘completely specified’ operations, since they have no free variables. There are a handful of combinators that have proven useful in the history of λλ\-calculus; the next table highlights some of these special combinators. Many more could be given (and obviously there are infinitely many combinators), but the following have concise definitions and have proved their utility. Below is a table of some standard λλ\-terms and combinators.

Name

Definition & Comments

SS

λx\[λy\[λz\[xz(yz)\]\]\]λx\[λy\[λz\[xz(yz)\]\]\]  
Keep in mind that ‘xz(yz)xz(yz)’ is to be understood as the application (xz)(yz)(xz)(yz) of xzxz to yz.Syz.S can thus be understood as a substitute-and-apply operator: zz ‘intervenes’ between xx and yy: instead of applying xx to yy, we apply xzxz to yzyz.

KK

λx\[λy\[x\]\]λx\[λy\[x\]\]  
The value of KMKM is the constant function whose value for any argument is simply M.M.

II

λx\[x\]λx\[x\]  
The identity function.

BB

λx\[λy\[λz\[x(yz)\]\]\]λx\[λy\[λz\[x(yz)\]\]\]  
Recall that ‘xyzxyz’ is to be understood as (xy)z(xy)z, so this combinator is not a trivial identity function.

CC

λx\[λy\[λz\[xzy\]\]\]λx\[λy\[λz\[xzy\]\]\]  
Swaps an argument.

TT

λx\[λy\[x\]\]λx\[λy\[x\]\]  
Truth value true. Identical to KK. We shall see later how these representations of truth values plays a role in the blending of logic and λλ\-calculus.

FF

λx\[λy\[y\]\]λx\[λy\[y\]\]  
Truth value false.

ω

λx\[xx\]  
Self-application combinator

Ω

ωω  
Self-application of the self-application combinator. Reduces to itself.

Y

λf\[(λx\[f(xx)\])(λx\[f(xx)\])\]  
Curry’s paradoxical combinator. For every λ\-term X, we have: YX⊳(λx\[X(xx)\])(λx\[X(xx)\])⊳X((λx\[X(xx)\])(λx\[X(xx)\])) The first step in the reduction shows that YX reduces to the application term (λx\[X(xx)\])(λx\[X(xx)\]), which is recurring in the third step. Thus, Y has the curious property that YX and X(YX) reduce to a common term.

Θ

(λx\[λf\[f(xxf)\]\])(λx\[λf\[f(xxf)\]\])  
Turing’s fixed-point combinator. For every λ\-term X, ΘX reduces to X(ΘX), which one can confirm by hand. (Curry’s paradoxical combinator Y does not have this property.)

Below is a table of notational conventions employed in this entry.

Notation

Reading & Comments

MN

The application of the function M to the argument N.

Usually, parentheses are used to separate the function from the argument, like so: ‘M(N)’. However, in λ\-calculus and kindred subjects the parentheses are used as grouping symbols. Thus, it is safe to write the function and the argument adjacent to one other.

PQR

The application of the function PQ—which is itself the application of the function P to the argument Q—to R.

If we do not use parentheses to separate function and argument, how are we to disambiguate expressions that involve three or more terms, such as ‘PQR’? Recall our convention that we are to understand such officially illegal expressions by working from left to right, always putting parentheses around adjacent terms. Thus, ‘PQR’ is to be understood as (PQ)R. ‘PQRS’ is ((PQ)R)S. The expression ‘(PQ)R’ is disambiguated; by our convention, it is identical to PQR. The expression ‘P(QR)’ is also explicitly disambiguated; it is distinct from PQR because it is the application of P to the argument QR (which is itself the application of the function Q to the argument R).

(λx\[M\])

The λ term that __*binds*__ the variable x in the body term M.

The official vocabulary of the λ\-calculus consists of the symbol ‘λ’, left ‘(’and right ‘)’ parentheses, and a set of variables (assumed to be distinct from the three symbols ‘λ’, ‘(’, and ‘)’ lest we have syntactic chaos).

__Alternative notation__. It is not necessary to include two kinds of grouping symbols (parentheses and square brackets) in the syntax. Parentheses or square brackets alone would obviously suffice. The two kinds of brackets are employed in this entry for the sake of readability. Given the two kinds of grouping symbols, we could economize further and omit the parentheses from abstraction terms, so that ‘(λx\[M\])’ would be written as ‘λx\[M\]’.

Some authors write ‘λx.M’ or ‘λx⋅M’, with a full stop or a centered dot separating the bound variable from the body of the abstraction term. As with the square brackets, these devices are intended to assist reading λ\-terms; they are usually not part of the official syntax. (One sees this device used in earlier works of logic, such as *Principia Mathematica*, where the function of the symbol __.__ in expressions such as ‘∀x__.__ϕ’ is to get us to read the whole of the formula ϕ as under the scope of the ∀x.)

Some authors write abstraction terms without any device separating the bound variable from the body: such terms are crisply written as, e.g., ‘λxx’, ‘λyx’. The practice is not without its merits: it is about as concise as one can ask for, and permits an even simpler official syntax of the λ\-calculus. But this practice is not flawless. In ‘λxyz’, is the bound variable x or is it xy? Usually the names of variables are single letters, and theoretically this is clearly sufficient. But it seems unduly restrictive to forbid the practice of giving longer names to variables; indeed, such constructions arise naturally in computer programming languages.

For the sake of uniformity, we will adopt the square bracket notation in this entry. (Incidentally, this notation is used in (Turing, 1937).)

M\[x:=A\]

The λ\-term that is obtained by substituting the λ\-term A for all free occurrences of x inside M.

A bewildering array of notations to represent substitution can be found in the literature on λ\-calculus and kindred subjects:

M\[x/A\],M\[A/x\],MAx,MxA,\[x/A\]M,…

Which notation to use for substitution seems to be a personal matter. In this entry we use a linear notation, eschewing superscripts and subscripts. The practice of representing substitution with ‘:=’ comes from computer science, where ‘:=’ is read in some programming languages as assigning a value to a variable.

As with the square brackets employed to write abstraction terms, the square brackets employed to write substitution are not officially part of the syntax of the λ\-calculus. M and A are terms, x is a variable; M\[x:=A\] is another term.

M≡N

The λ\-terms M and N are identical: understood as sequences of symbols, M and N have the same length and corresponding symbols of the sequences are identical.

The syntactic identity relation ≡ is not part of the official syntax of λ\-calculus; this relation between λ\-terms belongs to the metatheory of λ\-calculus. It is clearly a rather strict notion of equality between λ\-terms. Thus, it is not the case (if x and y are distinct variables) that λx\[x\]≡λy\[y\], even though these two terms clearly ‘behave’ in the same way in the sense that both are expressions of the identity operation x⇒x. Later we will develop formal theories of equality of λ\-terms with the aim of capturing this intuitive equality of λx\[x\] and λy\[y\].

## 3\. Brief history of λ\-calculus

λ\-calculus arose from the study of functions as rules. Already the essential ingredients of the subject can be found in Frege’s pioneering work (Frege, 1893). Frege observed, as we did above, that in the study of functions it is sufficient to focus on unary functions (i.e., functions that take exactly one argument). (The procedure of viewing a multiple-arity operation as a sequence of abstractions that yield an equivalent unary operation is called __*currying*__ the operation. Perhaps it would be more historically accurate to call the operation __*fregeing*__, but there are often miscarriages of justice in the appellation of mathematical ideas.) In the 1920s, the mathematician Moses Schönfinkel took the subject further with his study of so-called *combinators*. As was common in the early days of the subject, Schönfinkel was interested in the kinds of transformations that one sees in formal logic, and his combinators were intended to be a contribution to the foundations of formal logic. By analogy with the reduction that one sees in classical propositional logic with the Sheffer stroke, Schöfinkel established the astonishing result that the all functions (in the sense of all transformations) could be given in terms of the combinators K and S; later we will see the definition of these combinators.

__Theorem__ For every term M made up of K and S and the variable x, there exists a term F (built only from K and S) such that we can derive Fx\=M.

(The proof that these two suffice to represent all functions is beyond the scope of this entry. For further discussion, see the entry on [combinatory logic][6].) One can prove the theorem constructively: there is an algorithm that, given M, produces the required F. Church called this F ‘λx\[M\]’ (Church, 1932).\[[3][7]\] From this perspective, the β\-rule can be justified: if ‘λx\[M\]’ is to be a function F satisfying Fx\=M, then λx\[M\]x should transform to M. This is just a special case of the more general principle that for all N,(λx\[M\])N should transform to M\[x:=N\].

Although today we have more clearly delimited systems of abstraction and rewriting, in its early days λ\-calculus and combinatory logic (à la Schönfinkel) were bound up with investigations of foundations of mathematics. In the hands of Curry, Church, Kleene, and Rosser (some of the pioneers in the subject) the focus was on defining mathematical objects and carrying out logical reasoning inside the these new systems. It turned out that these early attempts at so-called illative λ\-calculus and combinatory logic were inconsistent. Curry isolated and polished the inconsistency; the result is now known as Curry’s paradox. See the entry on [Curry’s paradox][8] and appendix B of (Barendregt, 1985).

The λ\-calculus earns a special place in the history of logic because it was the source of the first undecidable problem. The problem is: given λ\-terms M and N, determine whether M\=N. (A theory of equational reasoning about λ\-terms has not yet been defined; the definition will come later.) This problem was shown to be undecidable.

Another early problem in the λ\-calculus was whether it is consistent at all. In this context, inconsistency means that all terms are equal: one can reduce any λ\-term M to any other λ\-term N. That this is not the case is an early result of λ\-calculus. Initially one had results showing that certain terms were not interconvertible (e.g., K and S); later, a much more powerful result, the so-called Church-Rosser theorem, helped shed more light on β\-conversion and could be used to give quick proofs of the non-inter-convertibility of whole classes of λ\-terms. See below for more detailed discussion of consistency.

The λ\-calculus was a somewhat obscure formalism until the 1960s, when, at last, a ‘mathematical’ semantics was found. Its relation to programming languages was also clarified. Till then the only models of λ\-calculus were ‘syntactic’, that is, were generated in the style of Henkin and consisted of equivalence classes of λ\-terms (for suitable notions of equivalence). Applications in the semantics of natural language, thanks to developments by Montague and other linguists, helped to ‘spread the word’ about the subject. Since then the λ\-calculus enjoys a respectable place in mathematical logic, computer science, linguistics (see, e.g., Heim and Kratzer 1998), and kindred fields.

## 4\. Reduction

Various notions of reduction for λ\-terms are available, but the principal one is β\-reduction, which we have already seen earlier. Earlier we used the notation ‘⊳’; we can be more precise. In this section we discuss β\-reduction and some extensions.

__Definition__ (one-step β\-reduction ⊳β,1) For λ\-terms A and B, we say that A β\-reduces in one step to B, written A⊳β,1B, just in case there exists an (occurrence of a) subterm C of A, a variable x, and λ\-terms M and N such that C≡(λx\[M\])N and B is A except that the occurrence of C in A is replaced by M\[x:=N\].

Here are some examples of β\-reduction:

1.  The variable x does not β\-reduce to anything. (It does not have the right shape: it is simply a variable, not an application term whose left-hand side is an abstraction term.)
    
2.  (λx\[x\])a⊳β,1a.
    
3.  If x and y are distinct variables, then (λx\[y\])a⊳β,1y.
    
4.  The λ\-term (λx\[(λy\[xy\])a\])b\] β\-reduces in one step to two different λ\-terms:
    
    (λx\[(λy\[xy\])a\])b⊳β,1(λy\[by\])a
    
    and
    
    (λx\[(λy\[xy\])a\])b⊳β,1(λx\[xa\])b
    
    Moreover, one can check that these two terms β\-reduce in one step to a common term: ba. We thus have:
    
    (λy\[by\])a
    
    ↗
    
    ↘
    
    (λx\[(λy\[xy\])a\])b
    
    ba
    
    ↘
    
    ↗
    
    (λx\[xa\])b
    

As with any binary relation, one can ask many questions about the relation ⊳β,1 holding between λ\-terms, and one can define various derived notions in terms of ⊳β,1.

__Definition__ A __*β\-reduction sequence*__ from a λ\-term A to a λ\-term B is a finite sequence s1,…sn of λ\-terms starting with A, ending with B, and whose adjacent terms (sk,sk+1) satisfy the property that sk⊳β,1sk+1.

More generally, any sequence s—finite or infinite—starting with a λ\-term A is said to be a β\-reduction sequence commencing with A provided that the adjacent terms (sk,sk+1) of s satisfy the property that sk⊳β,1sk+1.

1.  Continuing with β\-reduction Example 1, there are no β\-reduction sequences at all commencing with the variable x.
    
2.  Continuing with β\-reduction Example 2, the two-term sequence
    
    (λx\[x\])a,a
    
    is a β\-reduction sequence from (λx\[x\])a to a. If a is a variable, then this β\-reduction sequence cannot be prolonged, and there are no other β\-reduction sequences commencing with (λx\[x\])a; thus, the set of β\-reduction sequences commencing with (λx\[x\])a is finite and contains no infinite sequences.
    
3.  The combinator Ω has the curious property that Ω⊳β,1Ω. Every term of every β\-reduction sequence commencing with Ω (finite or infinite) is equal to Ω.
4.  Consider the term KaΩ. There are infinitely many reduction sequences commencing with this term:
    
    -   KaΩ⊳β,1a
    -   KaΩ⊳β,1KaΩ⊳β,1a
    -   KaΩ⊳β,1KaΩ⊳β,1KaΩ⊳β,1a
    -   KaΩ⊳β,1KaΩ⊳β,1KaΩ…
    
    If a is a variable, one can see that all finite reduction sequences commencing with KaΩ end at a, and there is exactly one infinite reduction sequence.
    

__Definition__ A __*β\-redex*__ of a λ\-term M is (an occurrence of) a subterm of M of the form (λx\[P\])Q. (‘redex’ comes from ‘reducible expression.) A β\-redex is simply a candidate for an application of β\-reduction. Doing so, one __*contracts*__ the β\-redex. A term is said to be in __*β\-normal form*__ if it has no β\-redexes.

(Can a term have multiple β\-normal forms? The answer is literally ‘yes’, but substantially the answer is ‘no’: If a M and M′ are β\-normal forms of some term, then M is α\-convertible to M′ Thus, β\-normal forms are unique up to changes of bound variables.)

So far we have focused only on one step of β\-reduction. One can combine multiple β\-reduction steps into one by taking the transitive closure of the relation ⊳β,1.

__Definition__ For λ\-terms A and B, one says that A __*β\-reduces*__ to B, written A⊳βB, if either A≡B or there exists a finite β\-reduction sequence from A to B.

__Definition__ A term M __*has a β\-normal form*__ if there exists a term N such that N is in β\-normal form an M⊳βN.

Reducibility as defined is a one-way relation: it is generally not true that if A⊳βB, then B⊳βA. However, depending on one’s purposes, one may wish to treat A and B as equivalent if either A reduces to B or B reduces to A. Doing so amounts to considering the reflexive, symmetric, and transitive closure of the relation ⊳β,1,.

__Definition__ For λ\-terms A and B, we say that A\=βB if either A≡B or there exists a sequence s1,…sn starting with A, ending with B, and whose adjacent terms (sk,sk+1) are such that either sk⊳β,1sk+1 or sk+1⊳β,1sk.

### 4.1 Other notions of reduction

We have thus far developed the theory of β\-reduction. This is by no means the only notion of reduction available in the λ\-calculus. In addition to β\-reduction, a standard relation between λ\-terms is that of __*η\-reduction*__:

__Definition__ (one-step η\-reduction) For λ\-terms A and B, we say that A βη\-reduces in one step to B, written A⊳βη,1B, just in case there exists an (occurrence of a) subterm C of A, a variable x, and λ\-terms M and N such that either

C≡(λx\[M\])N and B is A except that the occurrence of C in A is replaced by M\[x:=N\]

or

C≡(λx\[Mx\]) and B is A except that the occurrence of C in A is replaced by M.

The first clause in the definition of ⊳βη,1 ensures that the relation extends the relation of one-step β\-reduction. As we did for the relation of one-step β\-reduction, we can replay the development for η\-reduction. Thus, one has the notion of an η\-redex, and from ⊳η,1 one can define the relation ⊳η between λ\-terms as the symmetric and transitive closure of ⊳η,1, which captures zero-or-more-steps of η\-reduction. Then one defines \=η as the symmetric and transitive closure of ⊳η.

If A⊳η,1B, then the length of B is strictly smaller than that of A. Thus, there can be no infinite η\-reductions. This is not the case of β\-reduction, as we saw above in [β\-reduction sequence examples 3][9] and [4][10].

One can combine notions of reduction. One useful combination is to blend β\- and η\-reduction.

__Definition__ (one-step βη\-reduction) λx\[Mx\]⊳βη,1M and (λx\[M\]N))⊳βη,1M\[x:=N\]. A λ\-term A βη\-reduces in one step to a λ\-term B just in case either A β\-reduces to B in one step or A η\-reduces to B in one step.

Again, one can replay the basic concepts of reduction, as we did for β\-reduction, for this new notion of reduction βη.

### 4.2 Reduction strategies

Recall that a term is said to be in β\-normal form if it has no β\-redexes, that is, subterms of the shape (λx\[M\])N. A term has a β\-normal form if it can be reduced to a term in β\-normal form. It should be intuitively clear that if a term has a β\-normal form, then we can find one by exhaustively contracting all all β\-redexes of the term, then exhaustively contracting all β\-redexes of all resulting terms, and so forth. To say that a term has a β\-normal form amounts to saying that this blind search for one will eventually terminate.

Blind search for β\-normal forms is not satisfactory. In addition to be aesthetically unpleasant, it can be quite inefficient: there may not be any need to exhaustively contract all β\-redexes. What is wanted is a *strategy*—preferably, a computable one—for finding a β\-normal form. The problem is to effectively decide, if there are multiple β\-redexes of a term, which ought to be reduced.

__Definition__ A __*β\-reduction strategy*__ is a function whose domain is the set of all λ\-terms and whose value on a term M not in β\-normal form is a redex subterm of M, and whose value on all terms M in β\-normal form is simply M.

In other words, a β\-reduction strategy selects, whenever a term has multiple β\-redexes, which one should be contracted. (If a term is in β\-normal form, then nothing is to be done, which is why we require in the definition of β\-reduction strategy that it does not change any term in β\-normal form.) One can represent a strategy S as a relation ⊳S on λ\-terms, with the understanding that M⊳SN provided that N is obtained from M in one step by adhering to the strategy S. When viewed as relations, strategies constitute a subrelation of ⊳β,1.

A β\-reduction strategy may or may not have the property that adhering to the strategy will ensure that we (eventually) reach a β\-normal form, if one exists.

__Definition__ A β\-reduction strategy S is __*normalizing*__ if for all λ\-terms M, if M has a β\-normal form N, then the sequence M,S(M),S(S(M)),… terminates at N.

Some β\-reduction strategies are normalizing, but others are not.

-   The __*rightmost strategy*__, whereby we always choose to reduce the rightmost β\-redex (if there are any β\-redexes) is not normalizing. Consider, for example, the term __KIω__. This term has two β\-redexes: itself, and __ω__ (which, recall, is the term (λx\[xx\])(λx\[xx\])). By working with left-hand β\-redexes, we can β\-reduce __KIω__ to I in two steps. If we insist on working with the rightmost β\-redex __ω__ we reduce __KIω__ to KI(__ωω__), then KI(__ωωω__), ….
-   The __*leftmost strategy*__, whereby we always choose to reduce the leftmost β\-redex (if there are any β\-redexes) is normalizing. The proof of this fact is beyond the scope of this entry; see (Barendregt, 1985, section 13.2) for details.

Once we have defined a reduction strategy, it is natural to ask whether one can improve it. If a term has a β\-normal form, then a strategy will discover a normal form; but might there be a shorter β\-reduction sequence that reaches the same normal form (or a term that is α\-convertible to that normal form)? This is the question of *optimality*. Defining optimal strategies and showing that they are optimal is generally considerably more difficult than simply defining a strategy. For more discussion, see (Barendregt, 1984 chapter 10).

For the sake of concreteness, we have discussed only β\-reduction strategies. But in the definitions above the notion of reduction β is but one possibility. For any notion R of reduction we have the associated theory of R\-reduction strategies, and one can replay the problems of normalizability, optimality, etc., for R.

## 5\. λ\-theories

We discussed earlier how the λ\-calculus is a non-extensional theory of functions. If, in the non-extensional spirit, we understand λ\-terms as descriptions, how should we treat equality of λ\-terms? Various approaches are available. In this section, let us treat the equality relation = as a primitive, undefined relation holding between two λ\-terms, and try to *axiomatize* the properties that equality should have. The task is to identity axioms and formulate suitable __*rules of inference*__ concerning the equality of λ\-terms.

Some obvious properties of equality, having nothing to do with λ\-calculus, are as follows:

X\=X X\=YY\=X X\=YY\=ZX\=Z

As is standard in proof theory, the way to read these rules of inference is that above the horizontal rule X\=X are the __*premises*__ of the rule (which are equations) and the equation below the horizontal rule is the __*conclusion*__ of the rule of inference. In the case of the reflexivity rule, nothing is written above the horizontal rule. We understand such a case as saying that, for all terms X, we may infer the equation X\=X from no premises.

### 5.1 The basic theory λ

The three rules of inference listed in the previous section governing equality have nothing to do with the λ\-calculus. The following lists rules of inference that relate the undefined notion of equality and the two term-building operations of the λ\-calculus, application and abstraction.

M\=NAM\=ANM\=NMA\=NAM\=Nλx\[M\]\=λx\[N\]

These rules of inference say that = is a __*congruence relation*__ on the set of λ\-terms: it ‘preserves’ both the application and abstraction term-building operations

The final rule of inference, β\-conversion, is the most important:

(λx\[M\])A\=M\[x:=A\]

As before with the reflexivity rule, the rule β has no premises: for any variable x and any terms M and A, one can infer the equation (λx\[M\])A\=M\[x:=A\] at any point in a formal derivation in the theory λ.

### 5.2 Extending the basic theory λ

A number of extensions to λ are available. Consider, for example, the rule (η), which expresses the principle of η\-reduction as a rule of inference:

λx\[Mx\]\=M provided x∉FV(M)

Rule η tells us that a certain kind of abstraction is otiose: it is safe to identify M with the function that, given an argument x, applies M to x. Through this rule we can also see that all terms are effectively functions. One can intuitively justify this rule using the principle of β\-reduction.

Mx\=NxM\=N provided x∉FV(M)∪FV(N)

One can view rule Ext as a kind of generalization principle. If we have derived that Mx\=Nx, but x figures in neither M nor N, then we have effectively shown that M and N are alike. Compare this principle to the principle of universal generalization in first-order logic: if we have derived ϕ(x) from a set Γ of hypotheses in which x is not free, then we can conclude that Γ derives ∀xϕ.

Another productive principle in the λ\-calculus permits us to identify terms that ‘act’ the same:

For all terms x,Mx\=NxM\=N

The rule ω has infinitely many hypotheses: on the assumption that Mx\=Nx, no matter what x may be, then we can conclude that M\=N. The ω rule is an analogue in the λ\-calculus of the rule of inference under the same name in formal number theory, according to which one can conclude the universal formula ∀xϕ provided one has proofs for ϕ(x:=0),ϕ(x:=1),… . Note that unlike the rule Ext, the condition that x not occur freely in M or N does not arise.

## 6\. Consistency of the λ\-calculus

Is the λ\-calculus consistent? The question might not be well-posed. The λ\-calculus is not a logic for reasoning about propositions; there is no apparent notion of contradiction (⊥) or a method of forming absurd propositions (e.g., p∧¬p). Thus ‘inconsistency’ of the λ\-calculus cannot mean that ⊥, or some formula tantamount to ⊥, is derivable. A suitable notion of ‘consistent’ is, however, available. Intuitively, a logic is inconsistent if it permits us to derive too much. The theory __λ__ is a theory of equations. We can thus take inconsistency of __λ__ to mean: *all equations are derivable*. Such a property, if it were true of __λ__, would clearly show that __λ__ is of little use as a formal theory.

Early formulations of the idea of λ\-calculus by A. Church were indeed inconsistent; see (Barendregt, 1985, appendix 2) or (Rosser, 1985) for a discussion. To take a concrete problem: how do we know that the equation K\=I is not a theorem of __λ__? The two terms are obviously intuitively distinct. K is a function of two arguments, whereas I is a function of one argument. If we could show that K\=I, then we could show that KK\=IK, whence KK\=K would be a theorem of __λ__, along with many other equations that strike us as intuitively unacceptable. But when we’re investigating a formal theory such as __λ__, intuitive unacceptability by no means implies underivability. What is missing is a deeper understanding of β\-reduction.

An early result that gave such an understanding is known as the Church-Rosser theorem:

__Theorem__ (Church-Rosser) If P⊳βQ and P⊳β R, then there exists a term S such that both Q⊳βS and R⊳βS.

(The proof of this theorem is quite non-trivial and is well-beyond the scope of this entry.) The result is a deep fact about β\-reduction. It says that no matter how we diverge from P by β\-reductions, we can always converge again to a common term.

The Church-Rosser theorem gives us, among other things, that the plain λ\-calculus—that is, the theory __λ__ of equations between λ\-terms—is consistent, in the sense that not all equations are derivable.

As an illustration, we can use the Church-Rosser theorem to solve the earlier problem of showing that the two terms K and I are not identified by __λ__. The two terms are in β\-normal form, so from them there are no β\-reduction sequences at all. If K\=I were a theorem of __λ__, then there would be a term M from which there is a β\-reduction path to both I and K. The Church-Rosser theorem then implies the two paths diverging from M can be merged. But this is impossible, since K and I are distinct β\-normal forms.

The Church-Rosser theorem implies the existence of β\-reduction sequences commencing from K and from I that end at a common term. But there are no β\-reduction sequences at all commencing from I, because it is in β\-normal form, and likewise for K.

__Theorem__ __λ__ is consistent, in the sense that not every equation is a theorem.

To prove the theorem, it is sufficient to produce one underivable equation. We have already worked through an example: we used the Church-Rosser theorem to show that the equation K\=I is not a theorem of __λ__. Of course, there’s nothing special about these two terms. A significant generalization of this result is available: *if M and N in β\-normal form but M is distinct from N, then the equation M\=N is not a theorem of __λ__*. (This simple condition for underivability does not generally hold if we add additional rules of inference to __λ__.)

The theories __λη__ and __λω__ are likewise consistent. One can prove these consistency results along the lines of the consistency proof for __λ__ by extending the Church-Rosser theorem to the wider senses of derivability of these theories.

## 7\. Semantics of λ\-calculus

Although the λ\-calculus is ‘about’ calculating with functions by substituting values for arguments, this simple point of view cannot support a semantics for the (untyped) λ\-calculus if by ‘function’ we understand, as is standard in set theory, a relation R such that for every pair (x,y) and (x,z) in R with the same first component x we have y\=z. For sets X and Y, let XY denote the set of functions whose domain is Y and with values in X. Intuitively, if X is the domain of an interpretation of λ\-calculus, then X should be, in some sense, isomorphic to XX because the domain should be closed under abstraction (as well as application). Taken literally, though, this isomorphism is impossible, because the cardinality of X always is of strictly smaller than the cardinality of XX.

If one is interested in simply the *existence* of some kind of model of the λ\-calculus—one whose domain not necessarily consist of functions—one can find them by various well-known ‘syntactic’ constructions involving the theory __λ__, not unlike the well-known Henkin constructions . These so-called term models, though, are an unsatisfactory solution to the question of whether there are ‘mathematical’ models of the λ\-calculus.

The cardinality argument shows that if we are to have a semantics for λ\-calculus, the interpretation of λ\-terms cannot simply be functions in the set-theoretic sense of the term. There are, however, interpretations of λ\-calculus. The first model, D∞, was found by D. Scott; other models were found later. These models solve the cardinality problem by restricting the domain X of interpretation, so that, in them, X is in a suitable sense isomorphic to the ‘function space’ XX.

One of the advantages of having different interpretations is that one sees different aspects of equality: each of these models takes a different view on what λ\-terms get identified. The definitions of D∞ and other interpretations, the verifications that they are indeed models of λ\-calculus, and the characterizations of the λ\-theories of these models, are beyond the scope of this entry; see (Barendregt, 1985, chapter 18) or (Meyer 1982) for details. In recent years, there is a renewed interest in the models of λ\-calculus from the perspective of category theory and categorical logic, focusing mainly on typed λ\-calculus (see sections [8.2][11] and [9.1.2][12] below) but also dealing with category theoretic models of the untyped λ\-calculus discussed in this article. See, for example, (Hyland, 2017) for details.

## 8\. Extensions and Variations

### 8.1 Combinatory logic

A sister formalism of the λ\-calculus, developed slightly earlier, deals with variable-free combinations. __*Combinatory logic*__ is indeed even simpler than the λ\-calculus, since it lacks a notion of variable binding.

The language of combinatory logic is built up from __*combinators*__ and variables. There is some flexibility in precisely which combinators are chosen as basic, but some standard ones are I,K,S,B and C. (The names are not arbitrary.)

As with the λ\-calculus, with combinatory logic one is interested in *reducibility* and *provability*. The principal reduction relations are:

Combinator

Reduction Axiom

I

Ix\=x

K

Kxy\=x

S

Sxyz\=xz(yz)

B

Bxyz\=x(yz)

C

Cxyz\=xzy

There is a passage from λ\-calculus to combinatory logic via translation. It turns out that although combinatory logic lacks a notion of abstraction, one can define such a notion and thereby simulate the λ\-calculus in combinatory logic. Here is one translation; it is defined recursively.

Rule

Expression

Translation

Condition

1

x

x

(unconditional)

2

MN

M∗N∗

(unconditional)

3

λx\[M\]

KM

x does not occur freely in M

4

λx\[x\]

I

(unconditional)

5

λx\[Mx\]

M

x does not occur freely in M

6

λx\[MN\]

BM(λx\[N)\]∗

x does not occur freely in M

7

λx\[MN\]

C(λx\[M\])∗N

x does not occur freely in N

8

λx\[MN\]

SM∗N∗

x occurs freely in both M and N

This translation works inside-out, rather than outside-in. To illustrate:

1.  The translation of the term λy\[y\], a representative of the identity function, is mapped by this translation to the identity combinator I (because of Rule 4), as expected.
    
2.  The λ\-term λx\[λy\[x\]\] that we have been calling ‘K’is mapped by this translation to:
    
    λx\[λy\[x\]\]≡λx\[Kx\]⟨Rule 1⟩≡K⟨Rule 3⟩
3.  The λ\-term λx\[λy\[yx\]\] that switches its two arguments is mapped by this translation to:
    
    λx\[λy\[yx\]\]≡λx\[C(λy\[y\])∗x\]⟨Rule 8⟩≡λx\[CIx\]⟨λy\[y\]≡I, by Rule 4⟩≡BCI)(λx\[x\])∗⟨Rule 7⟩≡B(CI)I⟨(λx\[x\])∗≡I, by Rule 4⟩
    
    We can confirm that the λ\-term λx\[λy\[yx\]\] and the translated combinatory logic term B(CI)I have analogous applicative behavior: for all λ\-terms P and Q we have
    
    (λx\[λy\[yx\]\])PQ⊳(λy\[yP\])⊳QP;
    
    likewise, for all combinatory logic terms P and Q we have
    
    B(CI)IPQ⊳(CI)(IP)Q⊳IQ(IP)⊳Q(IP)⊳QP

We can give but a glimpse of combinatory logic; for more on the subject, consult the entry on [combinatory logic][13]. Many of the issues discussed here for λ\-calculus have analogues in combinatory logic, and vice versa.

### 8.2 Adding types

In many contexts of reasoning and computing it is natural to distinguish between different kinds of objects. The way this distinction is introduced is by requiring that certain formulas, functions, or relations accept arguments or permit substitution only of some kinds of objects rather than others. We might require, for example, that addition + take numbers as arguments. The effect of this restriction is to forbid, say, the addition of 5 and the identity function λx.x.([4][14]). Regimenting objects into types is also the idea behind the passage from (unsorted, or one-sorted) first-order logic to *many-sorted* first-order logic. (See (Enderton, 2001) and (Manzano, 2005) for more about many-sorted first-order logic.) As it stands, the λ\-calculus does not support this kind of discrimination; any term can be applied to any other term.

It is straightforward to extend the untyped λ\-calculus so that it discriminates between different kinds of objects. This entry limits itself to the *type-free* λ\-calculus. See the entries on [type theory][15] and [Church’s type theory][16] for a detailed discussion of the extensions of λ\-calculus that we get when we add types, and see (Barendregt, Dekkers, Statman, 2013) for a book length treatment of the subject.

## 9\. Applications

### 9.1 Logic à la λ

Here are two senses in which λ\-calculus is connected with logic.

#### 9.1.1 Terms as logical constants

In the [table of combinators][17] above, we defined combinators T and F and said that they serve as representations in the λ\-calculus of the truth values true and false, respectively. How do these terms function as truth values?

It turns out that when one is treating λ\-calculus as a kind of programming language, one can write conditional statements “If P then A else B” simply as PAB, where of course P,A, and B are understood as λ\-terms. If P⊳T, that is, P is ‘true’, then we have

if-P\-then-A\-else-B:=PAB⊳TAB⊳A,

(recall that, by definition, T≡K) and if P⊳F, that is, P is ‘false’, then

if-P\-then-A\-else-B:=PAB⊳FAB⊳B,

(recall that, by definition, F≡KI) which is just what we expect from a notion of if-then-else. If P reduces neither to T nor F, then we cannot in general say what if-P\-then-A\-else-B is.

The encoding we’ve just sketched of some of the familiar truth values and logical connectives of classical truth-table logic does not show that λ\-calculus and classical logic are intimately related. The encoding shows little more than embeddibility of the rules of computation of classical truth-table logic in λ\-calculus. Logics other than classical truth-table logic can likewise be represented in the λ\-calculus, if one has sufficient computable ingredients for the logic in question (e.g., if the logical consequence relation is computable, or if a derivability relation is computable, etc.). For more on computing with λ\-calculus, see section [9.2][18] below. A more intrinsic relationship between logic and λ\-calculus is discussed in the next section.

#### 9.1.2 Typed λ\-calculus and the Curry-Howard-de Bruijn correspondence

The correspondence to be descried here between logic and the λ\-calculus is seen with the help of an apparatus known as *types*. This section sketches the beginnings of the development of the subject known as __*type theory*__. We are interested in developing type theory only so far as to make the so-called Curry-Howard-de Bruijn correspondence visible. A more detailed treatment can be found in the entry on [type theory][19]; see also (Hindley, 1997) and (Barendregt, Dekkers, Statman, 2013).

Type theory enriches the untyped λ\-calculus by requiring that terms be given __*types*__. In the untyped λ\-calculus, the application MN is a legal term regardless of what M and N are. Such freedom permits one to form such suspicious terms as xx, and thence terms such as the paradoxical combinator Y. One might wish to exclude terms like xx on the grounds that x is serving both as a function (on the left-hand side of the application) and as an argument (on the right-hand side of the application). Type theory gives us the resources for making this intuitive argument more precise.

__Assigning types to terms__ The language of type theory begins with an (infinite) set of __*type variables*__ (which is assumed to be disjoint from the set of variables of the λ\-calculus and from the symbol ‘λ’ itself). The set of types is made up of type variables and the operation σ→τ. Variables in type theory now come with a __*type annotation*__ (unlike the unadorned term variables of untyped λ\-calculus). Typed variables are rendered ‘x:σ’; the intuitive reading is ‘the variable x has the type σ’. The intuitive reading of the judgment ‘t:σ→τ’ is that the term t is a function that transforms arguments of type σ into arguments of type τ. Given an assignment of types to term variables, one has the typing rules:

(M:σ→τ)(N:σ):τ

and

(λx:σ\[M:τ\]):σ→τ

The above two rules define the assignment of types to applications and to abstraction terms. The set of terms of type theory is the set of terms built up according to these formation rules.

The above definition of the set of terms of type theory is sufficient to rule out terms such as xx. Of course, ‘xx’ is not a typed term at all for the simple reason that no types have been assigned to it. What is meant is that there is no type σ that could be assigned to x such that ‘xx’ could be annotated in a legal way to make a typed term. We cannot assign to x a type variable, because then the type of the left-hand x would fail to be a function type (i.e., a type of the shape ‘σ→τ’). Moreover, we cannot assign to x a function type σ→τ, because then then σ would be equal to σ→τ, which is impossible.

As a leading example, consider the types that are assigned to the combinators I, K, and S:

Combinator  

Type\[[5][20]\]

I

a→a

K

a→(b→a)

S

(a→(b→c))→((a→b)→(a→c))

(See Hindley (1997) *Table of principal types* for a more extensive listing.) If we read ‘→’ as implication and type variables as propositional variables, then we recognize three familiar tautologies in the right-hand column of the table. The language used is meager: there are only propositional variables and implication; there are no other connectives.

The table suggests an interesting correspondence between the typed λ\-calculus and formal logic. Could it really be that the types assigned to formulas, when understood as logical formulas, are valid? Yes, though ‘validity’ needs to understood not as classical validity:

__Theorem__ If τ is the type of some λ\-term, then τ is intuitionistically valid.

The converse of this theorem holds as well:

__Theorem__ If ϕ is an intuitionistically valid logical formula whose only connective is implication (→), then ϕ is the type of some λ\-term.

The correspondence can be seen when one identifies intuitionistic validity with derivability in a certain natural deduction formalism. For a proof of these two theorems, see (Hindley, 1997, chapter 6).

The correspondence expressed by the previous two theorems between intuitionistic validity and typability is known as the *Curry-Howard-de Bruijn* correspondence, after three logicians who noticed it independently. The correspondence, as stated, is between only propositional intuitionistic logic, restricted to the fragment containing only the implication connective →. One can extend the correspondence to other connectives and to quantifiers, too, but the most crisp correspondence is at the level of the implication-only fragment. For details, see (Howard, 1980).

### 9.2 Computing

One can represent natural numbers in a simple way, as follows:

__Definition__ (ordered tuples, natural numbers) The ordered tuple ⟨a0,…an⟩ of λ\-terms is defined as λx\[xa0…an\]. One then defines the λ\-term ⌜n⌝ corresponding to the natural number n as: ⌜0⌝\=I and, for every k, ⌜k+1⌝\=⟨F,⌜k⌝⟩.

1.  The λ\-term corresponding to the number 1, on this representation, is:
    
    ⌜1⌝≡⟨F,⌜0⌝⟩≡⟨F,I⟩≡λx\[xFI\]
2.  The λ\-term corresponding to the number 2, on this representation, is:
    
    ⌜2⌝≡⟨F,⌜1⌝⟩≡λx\[xFλx\[xFI\]\]
3.  Similarly, ⌜3⌝ is λx\[xFλx\[xFλx\[xFI\]\]\].
    

Various representations of natural numbers are available; this representation is but one.\[[6][21]\]

Using the ingredients provided by the λ\-calculus, one can represent all recursive functions. This shows that the model is exactly as expressive as other models of computing, such as Turing machines and register machines. Priority goes to Turing’s definition of his machine, but Church’s proposal of the λ\-calculus was developed at almost exactly the same time.

__Theorem__ For every recursive function f of arity n, there exists a λ\-term f∗ such that

for all natural numbers a1,…an: f(a1,…an)\=y iff λ⊢f∗⟨ˉa1,…,ˉan⟩\=ˉy

For a proof, see [the appendix][22].

Since the class of recursive functions is an adequate representation of the class of all computable (number-theoretic) functions, thanks to the work above we find that all computable (number-theoretic) functions can be faithfully represented in the λ\-calculus.

### 9.3 Relations

The motivation for the λ\-calculus given at the beginning of the entry was based on reading λ\-expressions as descriptions of functions. Thus, we have understood ‘λx\[M\]’ to be a (or the) function that, given x, gives M (which generally, though not necessarily, involves x). But it is not necessary to read λ\-terms as functions. One could understand λ\-terms as denoting relations, and read an abstraction term ‘λx\[M\]’ as the unary relation (or property) R that holds of an argument x just in case M does (see Carnap 1947, p. 3). On the relational reading, we can understand an application term MN as a form of predication. One can make sense of these terms using the principle of β\-conversion:

(λx\[M\])a\=M\[x:=A\],

which says that the abstraction relation λx\[M\], predicated of A, is the relation obtained by plugging in A for all free occurrences of x inside M.

As a concrete example of this kind of approach to λ\-calculus, consider an extension of first-order logic where one can form new atomic formulas using λ\-terms, in the following way:

__Syntax__: For any formula ϕ and any finite sequence x1,…,xn of variables, the expression ‘λx1…xn\[ϕ\]’ is a predicate symbol of arity n. Extend the notion of free and bound variables (using the functions FV and BV) in such a way that

FV(λx1…xn\[ϕ\])\=FV(ϕ)−{x1,…xn}

and

BV(λx1…xn\[ϕ\])\=BV(ϕ)∪{x1,…xn}

__Deduction__ Assume as axioms the universal closures of all equivalences

λx1…xn\[ϕ\](t1,…tn)↔ϕ\[x1,…xn:=t1,…tn\]

where ϕ\[x1,…xn:=t1,…tn\] denotes the simultaneous substitution of the terms tk for the variables xk (1≤k≤n).

__Semantics__ For a first-order structure A and an assignment s of elements of A to variables, define

A⊨λx1…xn\[ϕ\](t1,…tn)\[s\] iff A⊨ϕ\[x1,…xn:=t1,…tn\]\[s\]

According to this approach, one can use a λ to treat essentially any formula, even complex ones, as if they were atomic. We see the principle of β\-reduction in the deductive and semantic parts. That this approach adheres to the relational reading of λ terms can be seen clearly in the semantics: according to the standard Tarski-style semantics for first-order logic, the interpretation of a formula (possibly with free variables) denotes a set of tuples of elements of the structure, as we vary the variable assignment that assigns elements of the structure to the variables.

One can ‘internalize’ this functional approach. This is done in the case of various *property theories*, formal theories for reasoning about properties as metaphysical objects (Bealer 1982, Zalta 1983, Menzel 1986, 1993, and Turner 1987). This kind of theory is employed in certain metaphysical investigations where properties are metaphysical entities to be investigated. In these theories, metaphysical relations are (or are among) the objects of interest; just as we add term-building symbols + and × in formal theories of arithmetic to build numbers, λ is used in property theory to build relations. This approach contrasts with the approach above. There, λ was added to the grammar of first-order logic by making it a recipe for building atomic formulas; it was a new formula-building operator, like ∨ or → or the other connectives. In the case of property theories, the λ plays a role more like + and × in formal theories of arithmetic: it is used to construct relations (which, in this setting, are to be understood as a kind of metaphysical object). Unlike + and ×, though, the λ binds variables.

To give an illustration of how λ is used in this setting, let us inspect the grammar of a typical application (McMichael and Zalta, 1980). One typically has a *predication operator* (or, more precisely, a family of predication operators) pk(k≥0). In a language where we have terms MARY and JOHN and a binary relation loves, we can formally express:

-   John loves Mary: loves(JOHN,MARY)
-   The property that John loves Mary: λ\[loves(JOHN,MARY)\] (note that the λ is binding no variables; we might call this ‘vacuous binding’. Such properties can be understood as propositions.)
-   The property of an object x that John loves it: λx\[loves(JOHN,x)\].
-   The property that Mary is loved by something: λ\[∃x(loves(x,MARY))\] (another instance of vacuous binding, viz., proposition)
-   The predication of the property of x that John loves x to Mary: p1(λx\[loves(JOHN,x)\],MARY).
-   The (0-ary) predication of the property that John loves Mary: p0(λx\[loves(JOHN,MARY)\]).
-   The property of objects x and y that x loves y: λxy\[loves(x,y)\].
-   The property of an objects x that x loves itself: λx\[loves(x,x)\].
-   The predication of the property of objects x and y that x loves y to John and Mary (in that order): p2(λxy\[loves(x,y)\],JOHN,MARY).

We reason with these λ\-terms using a β\-conversion principle such as:

pn(λx1,…xn\[A\],t1,…,tn)↔A\[x1,…xn:=t1,…,tn\]

Formally, the predication operator pk is a (k+1)\-ary predicate symbol. The first argument is intended to be a λ\-term of k arguments, and the rest of the arguments are intended to be the arguments of the body of the λ\-term. The β\-principle above says that the predication of an n\-ary λ\-term L to n terms holds precisely when the body of L holds of those terms.

It turns out that in these theories, we may or may not be able to be fully committed to the principle of β\-conversion. Indeed, in some property theories, the full principle of β\-conversion leads to paradox, because one can replay a Russell-style argument when the full principle of β\-conversion is in place. In such settings, one restricts the formation of λ\-formulas by requiring that the body of a λ\-term not contain further λ\-terms or quantifiers. For further discussion, see (Orilia, 2000).

One of the reasons why property theories formulated in the λ\-calculus are of a particular philosophical importance is the *hyperintensional* nature of the calculus (see section [1.2][23]). A property concept may be called ‘*hyperintensional*’ if and only if it does not identify necessarily coextensional properties, i.e. properties that are instanciated by exactly the same objects at every possible world. The properties and relations described by the theories of Bealer, Zalta, Menzel, and Turner have exactly this characteristic. In other words, the theories are hyperintensional property theories. Recent years have seen a significant rise of interest in hyperintensional concepts of properties in metaphysics (Nolan 2014), and correspondingly property theories formulated in the λ\-calculus will likely experience a rise of interest as well.

In the context of the foundations of mathematics, Zalta and Oppenheimer (2011) argue for the conceptual priority of the relational interpretation of λ\-terms over the functional one.

[1]: https://plato.stanford.edu/entries/lambda-calculus/#SemLCal
[2]: https://plato.stanford.edu/entries/lambda-calculus/#Relations
[3]: https://plato.stanford.edu/entries/lambda-calculus/#LThe
[4]: https://plato.stanford.edu/entries/lambda-calculus/notes.html#note-1
[5]: https://plato.stanford.edu/entries/lambda-calculus/notes.html#note-2
[6]: https://plato.stanford.edu/entries/logic-combinatory/
[7]: https://plato.stanford.edu/entries/lambda-calculus/notes.html#note-3
[8]: https://plato.stanford.edu/entries/curry-paradox/
[9]: https://plato.stanford.edu/entries/lambda-calculus/#beta-reduction-sequence-example-3
[10]: https://plato.stanford.edu/entries/lambda-calculus/#beta-reduction-sequence-example-4
[11]: https://plato.stanford.edu/entries/lambda-calculus/#AddTyp
[12]: https://plato.stanford.edu/entries/lambda-calculus/#TypedLambda
[13]: https://plato.stanford.edu/entries/logic-combinatory/
[14]: https://plato.stanford.edu/entries/lambda-calculus/notes.html#note-4
[15]: https://plato.stanford.edu/entries/type-theory/
[16]: https://plato.stanford.edu/entries/type-theory-church/
[17]: https://plato.stanford.edu/entries/lambda-calculus/#combinator-table
[18]: https://plato.stanford.edu/entries/lambda-calculus/#Computing
[19]: https://plato.stanford.edu/entries/type-theory/
[20]: https://plato.stanford.edu/entries/lambda-calculus/notes.html#note-5
[21]: https://plato.stanford.edu/entries/lambda-calculus/notes.html#note-6
[22]: https://plato.stanford.edu/entries/lambda-calculus/recursive-functions.html
[23]: https://plato.stanford.edu/entries/lambda-calculus/#Non-Extensionality

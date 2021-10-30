# Recursion Theory

`Computability Theory - An Introduction to Recursion Theory`
by Herbert B. Enderton, 2010, ISBN: 9780123849588

## Foreword

The study of the class of *computable partial functions*, i.e. *recursive partial functions*, stands at the intersection of three fields: mathematics, theoretical computer science, and philosophy.

* Mathematically, computability theory originates from the concept of an algorithm. It leads to a classification of functions according their inherent complexity.

* For the computer scientist, computability theory shows that quite apart from practical matters of running time and memory space, there is a purely theoretical limit to what computer programs can do. This is an important fact, and leads to the questions: Where is the limit? What is on this side of the limit, and what lies beyond it?

* Computability is relevant to the philosophy of mathematics and, in particular, to the questions: What is a proof? Does every true sentence have a proof Computability theory is not an ancient branch of mathematics; it started in 1936. In that year, Alonzo Church, Alan Turing, and Emil Post each published fundamental papers that characterized the class of computable partial functions. Church's article introduced what is now called "Church's thesis" (or the Church-Turing thesis), to be discussed in Chapter 1. Turing's article introduced what are now called "Turing machines." (1936 was also the year in which The Journal of Symbolic Logic began publication, under the leadership of Alonzo Church and others. Finally, it was also the year in which I was born.)


## An Introduction to Recursion Theory

The set of *computable partial functions*, also called *recursive partial functions*, deals with the concept of computability. 

Mathematically, computability theory has arisen from the concept of algorithm. As it become clear that some algorithms perform significantly better then others, and that a class of other, albeit being correct, are too complex in their space and/or time demands that they had no practical use. One branch of computability will always be dedicated to the classification and ranking of algorithms according to their complexity and efficiency.

Computability theory have also revealed the existence of a purely theoretical limit of computation, which meant that some things are just not computable despite technological advancement.

CT also studies the nature of mathematical proof. The issue, that especially haunted mathematicians and logicians, but other scientists as well, for 30 years, ever since it was formulated as a challenge in 1900, was the conundrum of whether every true formal statement (relative to some axiomatic system) has a proof. Namely, it was a call to action to show that mathematics itself is consistent and complete.

Computability, as a very young theory, emerged in 1936. when Alonzo Church, Alan Turing and Emil Post each published fundamental papers that characterized the class of computable partial functions.

Church's article introduced what is now called *Church-Turing thesis*. Turing's article introduced what are now *Turing machines*.


## The Computability Concept

### The Informal Concept

#### Decidable Sets

An *effective procedure* is an algorithm that can be carried out, step by step, by following a set of provided rules.

CT deals with the concept of an effective procedure, so we can ask, for example, whether there is some effective procedure that, given a sentence about the integers, decides if that sentence is true or false. In other words, whether the set of true sentences about the integers decidable.

An example of decidable set is *the set of prime numbers*, because there are many, purely mechanical, procedures for deciding primality of integers. Another decidable set is *the set of even integers*; this is easily showed by writing a program that checks the parity of an integer.

CT aims to distinguish between the decision problems that can be solved, in principle, and those that cannot.

In general, we say that a set of natural numbers (i.e. nonnegative integers) is decidable if there is an effective procedure that takes a natural number and (eventually) indicates if the number is a member of that set.

A finite set of natural numbers is decidable. The program for the decision procedure can simply include a list of all the numbers in the set. Then given a number, the program can check it against the list. Thus, the concept of decidability is interesting only for infinite sets.


The fact that not every set is decidable is relevant to theoretical computer science. The fact that there is a limit to what can be carried out by effective procedures means that there is a limit to what can - even in principle - be done by computer programs. And this raises the questions: What can be done? What cannot?

Historically, computability theory arose before the development of digital computers. Computability theory is relevant to certain considerations in mathematical logic. At the heart of mathematical activity is the proving of theorems. Consider what is required for a string of symbols to constitute an "acceptable mathematical proof".

Before we accept a proof, and add the result being proved to our storehouse of mathematical knowledge, we insist that the proof be verifiable. That is, it should be possible for another mathematician, such as the referee of the article containing the proof, to check, step by step, the correctness of the proof. Eventually, the referee either concludes that the proof is indeed correct or concludes that the proof contains a gap or an error and is not yet acceptable. That is, the set of acceptable mathematical proofs - regarded as strings of symbols - should be decidable. This fact will be seen to have significant consequences for what can and cannot be proved. We conclude that computability theory is relevant to the foundations of mathematics. But if logicians had not invented the computability concept, then computer scientists would later have done so.


### Calculable Functions

For example, a binary function on $$\mathbb{N}$$ is a partial function:

$$
\displaystyle
f(m,n)=
\begin{cases}
m-n \qquad  & \text{if} \ \ m \ge 0  \\
\uparrow \qquad    & \text{else}   \\
\end{cases}
$$

where $$\uparrow$$ indicates that the function is undefined in that case.   
So, $$f(5,2)=3$$, but $$f(2,5)$$ is undefined.   
The ordered pair (2,5) is not in the domain of $$f$$.

At one extreme, there are partial functions whose domains are the set $$\mathbb{N}^k$$ of all k-tuples; such functions are said to be *total*.

The adjective partial covers both the total and the non-total functions.

At the other extreme, there is the empty function, that is, the function that is defined nowhere. The empty function might not seem particularly useful, but it does count as one of the k-ary partial functions.


**Partial functions** are not defined for all elements in the domain; although majority of elements wil yield a result, they could be some elements in the domain for which the result is undefined, that is, the order pair, $$(u, f(u))$$, is not in the set of $$f$$ function.

For a k-ary partial function f, we say that f is an effectively calculable partial function if there exists an effective procedure with the following property:
- Given a $$k$$-tuple $$\overrightarrow{x}$$ in the domain of $$f$$, the procedure eventually halts and returns the correct value for $$f \overrightarrow{x}$$
- Given a $$k$$-tuple $$\overrightarrow{x}$$ not in the domain of $$f$$, the procedure does not halt and return a value.

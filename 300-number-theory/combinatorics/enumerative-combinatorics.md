# Enumerative combinatorics

https://en.wikipedia.org/wiki/Enumerative_combinatorics
https://en.wikipedia.org/wiki/Twelvefold_way

**Enumerative combinatorics** is an area of combinatorics that deals with the number of ways that certain patterns can be formed.

Two examples of this type of problem are counting *combinations* and counting *permutations*. More generally, given an infinite collection of finite sets `S`, indexed by the natural numbers, enumerative combinatorics seeks to describe a *counting function* which counts the number of objects in `Sₙ` for each `n`. Although counting the number of elements in a set is a rather broad math problem, many of the problems that arise in applications have a relatively simple combinatorial description.

*The twelvefold way* provides a unified framework for counting permutations, combinations and partitions.

The simplest such functions are closed formulas, which can be expressed as a composition of elementary functions such as factorials, powers, and so on.

For instance, the number of different possible orderings of a deck of $$n$$ cards is $$f(n) = n!$$

The problem of finding a closed formula is known as *algebraic enumeration* and frequently involves deriving a *recurrence relation* or *generating function* and using it to arrive at the desired closed form.

Often, a complicated closed formula yields little insight into the behavior of the counting function as the number of counted objects grows. In these cases, a simple *asymptotic approximation* may be preferable.   
A function $$g(n)$$ is an asymptotic approximation to $$f(n)$$ if    
$$f(n)/g(n)\to 1$$ 
as $$n\to \infty$$    
In this case, we write:     
$$f(n) \sim g(n)$$

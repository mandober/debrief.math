# Definability paradoxes

https://www.dpmms.cam.ac.uk/~wtg10/richardsparadox.html

Here are 3 paradoxes, all based on the same idea.

1. Let A be the set of all positive integers that can be defined in under 100 words. Since there are only finitely many of these, there must be a smallest positive integer n that does not belong to A. But haven't I just defined n in under 100 words?

2. Let B be the set of all reasonably interesting positive integers. Let n be the smallest integer not belonging to B. But surely the defining property of n makes it reasonably interesting?

3. Let X be the set of all definable real numbers. Since there are only countably many definitions, X is countable. Indeed, we can explicitly count X - just list the elements in alphabetical order of their definitions. Now apply to this list some explicit diagonal process, obtaining a number y that does not belong to X. But haven't I just defined y?


The solution to these paradoxes is usually explained as follows: they depend on being imprecise about what is meant by defining a number, or being interesting.

Consider for example the third paradox, known as *Richard's paradox*. Suppose you specify an exact set of rules T that tells you 
(i) which strings of symbols define real numbers and 
(ii) which numbers they define when they do. 

Let us call a number x T-definable if there exists some string that defines x according to the rules T. Then there is no particular reason to suppose that the diagonal element y is T-definable, since it depends on the complicated process of arranging all T-definitions in alphabetical order, and it is not at all obvious how the rules T could themselves determine which strings were T-definitions.

To kill off the paradox completely, one has only to look at the argument in more detail. It will then become clear exactly why the element y cannot be T-definable, and hence why the rules T cannot specify which strings are T-definitions.

Let us assume, then, the reverse, i.e., that the rules T tell us which strings are T-definitions and which real numbers are defined by those that are. Let us assume also that the rules are sufficiently powerful to tell us which strings precede which others in alphabetical order. (Without this second assumption the paradox doesn't really get off the ground.) Write S for the set of finite strings and R for the set of real numbers. We are assuming that the rules T specify which strings T-define which numbers. To make this more precise, let us suppose the function f:SxR-- > {0,1}, which takes (s,x) to 1 if the string s defines the real number x and 0 otherwise, is T-definable. Now, assuming again that T isn't hopelessly weak, I can T-define the list to which we shall apply a diagonal process. I could do it, for example, as follows. First, I T-define a function g:S-- > {0,1} by setting g(s)=1 if and only if there exists x such that f(s,x)=1. Then I T-define sm to be the mth string in alphabetical order. Next, I T-define h(m) to be the sum of g(sk) over all k at most m. Then I T-define m(n) to be the minimal m such that h(m)=n. Finally, I T-define xn to be the real number T-defined by the string sm(n).

In words, sm(n) is the nth string that makes T-sense, and this notion itself makes T-sense because the function f is T-definable (by hypothesis) and hence so is g. xn is the real number defined by sm(n).

Now I apply an explicit, T-definable, diagonal argument to the list x1,x2,x3,... obtaining the number y. This of course gives a contradiction, since y is both T-definable and not T-definable. We could simply stop at this point and say that what we have contradicted is the hypothesis that the function f could be T-defined. However, it is instructive to see exactly where the argument breaks down. So let us imagine that we are trying to produce the diagonal number y and see what happens.

As is usual with this sort of argument, the problem arises when we find ourselves faced with the string that is supposed to T-define y. Since, assuming f to be T-definable, y is also T-definable, there must be some string s that T-defines y, and we eventually get to it on our list. Let us suppose that s is the nth string that T-defines a real number. What real number does it define? On the one hand, it defines y=xn. On the other hand, it T-defines a number which differs from each xk in the kth decimal place. In particular, it differs from y in the nth decimal place.

Thus, from the assumption that f is T-definable, we arrive at the absurd conclusion that there is some string s that defines two distinct real numbers. To put this another way, if definability is itself definable, then it is also ambiguous.

Even after one understands the above argument, it is still tempting to think along the following lines: yes, the paradoxes go away if one is precise about what is meant by `definable', but, given any precise notion T of definability, we can always stand outside it and genuinely understand the definition of a number, even if it is not T-definable. For example, if I grasp the definition of T-definable, then I will grasp the definition of the non-T-definable number y produced by a diagonalization process. Could we not obtain a paradox as follows?

4. Let X be the set of all real numbers that can be defined, not necessarily according to some formal system, but just in some unambiguous way that any mathematically trained person could in principle understand. (Such a number might, for example, be defined as the result of a diagonal argument applied to the T-definable numbers, where T was some previously specified formal system.) Now list all the unambiguous definitions in alphabetical order and let xn be the real number defined by the nth one. Construct a number y not in X, by letting the nth digit of y be 4 if the nth digit of xn is 7 and 7 otherwise. But surely you have now understood the definition of y.

Well, you may think you have, but you haven't, as you will rapidly see if you imagine trying to work out the first few digits of y (over the course of the next 101000 years, say). At some point you will reach the nth supposedly unambiguous string, consisting of the following definition:

Let X be the set of all real numbers that can be defined, not necessarily according to some formal system, but just in some unambiguous way that any mathematically trained person could in principle understand. (Such a number might, for example, be defined as the result of a diagonal argument applied to the T-definable numbers, where T was some previously specified formal system.) Now list all the unambiguous definitions in alphabetical order and let xn be the real number defined by the nth one. Construct a number y not in X, by letting the nth digit of y be 4 if the nth digit of xn is 7 and 7 otherwise.

What is the nth digit of y? It is 7 if and only if it is not 7. This is obviously a bit of a problem, and we are forced to conclude that, despite appearances, we have not just defined a real number unambiguously. After all, an unambiguous definition ought to leave us in no doubt about what the nth digit is.

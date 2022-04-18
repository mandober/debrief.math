# Functions in programing languages

In logic, there's a set of logical connectives: NOT, OR, NOR, XOR, XNOR, AND, NAND, IMPLY, IFF.

When a formal logic system is defined, we need to state rules that govern the valid use of these symbols. We must define, in a precise and unambiguous way, the syntax rules that must be respected, so that an expression involving these connectives, remains a valid expression within that formal system.

Of course, the more symbols the more complex these rules are. To, at least, that end logicists were interested to find the smallest set of connectives from which the others could be derived.

Soon after it became appearent that such a minimal set must have a mechanism for negation, the first element of the set was identified as NOT; with AND or OR proclaimed equally valid choices for the second element.

Just when the clock was about to stroke midnight thereby proclaiming the end of this research by concluding that, whether such a minimal set is {NOT,AND} or {NOT,OR}, it is now certain that it must posses (at least) two elements, an arrow pierced the scene changing it at a stroke.


Similarly, in PLs, the first principle, that essential element from which all other PL constructs can be derived, is a function.

Lambda Calculus showed that an anonymous function, paired with a few rules specifying its construction and application, is sufficient to build all other programming language constructs such as data structures and recursion.

Starting from the simple and very common thing that is variable assignment, such as `x = 42`, we can recognize the constant function - it takes no arguments, always returning the same thing. Actually, that was exactly the way you would write such a function in Haskell. JS reveals more about the functional nature of such expression: `(x => 42)`.

However a PL implements binding, we see that it can be implemented using functions only. To retrieve the value, you would call or invoke the function, supplying no arguments - but you can't because it was an anonymous function. To invoke it, first you have to bind it in order for it to get a name. Which leads to chicken and egg situation. So forget names.

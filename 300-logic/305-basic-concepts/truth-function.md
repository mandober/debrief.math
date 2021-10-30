# Truth function

https://en.wikipedia.org/wiki/Truth_function

**Truth functions** are functions from sequences of truth values to a truth value.

If `n` stands for the number of arguments a function accept (a property called arity), they may be divided into: nullary, unary, binary, ternary, quaternary, quinary, senary, septenary, octonary, novenary, denary, and so on. In general, each function is n-ary; the term "polyadic" means that a function accepts more then one arg. Unlike the number of input arguments, a function always returns a single value, in this case, a single truth value.

A *truth function* is a function whose domain and codomain is a Boolean set,    
𝔹 = {true, false}. True and false are sometimes referred to as *truth values*.




Logic constants, True and False can be thought of as the nullary truth functions.

Unary truth functions accept a single input. If we use a logic variable "p", which can only be T or F, then we have 4 unary truth functions, although only the first two are interesting:

p | const F | not | id | const T
--|---------|-----|----|--------
1 | 0       | 0   | 1  | 1
0 | 0       | 1   | 0  | 1


For any number n, there are (2^2)^n possible n-ary truth functions.
- n = 1 : 4^1 = 4    unary truth functions (1-ary),       p -> {T,F}
- n = 2 : 4^2 = 16  binary truth functions (2-ary),   (p,q) -> {T,F}
- n = 3 : 4^3 = 64 ternary truth functions (3-ary), (p,q,r) -> {T,F}

where n is the number of logic variabes, and therefore the arity.


The typical example is in propositional logic, wherein a compound statement is constructed using individual statements connected by logical connectives:

> If the truth value of the compound statement is entirely determined by the truth values of the constituent statements, the compound statement is called a truth function, and any logical connectives used are said to be **truth functional**.

Classical propositional logic is a *truth-functional logic*, in that every statement has exactly one truth value which is either true or false, and every logical connective is truth functional (with a correspondent truth table), thus *every compound statement is a truth function*. On the other hand, modal logic is non-truth-functional.

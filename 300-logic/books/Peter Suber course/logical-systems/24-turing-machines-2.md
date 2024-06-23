---
downloaded:       2022-06-20
page-url:         https://web.archive.org/web/19990424125104/http://www.earlham.edu/~peters/courses/logsys/turing2.htm
article-title:    Peter Suber, "Turing Machines II"
---
# Peter Suber, "Turing Machines II"
The Wayback Machine - https://web.archive.org/web/19990424125104/http://www.earlham.edu:80/%7Epeters/courses/logsys/turing2.htm

**Turing Machines II**

[Peter Suber][1], [Philosophy Department][2], [Earlham College][3]

-   [Uncomputable Functions][4]
-   [Church's Thesis][5]

The [last hand-out][6] on Turing machines defined the basic concepts. This hand-out will apply them to the problem of computability and prove that not all functions can be computed by a Turing machine.

As in the [first hand-out][7], my exposition is based on those of George S. Boolos and Richard Jeffrey, *Computability and Logic*, Cambridge University Press, second edition, 1980; Gerald Massey, "On the Pedagogy of Turing Machines," *The Computers and Philosophy Newsletter*, 1,1 (Sept. 1986), 6-24; and Marvin Minsky, *Computation: Finite and Infinite Machines*, Prentice Hall, 1967.

For the proofs that follow it will help to understand how to concatenate two T programs into one. We want to put two T programs end to end to make a third program that will run flawlessly with only minor revisions. To do this we take advantage of the conventions used in the [first hand-out][8] (1) that we read inputs from left to right and (2) that canonical halts leave the scanner on the leftmost digit of the output. With these conventions we need only stick the two programs back to back. The new program will perform the work of the first one first, and use its output as the input to the second.

Two minor revisions are needed in the composite program. (1) Change the command names of the second program so that none coincides with any already used. This will guarantee consistency. The easy way to do this, if both programs use numerical command names and if the first program contains n consecutively numbered commands, is to add n to the number of each command in the second program. (2) Fill in the blanks of the table of the first program, where it would have halted, with the command to go to the first line of the second program. This will insure that the composite program will not halt until the second program has run.

**Uncomputable Functions**

We know that there will be functions that cannot be computed by T programs, or in fact by any effective method, since T programs and effective methods are denumerable (and enumerable) and functions are not. (This may easily be proved, but this hand-out is not the place; Hunter proves the former at 220, and the latter at 46.) Can we, however, actually produce a function that cannot be computed? The answer is yes.

By Gödel numbering, we can convert each distinct T program into a distinct natural number. We can then put all possible T programs into natural numerical order. (There are many other ways to enumerate all possible T programs.) Let fn be the function computed by the nth program in some enumeration of all T programs. To describe a function, u (for "uncomputable"), that cannot be computed by any T program, let n be any natural number. Then

> if fn(n) = 0, then u(n) = 1  
> if fn(n)  0, then u(n) = 0.

Since n can be any natural number, the functions covered by fn represent all T programs. The essence of the definition of u is to insure that it differs from each fn in a definite way: whatever fn returns, u returns something else for the same input. This is a simple, abstract kind of diagonalization. If u differs from each T program, then it cannot be computed by a Turing machine. (For convenience we have limited the series f1, f2, f3, ... to total functions, and have made u a total function.)

Let's look at a more complicated kind of uncomputability. We will define a function about Turing machines themselves and prove that it is not computable by Turing machines.

Let us define the *long-windedness* of a T program as its output when it takes zero as its input, i.e., when it starts running on a blank tape. Long-windedness is essentially the string of 1's on which the program canonically halts, read as a base-one numeral. If it is very long, the program is very long-winded. (Most writers call long-windedness "productivity".)

Suppose we create a contest in which we challenge programmers to write the most long-winded programs possible that have exactly n command names. (Programs with infinite loops are ineligible because they have no output, or do not canonically halt.) We can prove that a program with 1 command has a maximum long-windedness of 1. Programs of 2, 3, and 4 commands, respectively, have a maximum long-windedness of 2, 6, and 13. But beyond this we have no proofs and very few rules of thumb. Our lack of general proofs in this area is not due to our lack of ingenuity. On the contrary, we cannot even in principle compute the maximum long-windedness of programs of arbitrary finite size, although we can show our ingenuity by proving that this is incomputable.

Programs written to push the limits of long-windedness are called *busy beavers*. What we can prove is that we cannot program a computer to find the busiest beaver of any given size.

A mathematician named George Uhing has written a 5-command T program with a long-windedness of 1,915. We don't have a proof that this is the most long-winded 5-command T program, but no one has topped it and Uhing says he conducted a computer search of all the 64,403,380,965,376 possible 5-command T programs to find his busy beaver. Brute force searches like Uhing's will be the only way to close in on the busiest beavers of any given size, and above 5 or so even brute force searches will prove unavailing due to the shortness of human life and the relative slowness of processing.

If the function computed by the program is undefined for input zero, or if it does not halt canonically when it takes zero as its input, then that program's long-windedness is undefined. For courtesy let us say that the "null program" consisting of zero commands has a long-windedness of zero.

Let us say that the size of a T program is the number of different command names it uses. Because each command name may be used more than once, the size in this sense will usually be less than the number of commands. The null program is size zero.

Now let us define a function, L(n), which returns the value of the long-windedness of the most long-winded program of size n. We are interested in long-windedness because we want to prove that L(n) cannot be computed by any T program. We will now prove that L(n) is uncomputable.

It is important to remember that L(n) does not compute the long-windedness of a particular program, but the greatest long-windedness for the entire class of programs of size n. Long-windedness is a function of the content of a program; L(n) is a function only of the size of a program. We may always determine the long-windedness of a specified program by running it. But to compute L(n) is to determine a value for programs that we have never seen and that may never be seen.

Before we see the proof that L(n) is uncomputable, note the following theorems about L(n).

1.  L(n) is a total 1-place function from natural numbers to natural numbers.
    
    > *Proof*. The null program is the only program of size 0, and it happens to have long-windedness 0; hence L(0) = 0. L(n) is thus defined for zero; but it is also defined for every natural number greater than zero.
    
2.  For any natural number, n, L(n + 1) > L(n).
    
    > *Proof*. We prove this by exhibiting an effective method for constructing a T program of size n+1 that has greater long-windedness than the most long-winded program of size n. Take any one of the most long- winded programs of size n. If Ci is the command on which the program canonically halts when the input is "0", and Cj is the highest numbered command, then delete the original command Ci,1,[ ],[ ], if there was one, and add the two commands Ci,1,L,Cj+1 and j+1,0,1,Cj+1. The first addition overrides the original halt, moves left one cell, and sends the program to the second command, which finds a blank and writes a "1". The second command, by its existence, increases the size of the program to n+1 and, by its action in writing a "1", increases its long-windedness to p+1. Even if the supplemented program is not the most long-winded program of its size, it proves that L(n+1) > L(n).
    
3.  For any natural number, n, there are T programs of size n that have long-windedness n.
    
    > *Proof*. We have seen in the proofs to theorems 1 and 2 that there are T programs of size 0 and long-windedness 0. We can easily make a T program of size 1 and long-windedness 1, e.g. C1,0,1,C2. In the proof of theorem 2 we also exhibited a method for amending a T program to increase both its size and long-windedness by 1 each. We can apply this technique repeatedly to reach any desired n.
    
4.  Let d be the size of a program that doubles any natural number; for any natural number, n, L(n + d)  2n.
    
    > *Proof*. We already know that there are T programs of size n that have long-windedness n (theorem 3); let NN be one of them. Concatenate NN with the posited program that doubles a number, called DD, whose size is d. (In the [first hand-out][9] we saw such a program of size 11.) The size of the resulting program, NNDD, is n+d. Because the output of NN is input to DD, where it is doubled, the long-windedness of NNDD is 2n. Even if NNDD is not the most long-winded program of its size we may now assert that L(n + d)  2n.
    

Finally we are able to state the proof that L(n) is not computable by Turing machines. The proof is indirect and derives a contradiction from the assumption that L(n) is computable.

So we assume that there is a program, BB (for Busiest Beaver), that computes L(n). Let BB be of size b. For BB to compute the maximum long-windedness of programs of size n, it must take n as its input. One way to do so is to begin running BB on the leftmost "1" of a string of n "1's" on an otherwise blank tape. We can obtain the same result by concatenating BB with a program, say NN, whose output from zero input (whose long-windedness) expresses its size and equals n.

So, if n is an arbitrary natural number, then let NN be a T program of size n and long-windedness n. (Theorem 3 shows that NN can exist.) Let NNBB be the program that concatenates NN and BB. Hence, the output of NN, n "1's", is the input of the Busy Beaver program; BB is set to compute L(n), the maximum long- windedness of programs of size n. The size of NNBB is n+b. The long-windedness of NNBB is the output of BB taking as input the output of NN, when NN takes zero as input; by construction this will be the long-windedness of programs of NN's size or L(n).

Now concatenate NNBB with another copy of BB, yielding NNBBBB. The new BB computes the maximum long-windedness of programs the size of NNBB, that is, it computes L(n+b). NNBBBB's size is n+2b, and its long-windedness is L(L(n)). Hence the maximum long-windedness of programs of size n+2b is at least as large as L(L(n)); in short

(1)L(n+2b)  L(L(n)).

We know from theorem 2 that L(n+1) > L(n). Hence, if i > j, then L(i) > L(j), which is equivalent to saying that if L(j)  L(i), then j  i. Applying this to (1) gives

(2)n+2b  L(n).

But since n is an arbitrary natural number, we may replace it wherever it occurs with any other arbitrary natural number, say, n+1. Making this substitution in (2), we get

(3)n+1+2b  L(n+1).

But by theorem 4, L(n+1)  2n. Hence,

(4)n+1+2b  2n.

Subracting n from each side yields

(5)1+2b  n.

But since n was an arbitrary natural number, (5) asserts that 1+2b is greater than or equal to any natural number. But this is contradicted by the existence of many natural numbers greater than 1+2b, for example, 2+2b. (This would not hold if b were infinite, but it is finite.) Hence, the assumption that L(n) can be computed by a program, BB, leads to a contradiction; hence, that assumption is false. This completes the proof that L(n) is not computable by Turing machines.

Now that we have proved that the Busy Beaver problem is uncomputable by Turing machines, we are in a position to understand an even more important and more famous limitation on computability. The halting problem is the problem of computing whether or not any given T program (or programmed Turing machine) will halt when given input "0". For the purposes of the halting problem, we don't care about canonical or non-canonical halts; we want to know whether any given program will halt at all.

It is not hard to prove that if the halting problem is solvable, then so is the busy beaver problem. But since the latter is not, the former is not either. Here is the proof that the computability of the halting problem implies the computability of the busy beaver problem. Since we "already know" that the busy beaver problem is uncomputable, our approach will be indirect; on the assumption that there is a program to compute the halting problem, there will be a program to compute L(n) or maximum long-windedness for size n, which is to solve the busy beaver problem.

Again let us enumerate all the possible T programs. Let H(n) be the function that determines whether the nth program will halt when given input "0". H(n) returns "1" if the nth program will halt, canonically or not, and returns "0" otherwise.

If n is an arbitrary natural number, then consult the enumeration of T programs and collect all those of size n. The finitude of n assures that there will be only finitely many such programs. For each such program, note its place in the enumeration so that its place can be input to H(n). Notice that n was defined to specify programs in an enumeration (as an ordinal) and is being used to specify size (as a cardinal). This is part of the proof strategy. Of course at most one of the programs of size n can be at place n in the given enumeration of programs.

Let us pause to prove that at least one program of any finite size will halt canonically on input "0". If n is an arbitrary natural number, then we can construct a program of size n that will do so. First, note that if n = 0, we have the null program which we stipulate to halt canonically. If n = 1, then the one command we need is Cn,0,1,Cn and Cn,1,1,Cn+1 when command Cn+1 does not exist. The program writes one "1" and halts canonically. If n > 1, then the last or nth command is the one above, for when n = 1, and every command before the last command is the same, namely Ci,0,R,Ci+1. This program will move to the right n-1 cells, write one "1", then halt canonically. Of course if we can construct a canonically halting program of size n for any n 0, then such a program will appear in the enumeration of all T programs.

Now assume that there is a program that computes H(n); call it HH. Run HH for each program of size n (a finite number). Discard the programs for which HH computes H(n) to be 0, that is, the programs that do not halt. We will be left with the programs of size n that will eventually halt when given input "0". Buy enough machines to run each of the halting programs of size n simultaneously with input "0"; if you are a piker, run them successively on one machine. At this point Gerald Massey recommends that you read all the back issues of *National Geographic* while you wait. When all the programs have halted, consult their tapes to see which have halted canonically. We have shown that at least one will have done so. Record the outputs for those programs that did halt canonically. The largest number so recorded will be the maximum long-windedness for programs of size n. We will have computed L(n) and thereby solved the busy beaver problem. But this is impossible. Hence our assumption that there is a program to compute the halting problem is false.

**Church's Thesis**

Church's Thesis states that all the functions that are effectively computable in the intuitive sense are Turing computable. It cannot be proved because it makes appeal to our imprecise, perhaps partly ineffable, intuition of effective computability.

The proofs in this hand-out showed that some functions are not Turing computable. We cannot conclude that these functions are not computable at all unless we affirm Church's Thesis. If Church's Thesis is false, there would be some intuitively effective ways to compute some functions that are not Turing computable. It has so far turned out that every attempt, such as Turing's, to capture the intuitive sense of computability with a precise method has resulted in a method that computes exactly the same set of functions. This is inductive support for Church's Thesis.

While we can say that Turing computable functions are effectively computable, we cannot without Church's Thesis assert that the Turing uncomputable functions are uncomputable in general. If we hesitate to assert Church's Thesis, then we must state results about uncomputability either (1) with qualification such and such function is uncomputable *by* *Turing machines* or (2) conditionally such and such function is uncomputable *if* Church's Thesis is true. Many mathematicians make unqualified and unconditional assertions of uncomputability based on Turing machines or other particular methods. Technically this is elliptical, but it betrays a common faith that Church's Thesis is not only true but so fundamental that it may go without saying.

If Church's Thesis is true, it would not only follow that all computable functions were Turing computable; it would also follow that the programming language, T, was as powerful as any other programming language. It would also follow that the functions defined in the Busy Beaver and the Halting problems could not be computed by any effective method.

---

This file is an electronic hand-out for the course, [Logical Systems][10].

[1]: https://web.archive.org/web/19990424125104/http://www.earlham.edu/~peters/hometoc.htm
[2]: https://web.archive.org/web/19990424125104/http://www.earlham.edu/~phil/index.htm
[3]: https://web.archive.org/web/19990424125104/http://www.earlham.edu/
[4]: https://web.archive.org/web/19990424125104/http://www.earlham.edu/~peters/courses/logsys/turing2.htm#uncomputable
[5]: https://web.archive.org/web/19990424125104/http://www.earlham.edu/~peters/courses/logsys/turing2.htm#church
[6]: https://web.archive.org/web/19990424125104/http://www.earlham.edu/~peters/courses/logsys/turing.htm
[7]: https://web.archive.org/web/19990424125104/http://www.earlham.edu/~peters/courses/logsys/turing.htm
[8]: https://web.archive.org/web/19990424125104/http://www.earlham.edu/~peters/courses/logsys/turing.htm
[9]: https://web.archive.org/web/19990424125104/http://www.earlham.edu/~peters/courses/logsys/turing.htm
[10]: https://web.archive.org/web/19990424125104/http://www.earlham.edu/~peters/courses/logsys/lshome.htm

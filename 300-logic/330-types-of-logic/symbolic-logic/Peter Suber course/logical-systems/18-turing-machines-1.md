---
downloaded:       2022-06-20
page-url:         https://web.archive.org/web/19990424123940/http://www.earlham.edu/~peters/courses/logsys/turing.htm
article-title:    Peter Suber, "Turing Machines I"
---
# Peter Suber, "Turing Machines I"
The Wayback Machine - https://web.archive.org/web/19990424123940/http://www.earlham.edu:80/%7Epeters/courses/logsys/turing.htm

**Turing Machines I**

[Peter Suber][1], [Philosophy Department][2], [Earlham College][3]

-   [What is a Turing Machine?][4]
-   [Programming a Turing Machine][5]
-   [Computing Functions][6]

**What is a Turing Machine?**

A Turing machine is a simple but powerful computer. It is useful in thinking about the nature and limits of computability because its method of computation is about as simple as can be imagined. Important theoretical results about what can be computed that are expressed in the terms of Turing machines, therefore, are clearer to intuition than the same results expressed in other terms.

Turing machines were conceived by Alan Turing (1912-1954) in his important paper, "On Computable Numbers, with an Application to the Entscheidungsproblem," *Proceedings of the London Mathematical Society*, 2d Series, 42 (1936) 230-65. Turing machines are one of the earliest and most intuitive ways to make precise the naive notion of effective computability. All Turing-computable functions are effectively computable; the important and indemonstrable converse (that all intuitively computable functions are Turing computable) is asserted by Church's Thesis.

My exposition is based on those of George S. Boolos and Richard Jeffrey, *Computability and Logic*, Cambridge University Press, second edition, 1980; Gerald Massey, "On the Pedagogy of Turing Machines," *The Computers and Philosophy Newsletter*, 1,1 (Sept. 1986) 6-24 (from whom I have borrowed my sample T programs); and Marvin Minsky, *Computation: Finite and Infinite Machines*, Prentice Hall, 1967.

Imagine a tape divided into cells. Each cell can contain the symbol "1" or it may be blank. For convenience, let us say that it contains "0" if it is blank. For the time being we should think of the "1" symbol as an uninterpreted vertical scratch and the "0" simply as the absence of a scratch. These may be interpreted as the numerals for one and zero but they need not be. As Massey emphasizes, a Turing machine is actually more powerful if we give ourselves the freedom to interpret the scratch and blank in many different ways.

Now imagine a device that can move over the tape or draw the tape through itself. The device scans one cell of the tape at a time. It can do three things to the tape:

1.  read whether the cell being scanned contains "1" or "0",
2.  change "1" to "0" and *vice versa*, and
3.  advance to the next cell to the right or left along the tape.

A *program* for a Turing machine tells it what to do (#2 and #3 above) depending upon what it finds on the tape (#1).

It does not matter whether we think of the tape as finite or infinite in length. But if it is finite, we will assume there will always be enough for a given operation. (If this sounds too indefinite for this exact realm, then let us say that whenever the scanner comes within *n* cells of either end of the tape, a human technician adds another *m* cells to that end; *n* and *m* may be as small as 1 to fix the principle, but we may make them each a trillion if it will bring greater peace of mind.) Since all computable functions take only a finite number of steps to compute, by definition, no operation in which we are interested will require an infinite tape. In short, the remarkable power of the Turing machine does not require an infinite tape.

We could allow the device to read and write the 26 letters of the alphabet, in upper and lower case, the 10 digits, a dozen punctuation marks, and as many special symbols of logic and mathematics as we wished. This would make its output easier to understand, but would make its programming much more complicated. To simplify the latter we stick to a simple binary code.

The device can do one more thing of great importance: it can hold programs of arbitrary finite size and execute them one instruction at a time in order. If you don't want to complicate the concept of the device by positing the memory required for this condition, then imagine a human programmer feeding in the program one command at a time.

A Turing machine is the device plus the tape plus the program. We begin to appreciate what a simple model of computation this is when we realize that *a Turing machine has no power to "compute" or "calculate" apart from these essentially typographical operations*.

It is not difficult in principle to build an actual Turing machine or to program an existing computer to simulate one. (For example, see Ken Schweller's interactive, web-based [Turing Machine java applet][7].) The concept of a Turing machine is most useful to the theory of computation, however, when we imagine that it will never break down and will continue to perform as programmed even if the physical realization of a given Turing machine and the running of its program would require more matter than the universe contains and more time than a cycle between big bangs.

**Programming a Turing Machine**

Let us write a simple programming language for Turing machines, called "Turgid" or "T" for short.

If we disregard the physical tape and the physical device for reading the tape, a Turing Machine is the abstract set of operations to perform on the abstract sequence of symbols on the tape. Gerald Massey had the idea to conceive this abstract set of operations —the Turing Machine— as a program written in a programming language. Here we will develop the language required to write such programs.

**Rule 1.** Each command will have a name. The name could be alphabetic or numeric, or some combination, such as "EraseIfNotBlank" or "BettyJoe" or "345" or "Again25".

**Rule 2.** A command in T has four elements. The elements must be in some order; let it be this order:

1.  the name of the command;
2.  what the current scanned cell must contain for the command to continue; this will be either a "1" or a "0";
3.  the action to be performed if the condition in #2 is satisfied; there are only four such actions:  
    **1**:write a "1" in the current cell (overwriting what is there)  
    **0**:write a "0" in the current cell (overwriting what is there)  
    **R**:move one cell to the right along the tape  
    **L**:move one cell to the left along the tape;
4.  the name of the command to be carried out next, such as "Command24".

**Rule 3.** Separate the four elements by commas. For example, "Command1,1,L,Command2" is a single command that tells the device to scan the current cell; if it contains a "1", the device should move one cell to the left and then perform Command2.

**Rule 4.** Unless we note otherwise, we suppose that when a program begins, the tape is always blank (all "0's"). Under this assumption, this program will write a never-ending series of "1's" to the left:

> Command1,0,1,Command2  
> Command2,1,L,Command1

**Rule 5.** If a command is called that does not exist, then the machine halts. Here is a program to write two 1's and halt:

> Command1,0,1,Command2  
> Command2,1,L,Command3  
> Command3,0,1,Command4

This program halts because it calls Command4 when there is no Command4. Notice that it halts when the device is scanning the leftmost digit of the string. Such a halt will be called "canonical". If a Turing machine halts but not on the leftmost digit in a string of "1's", then its halt is "non-canonical". This is merely a convention for the convenience of programmers. If we want a Turing machine to compute a function and write its output, then we will want to know which string of "1's" on the tape should be read as that output. Our convention is that all T programs that give output must halt canonically so that we know what its output is: i.e. it is that string on whose leftmost member the machine halted. The rest of the tape is the 'scratch pad' for producing the output.

Let us say (for courtesy) that programs that leave the tape blank always halt canonically. Obviously programs that do not halt at all, such as the first example above, give no output. They never finish computing their function.

If a command instructs the machine to write a "1" to a cell that already contains a "1", or to write a "0" to a cell that is already blank, it does not matter whether we imagine that the machine makes the redundant operation or skips the command. But we must know which of these it is to be sure that we know when programs halt. Let us adopt the convention that such rules are executed redundantly. Hence the program consisting only of the command, "Command1,0,0,Command1", run on a blank tape, will run forever, erasing a blank cell again and again. Under the reverse assumption, the program would skip its one and only command and halt.

**Rule 6.** All T programs must be finite in length, even if they do not halt. That is, they must be finite in their number of commands. The power of the Turing machine does not require infinitely long programs any more than infinitely long tape.

**Rule 7.** There may be two commands of the same name:

> Commandk,0,L,Commandk+1  
> Commandk,1,R,Commandk+1

We need two commands with the same name when we are not sure whether the currently scanned cell will be a "1" or a "0". This pair tells us to move left if it is "0", and right if it is "1".

If there are more than two commands with the same name, then the program will be redundant or inconsistent. It will be redundant if two of the commands say the same thing. It will be inconsistent if two different actions, or two different command calls, are made on the same condition.

**Rule 8.** An important rule of T syntax is that programs must be consistent. Redundancy is not prohibited, only inelegant. The best way to insure consistency is never to use more than two commands of the same name. When two are used, make sure they are compatible by making one depend on finding a "1" in the currently scanned cell, and the other a "0".

**Rule 9.** When a command is inapplicable, because it requires the scanner to be pointing to a "0" when it is pointing to a "1" or *vice versa*, then the machine will look for another command of the same name that could be executed. If there is none, it will skip the inapplicable command and look for the next numbered command; if there is none, then it will halt.

**Rule 10.** When a command ends with the instruction to execute Commandk next, the Turing machine will look for Ck,0,[ ],[ ] first, and then for Ck,1,[ ],[ ], and perform whichever one applies, depending on whether the currently scanned cell contains a "1" or "0". (Here, "[ ]" is a placeholder standing in for any appropriate elements of T commands.)

**Rule 11.** Because the commands are named or numbered, they need not be written in any particular order. Each command names or points to its own successor. We must, however, always know which command is to be executed first. One advantage of using numerical names (even if they are not pure numerals) is that we may stipulate that programs will always begin with the lowest numbered command. For these reasons, then, we will always name our commands, "Command1, Command2, Command3...", and will abbreviate these to "C1, C2, C3...."

A programming habit that will insure consistency is to number one's commands consecutively from 1, and to list them in numerical order. That way, one may tell at a glance whether there are more than two with the same name.

T programs may be represented in tables. For example, the program

> C1,0,1,C2  
> C1,1,1,C3  
> C2,1,1,C4  
> C3,0,1,C4  
> C3,1,1,C4

may be expressed as the following table, in which each row represents one command name, and the two columns represent what is to be done if the scanned cell is "0" or "1":

<table><tbody><tr><td><br></td><td><strong>0</strong></td><td><strong>1</strong></td></tr><tr><td><strong>C1</strong></td><td>1,C2</td><td>1,C3</td></tr><tr><td><strong>C2</strong></td><td><br></td><td>1,C4</td></tr><tr><td><strong>C3</strong></td><td>1,C4</td><td>1,C4</td></tr><tr><td><strong>C4</strong></td><td><br></td><td><br></td></tr></tbody></table>

The table is blank where no action is specified by the program. Tables are helpful for two reasons. First, they tell us that the program would halt if it ever came to a juncture represented by a blank on the table. A blank would trigger a halt if you land on one; but you needn't land on one, e.g. due to an infinite loop. Moreoever, a T program may halt in other ways, e.g. by running all its commands. Were it not for these facts, making a table for a program would infallibly tell us whether it halted. It turns out that there is no general technique (such as making a table) that will give us that information. We will prove this in the [second hand-out][8].

Second, tables can help guarantee consistency. If one has only two columns, and only one action and one command call in each cell of the table, then the program cannot be inconsistent. (If one uses more than two characters on the tape, one must use more than two columns on the table.)

Single commands function like "if, then" statements while a pair of commands with the same name but different instructions function like "if, then, else" statements. In both cases, when the "if-clause" is not satisfied, the program does not halt; instead, the statement is skipped. Or, instead of "if" statements, the commands may be compared to sub-routines or procedures from which one may "goto" any other one, including one already executed, thus permitting conditional branching and looping.

There are only two ways to halt: call a command that does not exist, and run out of commands by executing or skipping each one. Programmers can use both methods to force a canonical halt.

**Computing Functions**

If a Turing machine starts with a non-blank tape, we may consider that the marks already on the tape are the "input" to the program that will then execute. This is the only way to communicate input to the program and machine. (Hence, Turing machines so far are "batch processors".)

If we want Turing machines to do useful work for us, we must find a way to interpret the simple binary code of "1's" and "0's" (or scratches and blanks) on the tape. If we use binary arithmetic (base two), then a single "1" on the tape will be followed by an indefinitely large number of zeroes; hence the tape will then display an indefinitely large number. We cannot prevent this by arranging always to work from the right end of the tape, for then we might run out of tape on the right side. It will be better, then, to use the "0" symbol (or the blank) as a delimiter or meaningless space between meaningful symbols, not as a zero. The "1" symbol should then be read in unary arithmetic or base one e.g. "11111111" (8 "1's") designates the number 8. If we want to interpret input and output otherwise than as numerals, we will need a more complicated code, one that is always available through Gödel numbering.

It is worth making explicit that our interpretation of the symbols has two steps, not just one: (1) the decision to read "1" as a numeral and "0" as a delimiter, and (2) the decision to read numerals in base one. Both decisions are optional and may be changed to suit different purposes.

To compute a 1-place function, the T program must find one input; to compute a 2-place function, the program must find two inputs, and so on. For convenience we will require that inputs shall be separated by exactly one "0" (or blank), and that the program begins by scanning the leftmost digit of the leftmost input. If the order of the inputs matters to the function, then they are to be placed in order from left to right. When a program takes no input, or takes zero as its input, we will assume that that the program begins at any point on the tape sufficiently far from either end to permit the completion of the program without running out of tape.

We have already agreed that a program "outputs *n*" or gives *n* as output iff it canonically halts on *n*. Hence, a program computes the 1-place function f(x) = y if it reads the input x from the tape, optionally moves to another part of the tape, writes y, and halts on the leftmost digit of y. (To repeat, a program outputs nothing at all if it never halts or halts non-canonically.)

Here is a program that takes two inputs, adds them, and outputs their sum, that is, that computes the 2-place function f(x,y) = x + y.

> C1,0,1,C2  
> C1,1,R,C1  
> C2,0,R,C3  
> C2,1,L,C2  
> C3,0,R,C4  
> C3,1,0,C3  
> C4,0,R,C4

or, as a table:

<table><tbody><tr><td><br></td><td><strong>0</strong></td><td><strong>1</strong></td></tr><tr><td><strong>C1</strong></td><td>1,C2</td><td>R,C1</td></tr><tr><td><strong>C2</strong></td><td>R,C3</td><td>L,C2</td></tr><tr><td><strong>C3</strong></td><td>R,C4</td><td>0,C3</td></tr><tr><td><strong>C4</strong></td><td>R,C4</td><td><br></td></tr></tbody></table>

This program reads the first input to the right, finds the blank delimiter between the inputs, fills it with a "1", and then returns to the left end and deletes one "1", and halts over the leftmost "1" of the output string, which is then as long as the two input strings put together.

Here is a program that reads one input and doubles it, computing the 1-place function f(x) = 2x.

> C1,1,L,C2  
> C2,0,L,C3  
> C2,1,L,C3  
> C3,0,1,C3  
> C3,1,L,C4  
> C4,0,1,C4  
> C4,1,R,C5  
> C5,0,R,C6  
> C5,1,R,C5  
> C6,0,L,C7  
> C6,1,R,C6  
> C7,0,L,C8  
> C7,1,0,C7  
> C8,0,L,C11  
> C8,1,L,C9  
> C9,0,L,C10  
> C9,1,L,C9  
> C10,0,R,C2  
> C10,1,L,10  
> C11,0,R,C12  
> C11,1,L,C11

This program will be used in the second hand-out in an important proof. Can you see how it works? It is not the shortest program to do the job; the 21 commands (11 command names) can be reduced to nine. Can you do the same work with fewer than nine commands?

*

A [second hand-out][9] will apply these concepts to the task of proving that there are functions that cannot be computed by any Turing machine.

Before we get there, practice writing your own T programs, or at least following those in this hand-out step by step. Only that way can you assure yourself that the means used by Turing machines to obtain their results fully satisfy the intuitive notion of effective computability.

---

[1]: https://web.archive.org/web/19990424123940/http://www.earlham.edu/~peters/hometoc.htm
[2]: https://web.archive.org/web/19990424123940/http://www.earlham.edu/~phil/index.htm
[3]: https://web.archive.org/web/19990424123940/http://www.earlham.edu/
[4]: https://web.archive.org/web/19990424123940/http://www.earlham.edu/~peters/courses/logsys/turing.htm#what
[5]: https://web.archive.org/web/19990424123940/http://www.earlham.edu/~peters/courses/logsys/turing.htm#programming
[6]: https://web.archive.org/web/19990424123940/http://www.earlham.edu/~peters/courses/logsys/turing.htm#computing
[7]: https://web.archive.org/web/19990424123940/http://www.bvu.edu/faculty/schweller/turing.html
[8]: https://web.archive.org/web/19990424123940/http://www.earlham.edu/~peters/courses/logsys/turing2.htm
[9]: https://web.archive.org/web/19990424123940/http://www.earlham.edu/~peters/courses/logsys/turing2.htm

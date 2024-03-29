---
downloaded:       2021-11-03
author:           Copeland, B. Jack
page-url:         https://plato.stanford.edu/entries/church-turing/
page-title:       The Church-Turing Thesis (Stanford Encyclopedia of Philosophy)
article-title:    The Church-Turing Thesis
article-length:   63701
article-created:  {Date-Creation-yyyymmdd}
article-modified: {Date-Revision-yyyymmdd}
desc:             {description}
---
# The Church-Turing Thesis (Stanford Encyclopedia of Philosophy)

There are various equivalent formulations of the Church-Turing thesis.
A common one is that every effective computation can be carried out by
a Turing machine. The Church-Turing thesis is often misunderstood,
particularly in recent writing in the philosophy of mind.
There are various equivalent formulations of the Church-Turing thesis. A common one is that every effective computation can be carried out by a Turing machine. The Church-Turing thesis is often misunderstood, particularly in recent writing in the philosophy of mind.

## 1\. The Thesis and its History

The Church-Turing thesis concerns the concept of an *effective* or *systematic* or *mechanical* method in logic, mathematics and computer science. ‘Effective’ and its synonyms ‘systematic’ and ‘mechanical’ are terms of art in these disciplines: they do not carry their everyday meaning. A method, or procedure, *M*, for achieving some desired result is called ‘effective’ (or ‘systematic’ or ‘mechanical’) just in case:

1.  *M* is set out in terms of a finite number of exact instructions (each instruction being expressed by means of a finite number of symbols);
2.  *M* will, if carried out without error, produce the desired result in a finite number of steps;
3.  *M* can (in practice or in principle) be carried out by a human being unaided by any machinery except paper and pencil;
4.  *M* demands no insight, intuition, or ingenuity, on the part of the human being carrying out the method.

A well-known example of an effective method is the truth table test for tautologousness. In principle, a human being who works by rote could apply this test successfully to any formula of the propositional calculus—given sufficient time, tenacity, paper, and pencils (although the test is unworkable in practice for any formula containing more than a few propositional variables).

#### Note on terminology

Statements that there is an effective method for achieving such-and-such a result are commonly expressed by saying that there is an effective method for obtaining the values of such-and-such a mathematical *function*.

For example, that there is an effective method for determining whether or not any given formula of the propositional calculus is a tautology (such as the truth table method) is expressed in function-speak by saying that there is an effective method for obtaining the values of a function, call it *T*, whose domain is the set of formulae of the propositional calculus and whose value for any given formula *x*, written T(x), is 1 or 0 according to whether *x* is, or is not, a tautology.

### 1.1 Making the informal concept of an effective method precise

The notion of an effective method is an informal one, and attempts to characterize effectiveness, such as the above, lack rigor, for the key requirement that the method must demand no insight, intuition or ingenuity is left unexplicated.

One of Alan Turing’s achievements, in his famous paper of 1936, was to present a formally exact predicate with which the informal predicate “can be done by means of an effective method” may be replaced (Turing 1936). Alonzo Church, working independently, did the same (Church 1936a).

The replacement predicates that Turing and Church proposed were, on the face of it, very different from one another. However, these predicates turned out to be *equivalent*, in the sense that each picks out the same set, call it *S*, of mathematical functions. The Church-Turing thesis is the assertion that this set *S* contains *every* function whose values can be obtained by a method satisfying the above conditions for effectiveness.

Since it can also be shown that there are no functions in *S* *other than* ones whose values can be obtained by a method satisfying the above conditions for effectiveness, the Church-Turing thesis licences replacing the informal claim “There is an effective method for obtaining the values of function *f*” by the formal claim “*f* is a member of *S*”—or by any other formal claim equivalent to this one.

When the Church-Turing thesis is expressed in terms of the replacement concept proposed by Turing, it is appropriate to refer to the thesis also as ‘Turing’s thesis’, and as ‘Church’s thesis’ when expressed in terms of one or another of the formal replacements proposed by Church.

The formal concept proposed by Turing was that of *computability by Turing machine*. He argued for the claim—Turing’s thesis—that whenever there is an effective method for obtaining the values of a mathematical function, the function can be computed by a Turing machine.

The converse claim—amounting to the claim mentioned above, that there are no functions in *S* *other than* ones whose values can be obtained by an effective method—is easily established, since a Turing machine program is itself a specification of an effective method. Without exercising any insight, intuition, or ingenuity, a human being can work through the instructions in the program and carry out the required operations.

If Turing’s thesis is correct, then talk about the existence and non-existence of effective methods can be replaced throughout mathematics, logic and computer science by talk about the existence or non-existence of Turing machine programs.

Turing stated his thesis in numerous places, with varying degrees of rigor. The following formulation is one of the most accessible:

__Turing’s thesis__:  
“L.C.M.s \[logical computing machines: Turing’s expression for Turing machines\] can do anything that could be described as ‘rule of thumb’ or ‘purely mechanical’.” (Turing 1948: 414)

He adds:

> This is sufficiently well established that it is now agreed amongst logicians that “calculable by means of an L.C.M.” is the correct accurate rendering of such phrases. (Ibid.)

### 1.2 Formulations of Turing’s thesis in terms of numbers

In his 1936 paper, titled “On Computable Numbers, with an Application to the Entscheidungsproblem”, Turing wrote:

> Although the subject of this paper is ostensibly the computable numbers, it is almost equally easy to define and investigate computable functions … I have chosen the computable numbers for explicit treatment as involving the least cumbrous technique. (1936: 58)

Computable numbers are (real) numbers whose decimal representation can be generated progressively, digit by digit, by a Turing machine. Examples are:

-   any number whose decimal representation consists of a finite number of digits (e.g., 109, 1.142)
-   all rational numbers, such as one-third, two-sevenths, etc.
-   some irrational real numbers, such as π and e.

Some real numbers, though, are *un*computable, as Turing proved. Turing’s proof pointed to specific examples of uncomputable real numbers, but it is easy to see in a general way that there *must* be real numbers that cannot be computed by any Turing machine, since there are *more* real numbers than there are Turing-machine programs. There can be no more Turing-machine programs than there are whole numbers, since the programs can be counted: 1st program, 2nd program, and so on; but, as Georg Cantor proved in 1874,there are vastly more real numbers than whole numbers (Cantor 1874).

As Turing said, “it is almost equally easy to define and investigate computable functions”: there is, in a certain sense, little difference between a computable number and a computable function. For example, the computable number .14159… (formed of the digits following the decimal point in π, 3.1419…) corresponds to the computable function: f(1)\=1, f(2)\=4, f(3)\=1, f(4)\=5, f(6)\=9, … .

As well as formulations of Turing’s thesis like the one given above, Turing also formulated his thesis in terms of numbers:

> \[T\]he “computable numbers” include all numbers which would naturally be regarded as computable. (Turing 1936: 58)
> 
> It is my contention that these operations \[the operations of an L.C.M.\] include all those which are used in the computation of a number. (Turing 1936: 60)

In the first of these two formulations, Turing is stating that every number which is able to be calculated by an effective method (that is, “all numbers which would naturally be regarded as computable”) is included among the numbers whose decimal representations can be written out progressively by one or another Turing machine. In the second, Turing is saying that the operations of a Turing machine include all those that a human mathematician needs to use when calculating a number by means of an effective method.

### 1.3 The meaning of ‘computable’ and ‘computation’ in Turing’s thesis

Turing introduced his machines with the intention of providing an idealized description of a certain human activity, the tedious one of *numerical computation*. Until the advent of automatic computing machines, this was the occupation of many thousands of people in business, government, and research establishments. These human rote-workers were in fact called *computers*. Human computers used effective methods to carry out some aspects of the work nowadays done by electronic computers. The Church-Turing thesis is about computation *as this term was used in 1936*, viz. human computation (to read more on this, turn to the [section 3][1]).

For instance, when Turing says that the operations of an L.C.M. include all those needed “in the computation of a number”, he means “in the computation of a number by a human being”, since that is what computation was in those days. Similarly “numbers which would naturally be regarded as computable” are numbers which would be regarded as computable by a human computer, a human being who is working solely in accordance with an effective method.

### 1.4 The *Entscheidungsproblem*

Turing introduced his thesis in the course of arguing that the *Entscheidungsproblem*, or decision problem, for the functional calculus—also known as the first-order predicate calculus—is unsolvable. This problem was first posed by David Hilbert (Hilbert and Ackermann 1928). As explained by Turing (1936: 84), Hilbert’s *Entscheidungsproblem* is this: *Is there a general (effective) process for determining whether a given formula A of the functional calculus is provable?*

The truth table test is such a method for the propositional calculus. However, Turing showed that, given his thesis, there can be *no* effective method in the case of the full first-order predicate calculus.

He proved formally that no Turing machine can tell, of each formula of the predicate calculus, whether or not the formula is a theorem of the calculus (provided the machine is limited to a finite number of steps when testing a formula for theoremhood). So, given his thesis that if an effective method exists then it can be carried out by one of his machines, it follows that there is no such method.

#### Church’s contribution

Church stated the *Entscheidungsproblem* more generally:

> By the Entscheidungsproblem of a system of symbolic logic is here understood the problem to find an effective method by which, given any expression *Q* in the notation of the system, it can be determined whether or not *Q* is provable in the system. (Church 1936b: 41)

A few months before Turing, Church arrived at the same negative result concerning the decidability of the functional calculus. They discovered this result quite independently of one another. Church employed the concept of *lambda-definability* (λ-definability) where Turing used computability by an L.C.M.

The concept of a lambda-definable function is due to Church and his student Stephen Kleene (Church 1932, 1936a, 1941; Kleene 1935). A function is said to be lambda-definable if the values of the function can be obtained by a certain process of repeated substitution.

Where Turing used the term ‘purely mechanical’, Church used ‘effectively calculable’ to indicate that there is an effective method for obtaining the values of the function. He proposed that we

> define the notion … of an effectively calculable function of positive integers by identifying it with the notion of a recursive function of positive integers (or of a λ-definable function of positive integers). (Church 1936a: 356)

The concept of a recursive function is due to Kurt Gödel and Jacques Herbrand (Gödel 1934; Herbrand 1932). The class of lambda-definable functions (of positive integers) and the class of recursive functions (of positive integers) are identical. This was proved by Church and Kleene (Church 1936a; Kleene 1936).

After learning of Church’s 1936 proposal to identify effectiveness with lambda-definability (while preparing his own paper for publication) Turing quickly established that the concept of lambda-definability and his concept of computability are equivalent (by proving the “theorem that all … λ-definable sequences … are computable” and its converse; 1936: 88ff). Thus, in Church’s proposal, the words “λ-definable function of positive integers” (and equally the words “recursive function of positive integers”) can be replaced by “function of positive integers that is computable by Turing machine”.

Emil Post referred to Church’s identification of effective calculability with recursiveness and lambda-definability as a ‘working hypothesis’, and he quite properly criticized Church for masking this hypothesis as a *definition*:

> \[T\]o mask this identification under a definition … blinds us to the need of its continual verification. (Post 1936: 105)

This, then, is the ‘working hypothesis’ that, in effect, Church proposed:

__Church’s thesis__:  
A function of positive integers is effectively calculable only if lambda-definable (or, equivalently, recursive).

The reverse implication, that every lambda-definable function of positive integers is effectively calculable, is commonly referred to as *the converse of Church’s thesis,* although Church himself did not so distinguish (bundling both theses together in his ‘definition’).

If attention is restricted to functions of positive integers, Church’s thesis and Turing’s thesis are *extensionally* equivalent. ‘Extensionally equivalent’ means that the two theses are about one and the same class of functions: in view of the previously mentioned results by Church, Kleene and Turing, the class of lambda-definable functions (of positive integers) is identical to the class of recursive functions (of positive integers) and to the class of computable functions (of positive integers). Notice, though, that while the two theses are equivalent in this sense, they nevertheless have distinct meanings and so are two *different* theses. One important difference between the two is that Turing’s thesis concerns *computing machines*, whereas Church’s does not.

Concerning the origin of the terms ‘Church’s thesis’ and ‘Turing’s thesis’, Kleene seems to have been the first to use the word ‘thesis’ in this connection: in 1952, he introduced the name ‘Church’s thesis’ for the proposition that every effectively calculable function (on the natural numbers) is recursive (Kleene 1952: 300, 301, 317). The term ‘Church-Turing thesis’ also seems to have originated with Kleene—with a flourish of bias in favour of his mentor Church:

> So Turing’s and Church’s theses are equivalent. We shall usually refer to them both as *Church’s thesis*, or in connection with that one of its … versions which deals with ‘Turing machines’ as the *Church-Turing thesis*. (Kleene 1967: 232)

Some prefer the name *Turing-Church thesis*.

### 1.5 Comparing the Turing and Church approaches

One way in which the two men’s approaches differed was that Turing’s concerns were rather more general than Church’s, in that (as indicated previously) Church considered only functions of positive integers, whereas Turing described his work as encompassing “computable functions of an integral variable or a real or computable variable, computable predicates, and so forth” (1936: 58). Turing intended to pursue the theory of computable functions of a real variable in a subsequent paper, but in fact did not do so.

A greater difference lay in the profound significance of Turing’s approach for the emerging science of automatic computation. Church’s approach did not mention computing machinery, whereas Turing’s introduced the ‘Turing machine’, as Church dubbed it in his 1937a review of Turing’s paper—Turing’s abstract computing machine that encapsulates the fundamental logical principles of the stored-program, all-purpose digital computer.

In his review of Turing’s work, Church himself acknowledged the superiority of Turing’s analysis of effectiveness, saying:

> computability by a Turing machine … has the advantage of making the identification with effectiveness in the ordinary (not explicitly defined) sense evident immediately. (Church 1937a: 43)

Gödel also found Turing’s analysis superior. Kleene related that Gödel was unpersuaded by Church’s thesis until he saw Turing’s formulation:

> According to a November 29, 1935, letter from Church to me, Gödel “regarded as thoroughly unsatisfactory” Church’s proposal to use λ-definability as a definition of effective calculability. … It seems that only after Turing’s formulation appeared did Gödel accept Church’s thesis. (Kleene 1981: 59, 61)

Gödel described Turing’s analysis of computability as “most satisfactory” and “correct … beyond any doubt” (Gödel 1951: 304 and \*193?: 168). He remarked:

> We had not perceived the sharp concept of mechanical procedures sharply before Turing, who brought us to the right perspective. (Quoted in Wang 1974: 85)

Gödel also said:

> The resulting definition of the concept of mechanical by the sharp concept of “performable by a Turing machine” is both correct and unique. … Moreover it is absolutely impossible that anybody who understands the question and knows Turing’s definition should decide for a different concept. (Quoted in Wang 1996: 203)

It was Turing’s work, Gödel emphasized, that enabled him to generalize his incompleteness result of 1931 (originally directed specifically at the formal system set out by Whitehead and Russell in their *Principia Mathematica*) to “*every* consistent formal system containing a certain amount of finitary number theory” (Gödel in Davis 1965: 71).

Even the modest young Turing agreed that his analysis was “possibly more convincing” than Church’s (Turing 1937: 153).

### 1.6 Reasons for accepting the thesis

While there have from time to time been attempts to call the Church-Turing thesis into question (for example by László Kalmár in his 1959; Elliot Mendelson replied in his 1963), the summary of the situation that Turing gave in 1948 is no less true today: “it is now agreed amongst logicians that ‘calculable by L.C.M.’ is the correct accurate rendering” of the informal concept of effectiveness.

Much evidence has amassed for the ‘working hypothesis’ proposed by Church and Turing in 1936. One of the fullest surveys is to be found in chapters 12 and 13 of Kleene’s 1952. In summary:

-   (1) Every effectively calculable function that has been investigated in this respect has turned out to be computable by Turing machine.
-   (2) All known methods or operations for obtaining new effectively calculable functions from given effectively calculable functions are paralleled by methods for constructing new Turing machines from given Turing machines.
-   (3) All attempts to give an exact analysis of the intuitive notion of an effectively calculable function have turned out to be *equivalent*, in the sense that each analysis offered has been proved to pick out the same class of functions, namely those that are computable by Turing machine.

(3) is often considered (although not in fact by Kleene himself) to be very strong evidence for the thesis, because of the *diversity* of the various formal analyses involved. For example, apart from the analyses already mentioned in terms of lambda-definability and recursiveness—and, of course, Turing-machine computability—there are analyses in terms of register machines (Shepherdson and Sturgis 1963), Post’s canonical and normal systems (Post 1943, 1946), combinatory definability (Schönfinkel 1924; Curry 1929, 1930, 1932), Markov algorithms (Markov 1960), and Gödel’s notion of reckonability (Gödel 1936; Kleene 1952).

(3) may be summed up by saying that the concept of effective calculability—or the concept of computability simpliciter—has turned out to be *formalism-independent*, in that all these different formalisms pick out exactly the *same* class of functions. Gödel emphasised the importance of formalism-independence in remarks he made in 1946 (Kennedy 2013 gives a discussion of these remarks). Gödel said that “the great importance … \[of\] Turing’s computability” is

> largely due to the fact that with this concept one has for the first time succeeded in giving an absolute definition of an interesting epistemological notion, i.e., one not depending on the formalism chosen. (Gödel 1946: 150)

### 1.7 Turing’s arguments for the thesis

Outstanding among the reasons for accepting the thesis are two arguments that Turing gave in Section 9 of “On Computable Numbers”. He referred to these arguments simply as ‘I’ and ‘II’. Turing’s argument I involves a number of plausible assumptions about human computers. These include the following (1936: 75–76):

1.  Instead of using two-dimensional sheets of paper, the computer can do his or her work on paper tape of the same kind that a Turing machine uses—a one-dimensional tape, divided into squares.
2.  The computer is not able to recognize more than a finite number of different types of symbol.
3.  The computer is not able to observe an unlimited number of tape-squares all at once—if he or she wishes to observe more squares than can be taken in at one time, then successive observations of the tape must be made.
4.  When the computer makes a successive observation in order to view more squares, none of the newly observed squares will be more than a certain fixed distance away from the nearest previously observed square. In other words, successive observations do not involve unbounded leaps along the tape.
5.  When the computer makes changes to the contents of the tape (e.g., by deleting the symbol written in a particular square and replacing it by a different symbol), no more than one square can be altered at once. If the computer wishes to alter, say, 100 squares then he or she performs 100 successive operations.
6.  The computer’s behavior at any moment is determined by the symbols that he or she is observing and his or her ‘state of mind’ at that moment; and the number of ‘states of mind’ that need to be taken into account when describing the computer’s behavior is finite. (Turing noted that reference to the computer’s states of mind can be avoided by talking instead about configurations of symbols, these being “a more definite and physical counterpart” of states of mind.)

Turing argued that, given his various assumptions about human computers, the work of any human computer can be taken over by a Turing machine. Whatever sequence the human computer is computing, a Turing machine “can be constructed to compute the same sequence”, Turing said (1936: 77). Therefore (argument I concludes) any humanly computable number—or, more generally, sequence of symbols—is also computable by Turing machine.

Turing’s argument II hinges on a proposition we may call

__Turing’s provability theorem__:  
Every formula provable in Hilbert’s first-order predicate calculus can be proved by the universal Turing machine. (See Turing 1936: 77)

Argument II is the subject of the next section.

### 1.8 A modern version of Turing’s argument II

A significant recent contribution to the area has been made by Kripke (2013). A conventional view of the status of the Church-Turing thesis is that, while “very considerable intuitive evidence” has amassed for the thesis, the thesis is “not a precise enough issue to be itself susceptible to mathematical treatment”, as Kripke puts it (2013: 77). Kleene gave an early expression of this now conventional view:

> Since our original notion of effective calculability of a function … is a somewhat vague intuitive one, the thesis cannot be proved. … While we cannot prove Church’s thesis, since its role is to delimit precisely an hitherto vaguely conceived totality, we require evidence …. (Kleene 1952: 318)

Rejecting the conventional view, Kripke suggests that, on the contrary, the Church-Turing thesis is susceptible to mathematical proof. Furthermore he canvasses the idea that Turing himself sketched an argument that serves to prove the thesis.

As previously mentioned, Section 9 of Turing’s 1936 paper offered a number of arguments for the thesis. Kripke attempts to build a mathematical demonstration of the Church-Turing thesis around the second of these, Turing’s II, claiming that his demonstration is “very close” to Turing’s (Kripke 2013: 80). (Although Kripke admits that he does “not find \[Turing’s\] argument II to be entirely clearly presented” (2013: 81) and, in its detail, the Kripke argument differs from Turing’s argument.)

Kripke argues that the Church-Turing thesis is a corollary of Gödel’s completeness theorem for first-order predicate calculus with identity. Put somewhat crudely, the latter theorem states that every *valid* deduction (couched in the language of first-order predicate calculus with identity) is *provable* in the calculus. In other words, the deduction of *B* from premises A1, A2, … An (where statements A1, A2, … An, *B* are all in the language of first-order predicate calculus with identity) is logically valid if and only if *B* can be proved from A1, A2, … An in the calculus.

The first step of the Kripke argument is his claim that (error-free, human) computation is itself a form of deduction:

> \[A\] computation is a special form of mathematical argument. One is given a set of instructions, and the steps in the computation are supposed to follow—follow deductively—from the instructions as given. *So a computation is just another mathematical deduction, albeit one of a very specialized form*. (Kripke 2013: 80)

The following two-line program in pseudo-code illustrates Kripke’s claim. The symbol ‘→’ is read ‘becomes’, and ‘=’ as usual means identity. The first instruction in the program is

r→2

This tells the computer to place the value 2 in storage location *r* (assumed to be initially empty). The second instruction

r→r+3

tells the computer to add 3 to the content of *r* and store the result in *r* (over-writing the previous content of *r*). The execution of this two-line program can be represented as a deduction:

\[Execution of r→2, followed immediately by execution of r→r+3\] logically entails that r\=5 in the immediately resulting state.

In the case of Turing-machine programs, Turing developed a detailed logical notation for expressing all such deductions (Turing 1936).

(In fact, the successful execution of *any* string of instructions can be represented deductively in this fashion—Kripke has not drawn attention to a feature special to computation. The instructions do not need to be ones that a computer can carry out.)

The second step of Kripke’s argument is to appeal to what he calls *Hilbert’s thesis* (attributing the name to Martin Davis): this is the thesis that the steps of any mathematical argument can be expressed “in a language based on first-order logic (with identity)” (Kripke 2013: 81).

Applying Hilbert’s thesis to Kripke’s above quoted claim that “a computation is just another mathematical deduction” (2013: 80) yields:

every (human) computation can be formalized as a valid deduction couched in the language of first-order predicate calculus with identity.

Now, applying Gödel’s completeness theorem to this yields in turn:

every (human) computation is provable in first-order predicate calculus with identity, in the sense that, given an appropriate formalization, each step of the computation can be derived from the instructions (possibly in conjunction with ancillary premises, e.g., well-known mathematical premises, or premises concerning numbers that are supplied to the computer at the start of the computation).

Finally, applying Turing’s provability theorem to this intermediate conclusion yields the Church-Turing thesis:

every (human) computation can be done by Turing machine.

Nachum Dershowitz and Yuri Gurevich and (independently) Wilfried Sieg have also argued that the Church-Turing thesis is susceptible to mathematical proof. Sieg focusses on Turing’s argument I, offering an axiomatized version of it in his 2002 and 2008 (for a critique of Sieg’s approach see Shagrir 2006). In their 2008 Dershowitz and Gurevich offer “a proof of Church’s Thesis, as Gödel and others suggested may be possible” (2008, 299), adding:

> In a similar way, but with a different set of basic operations, one can prove Turing’s Thesis, … . (Dershowitz and Gurevich 2008: 299)

### 1.9 Turing on the status of the thesis

Turing’s own view of the status of his thesis is very different from that expressed by Kripke, Sieg, and Dershowitz and Gurevich. According to Turing, his thesis is not susceptible to mathematical proof. He did not consider either argument I or argument II to be a mathematical demonstration of his thesis: he asserted that I and II, and indeed “\[a\]ll arguments which can be given” for the thesis, are

> fundamentally, appeals to intuition, and for this reason rather unsatisfactory mathematically. (Turing 1936: 74)

Indeed, Turing might have regarded Hilbert’s thesis as itself an example of a proposition that can be justified only by appeals to intuition.

Turing discussed a thesis that is closely related to Turing’s thesis, namely *for every systematic method there is a corresponding substitution-puzzle* (where ‘substitution-puzzle’, like ‘computable by Turing machine’, is a rigorously defined concept). He said:

> The statement is … one which one does not attempt to prove. Propaganda is more appropriate to it than proof, for its status is something between a theorem and a definition. (Turing 1954: 588)

Probably Turing would have taken this remark to apply equally to the thesis (Turing’s thesis) that *for every systematic method there is a corresponding Turing machine*. He also said (in handwritten material published in 2004) that the phrase ‘systematic method’

> is a phrase which, like many others e.g., ‘vegetable’ one understands well enough in the ordinary way. But one can have difficulties when speaking to greengrocers or microbiologists or when playing ‘twenty questions’. Are rhubarb and tomatoes vegetables or fruits? Is coal vegetable or mineral? What about coal gas, marrow, fossilised trees, streptococci, viruses? Has the lettuce I ate at lunch yet become animal? … The same sort of difficulty arises about question c) above \[*Is there a systematic method by which I can answer such-and-such questions*?\]. An ordinary sort of acquaintance with the meaning of the phrase ‘systematic method’ won’t do, because one has got to be able to say quite clearly about any kind of method that might be proposed whether it is allowable or not. (Turing in Copeland 2004b: 590)

Here Turing is emphasizing that the term ‘systematic method’ is not exact, and so in that respect is like the term ‘vegetable’ but unlike mathematically precise terms, such as ‘λ-definable’, ‘Turing-machine computable’, and ‘substitution-puzzle’. Hence his claim that the appropriate way to support a statement that pairs systematic methods with items falling under a mathematically precise description is to offer ‘propaganda’, rather than to attempt to prove it.

## 2\. Misunderstandings of the Thesis

Unfortunately a myth has arisen concerning Turing’s paper of 1936, namely that he there gave a treatment of the *limits of mechanism*, and established a fundamental result to the effect that the universal Turing machine can simulate the behaviour of *any* machine. This myth has passed into the philosophy of mind, theoretical psychology, cognitive science, computer science, Artificial Intelligence, Artificial Life, and elsewhere—generally to pernicious effect.

For example, the *Oxford Companion to the Mind* states:

> Turing showed that his very simple machine … can specify the steps required for the solution of any problem that can be solved by instructions, explicitly stated rules, or procedures. (Richard Gregory writing in his 1987: 784)

Daniel Dennett maintains that

> Turing had proven—and this is probably his greatest contribution—that his Universal Turing machine can compute any function that any computer, with any architecture, can compute (1991: 215)

and also that *every*

> task for which there is a clear recipe composed of simple steps can be performed by a very simple computer, a universal Turing machine, the universal recipe-follower. (1978: xviii)

Paul and Patricia Churchland assert that Turing’s

> results entail something remarkable, namely that a standard digital computer, given only the right program, a large enough memory and sufficient time, can compute *any* rule-governed input-output function. That is, it can display any systematic pattern of responses to the environment whatsoever. (1990: 26)

These various quotations are typical of writing on the foundations of computer science and computational theories of mind. The claims made are true, however, only if the general terms ‘explicitly stated rule’, ‘instruction’, ‘clear recipe composed of simple steps’, and so forth, are *restricted* in such a way as to refer only to what can be done by means of effective methods. Turing did *not* show that his machines can solve any problem that can be solved “by instructions, explicitly stated rules, or procedures” (Gregory 1987), and nor did he prove that the universal Turing machine “can compute any function that any computer, with any architecture, can compute” (Dennett 1991). Nor do his results entail that a standard digital computer “can compute *any* rule-governed input-output function” (Churchland and Churchland 1990).

In reality Turing proved that his universal machine can compute any function that any Turing machine can compute; and he put forward, and advanced philosophical arguments in support of, the thesis that effective methods are to be identified with methods that the universal Turing machine is able to carry out. The sweeping claims just quoted go far beyond Turing’s own words.

### 2.1 Distant cousins of the Church-Turing thesis

The Church-Turing thesis is a thesis about the extent of effective methods, and therein lies its mathematical importance. Putting this another way, the thesis concerns what a *human being* can achieve when working by rote, with paper and pencil (ignoring contingencies such as boredom, death, or insufficiency of paper). The thesis carries no implication concerning the extent of what *machines* are capable of achieving (even digital machines acting in accordance with “explicitly stated rules” (Gregory 1987)). Because, among a machine’s repertoire of basic operations, there may be operations that a human being working by rote with paper and pencil cannot perform.

Essentially, then, the Church-Turing thesis says that no human computer, or machine that mimics a human computer, can out-compute the universal Turing machine. However, a variety of other propositions, very different from the Church-Turing thesis properly so called, are from time to time dubbed the Church-Turing thesis (or Church’s thesis)—sometimes, but not always, with accompanying hedges, such as ‘strong form’ and ‘physical version’. For instance, the claim that the universal Turing machine can do any mathematical task that can be done by *any* machine—a claim very different from Turing’s—is sometimes referred to as the Church-Turing thesis.

This loosening of established terminology is unfortunate, since it can easily lead to misunderstandings and confusion. Some examples from the literature of this loosening are:

> connectionist models … may possibly even challenge the strong construal of Church’s Thesis as the claim that the class of well-defined computations is exhausted by those of Turing machines. (Smolensky 1988: 3)
> 
> That there exists a most general formulation of machine and that it leads to a unique set of input-output functions has come to be called *Church’s thesis*. (Newell 1980: 150)
> 
> Church-Turing thesis: If there is a well defined procedure for manipulating symbols, then a Turing machine can be designed to do the procedure. (Henry 1993: 149)
> 
> \[I\]t is difficult to see how any language that could actually be run on a physical computer could do more than Fortran can do. The idea that there is no such language is called Church’s thesis. (Geroch and Hartle 1986: 539)

Also, more distant still from anything that Church or Turing actually wrote:

> The first aspect that we examine of Church’s Thesis … \[w\]e can formulate, more precisely: The behaviour of any discrete physical system evolving according to local mechanical laws is recursive. (Odifreddi 1989: 107)
> 
> I can now state the physical version of the Church-Turing principle: “Every finitely realizable physical system can be perfectly simulated by a universal model computing machine operating by finite means”. This formulation is both better defined and more physical than Turing’s own way of expressing it. (Deutsch 1985: 99)

The latter is indeed “more physical” than Turing’s thesis. It is, though, a completely *different* claim from Turing’s own, and so it is misleading to present it as a “better defined” version of what Turing said. Turing and Church were talking about effective methods, not finitely realizable physical systems. Although the phrase “physical version of the Church-Turing thesis” is reasonably common in the current literature, it is better avoided, since neither Church nor Turing endorsed, nor even formulated, any such proposition.

Similarly:

> \[T\]he Physical Church-Turing Thesis … is the conjecture that whatever physical computing device (in the broader sense) or physical thought-experiment will be designed by any future civilization, it will always be simulateable by a Turing machine. (Andréka, Németi, and Németi 2009: 500)

These writers go on to assert that what they call the ‘Physical Church-Turing Thesis’

> was formulated and generally accepted in the 1930s. (Ibid.)

Yet it was *not* the conjecture that these writers set out in the quote, but Turing’s and Church’s theses properly so called, that were formulated and generally accepted in the 1930s and 1940s.

### 2.2 The maximality thesis

It is important to distinguish between the Church-Turing thesis properly so called and what I term the ‘maximality thesis’ (Copeland 2000).

First, some terminology. A machine *m* will be said to be able to *generate* a certain function (e.g., *x* squared) if *m* can be set up so that if *m* is presented with any of the function’s arguments (e.g., 4), *m* will carry out some sequence of processing steps, at the end of which *m* produces the corresponding value of the function (16 in the example). *Mutatis mutandis* for functions that, like addition, demand more than one argument.

__Maximality thesis__:  
All functions that can be generated by machines (working in accordance with a finite program of instructions) are computable by effective methods.

Robin Gandy is one of the few writers to have distinguished explicitly between Turing’s thesis and the stronger proposition that *whatever can be calculated by a machine can be calculated by a Turing machine* (Gandy 1980). Gandy called his own formulation of the maximality thesis ‘Thesis M’. (Gandy’s argument for his Thesis M is evaluated in Copeland and Shagrir 2007.)

#### 2.2.1 Avoiding confusion: the term ‘computable’

It is worth noting the existence in the literature of another practice with the potential to mislead the unwary. (Although, unlike the terminological practices complained about above, this one is in itself perfectly acceptable.) In technical material, including textbooks, the word ‘computable’ is often tied by definition to effectiveness. Thus a function is said to be computable if and only if there is an effective method for obtaining its values. If ‘computable’ is used in this way, then the maximality thesis can be stated more simply: All functions that can be generated by machines (working in accordance with a finite program of instructions) are computable.

A common formulation of the Church-Turing thesis in the technical literature is the following, where ‘computable’ is being used synonymously with ‘effectively computable’:

> All computable functions are computable by Turing machine.

Turing himself uses ‘computable’ in this way, for instance in the following formulation of his thesis, mentioned earlier:

> \[T\]he ‘computable numbers’ include all numbers which would naturally be regarded as computable. (Turing 1936: 58)

Entailments such as the following are sometimes offered in the literature:

> certain functions are uncomputable in an absolute sense: uncomputable even by \[standard Turing machine\], and, therefore, uncomputable by any past, present, or future real machine. (Boolos and Jeffrey 1980: 55)

Because the word ‘computable’ is here being employed synonymously with ‘computable by an effective method’, this statement is entailed by the Church-Turing thesis, in conjunction with Turing’s result that there exist functions uncomputable by any standard Turing machine. However, to a casual reader of the technical literature, this statement and others like it may appear to say more than they in fact do. That a function is *uncomputable*, in this sense, by any past, present, or future real machine, does *not* entail that the function in question cannot be *generated* by some real machine (past, present, or future).

The terminological decision to tie the term ‘computable’ (and its cognates) to the concept of effectiveness does lead to the truth of:

No possible *computing machine* can generate a function that the universal Turing machine cannot.

But the question of the truth or falsity of the maximality thesis itself remains open. Although the terminological decision, if accepted, does prevent one from describing any machine putatively falsifying the maximality thesis as *computing* the function that it generates.

Some authors use phrases such as “computation in a broad sense” to indicate that they mean computation in a form potentially transcending effective methods (e.g., Copeland 1997; Andréka, Németi and Németi 2009).

#### 2.2.2 Another source of potential confusions: the term ‘mechanical’

There is a world of difference between the technical and everyday meanings of the word ‘mechanical’. In technical usage, the term ‘mechanical’, like the term ‘computable’, is tied to effectiveness, and in the technical literature ‘mechanical’ and ‘effective’ are usually used interchangeably (Gandy 1988 outlines the history of this use of the word ‘mechanical’). For example, statements like the following are to be found:

> Turing proposed that a certain class of abstract machines could perform any ‘mechanical’ computing procedure. (Mendelson 1964: 229)

Understood correctly, this remark attributes to Turing not the maximality thesis but Turing’s thesis properly so-called.

This technical usage of ‘mechanical’ has a tendency to obscure the possibility of there being machines (or biological organs) that generate functions not able to be generated by standard Turing machines. The question “Can a *machine* execute a procedure that is not mechanical?” may appear self-answering—yet this is precisely what is asked if the maximality thesis is questioned.

#### 2.2.3 The stronger and weaker forms of the maximality thesis

The maximality thesis admits of two interpretations, according to whether the phrase “can be generated by machine” is taken in the this-worldly sense of “can be generated by a machine that conforms to the physical laws (if not perhaps to the resource constraints) of the actual world” \[the weaker form\], or in a sense that abstracts from whether or not the envisaged machine could exist in the actual world \[the stronger form\]. The stronger-weaker terminology is intended to reflect the fact that the stronger form entails the weaker, but not vice versa.

The stronger form of the maximality thesis is known to be false. This can be shown by providing an example of a machine that works in accordance with a finite program of instructions in order to generate a function that is not computable by any standard Turing machine; and so, by Turing’s thesis, is not computable by an effective method. Although a single example suffices to show that the thesis is false, two examples are given here.

##### 1st counterexample to the stronger form of the thesis: Extended Turing Machines

Extended Turing Machines (ETMs) were invented by Fred Abramson (1971). An ETM is exactly like a standard Turing machine except that, whereas a standard Turing machine stores only a single discrete symbol on each (non-blank) square of its tape (e.g., ‘0’ or ‘1’), a single square of an ETM’s tape can store any desired *real* number, for example π, or even an uncomputable real number. (The method of storing real numbers on the tape is left unspecified in this purely logical model.)

As previously explained, Turing established the existence of real numbers that cannot be computed by standard Turing machines (Turing 1936). These numbers are usually called ‘uncomputable numbers’, but, in a broad sense of ‘compute’, ETMs can compute them. Abramson also proved that ETMs are able to generate functions not capable of being computed by any standard Turing machine. It follows, by Turing’s thesis, that these functions are not computable by effective methods. Therefore, ETMs form counterexamples to the stronger form of the maximality thesis.

##### 2nd counterexample to the stronger form of the thesis: Accelerating Turing Machines

Accelerating Turing machines (ATMs) are exactly like standard Turing machines except that their speed of operation accelerates as the computation proceeds (Stewart 1991; Copeland 1998a,b, 2002a; Copeland and Shagrir 2011): an ATM performs the second operation called for by its program in half the time taken to perform the first, the third in half the time taken to perform the second, and so on.

If the time taken to perform the first operation is called one ‘moment’, then the second operation is performed in half a moment, the third operation in quarter of a moment, and so on. Since

12+14+18+…+12n+12n+1+…≤1,

an ATM is able to perform infinitely many operations in 2 moments of operating time. This enables ATMs to generate functions that cannot be computed by any standard Turing machine.

One example of such a function is the *halting function *h**. h(n)\=1 if the *n*th (standard) Turing machine halts, and h(n)\=0 if the *n*th (standard) Turing machine runs on endlessly. It is well known that no standard Turing machine can generate this function (Davis 1958); but an ATM can produce any of the function’s values in a finite period of time.

When computing h(n), the ATM’s first step is write ‘0’ on a square of the tape called the answer square (*A*). The ATM then proceeds to simulate the actions of the *n*th Turing machine. If the ATM finds that the *n*th machine halts, then the ATM goes on to erase the ‘0’ that it previously wrote on *A*, replacing this by ‘1’. If, on the other hand, the *n*th machine does not halt, the ATM never returns to square *A* to erase the ‘0’ originally written there. Either way, once two moments of operating time have elapsed, *A* contains the value h(n) (Copeland 1998a).

So, again, ATMs form counterexamples to the stronger form of the maximality thesis.

#### 2.2.4 The weaker form of the thesis and ‘hypercomputation’

A *hypercomputer* is any information-processing machine (notional or real) that is able to achieve more than Turing’s human rote-worker can in principle achieve (see the entry on [computation in physical systems][2]). The term ‘hypercomputer’ was introduced in Copeland and Proudfoot 1999a. Hypercomputers compute (in a broad sense of ‘compute’) functions or numbers—or, more generally, solve problems or carry out information-processing tasks—that lie beyond the reach of the universal Turing machine (see Copeland 2002b, 2004a; Copeland and Proudfoot 2012; Syropoulos 2008). ETMs and ATMs are examples of—notional—hypercomputers.

The weaker form of the maximality thesis would be falsified by the actual existence of a physical hypercomputer. Speculation stretches back over at least five decades that there may be real physical processes—and so, potentially, real machine-operations—whose behaviour conforms to functions not computable by any standard Turing machine. See, for example, Scarpellini 1963; Kreisel 1967, 1974, 1982; Pour-El and Richards 1979, 1981; Doyle 1982; Geroch and Hartle 1986; Pitowsky 1990; Stannett 1990; da Costa and Doria 1991, 1994; Hogarth 1994; and Siegelmann and Sontag 1994. At the close of the 20th century Copeland and Sylvan gave an evangelical survey of the emerging field in their 1999.

To summarize the situation with respect to the weaker form of the maximality thesis: At the present time, it remains unknown whether hypercomputation is permitted or excluded by the contingencies of the actual universe. It is, therefore, an open empirical question whether or not the weaker form of the maximality thesis is true.

#### 2.2.5 The equivalence fallacy

A common but spurious argument for the maximality thesis, which we may call the ‘equivalence fallacy’, cites the fact, noted above, that many different attempts to analyze the informal notion of an effective method in precise terms—by Turing, Church, Post, Andrei Andreevich Markov, and others—turned out to be *equivalent* to one another, in the sense that each analysis provably picks out the same class of functions, namely those functions computable by (standard) Turing machines.

As previously mentioned, this convergence of analyses is generally considered very strong evidence for the Church-Turing thesis, because of the diversity of the analyses. However, this convergence is sometimes taken to be evidence for the maximality thesis. Allen Newell, for example, cites the convergence as showing that

> all attempts to … formulate … general notions of mechanism … lead to classes of machines that are equivalent in that they encompass *in toto* exactly the same set of input-output functions;

and, he says, the various equivalent analyses constitute a

> large zoo of different formulations of maximal classes of machines. (Newell 1980: 150)

Yet the analyses Newell is discussing are of the concept of an effective method, not of the concept of a machine-generatable function. The equivalence of the analyses bears only on the question of the extent of what is humanly computable, not on the question of whether the functions generatable by machines could extend beyond the functions generatable by human computers (even human computers who work forever and have access to unlimited quantities of paper and pencils). Indeed, Newell’s argument is undercut by the existence of (notional) machines capable of generating functions that, given Turing’s thesis, cannot be generated by any effective method.

### 2.3 Some consequences of misunderstanding the Church-Turing thesis

The error of confusing the Church-Turing thesis properly so called with one or another form of the maximality thesis has led to some remarkable claims in the foundations of psychology. For example, one frequently encounters the view that psychology *must* be capable of being expressed ultimately in terms of the Turing machine (e.g., Fodor 1981: 130; Boden 1988: 259). To one who makes this error, conceptual space will seem to contain no room for mechanical models of the mind that are not equivalent to Turing machines. Yet it is certainly possible that psychology will find the need to employ models of human cognition transcending Turing machines.

A similar confusion is found in Artificial Life. Christopher Langton, the leading pioneer of A-Life, said the following when writing about foundational matters:

> There are certain behaviours that are ‘uncomputable’—behaviours for which *no* formal specification can be given for a machine that will exhibit that behaviour. The classic example of this sort of limitation is Turing’s famous *Halting Problem*: can we give a formal specification for a machine which, when provided with the description of *any* other machine together with its initial state, will … determine whether or not that machine will reach its halt state? Turing proved that no such machine can be specified. (Langton 1989: 12)

However, Turing certainly did *not* prove that no such machine can be specified. All that Turing’s results tell us is that if there is such a machine, then it is not a Turing machine. It is also worth mentioning that, although the Halting Problem is very commonly attributed to Turing (as Langton does here), Turing did not in fact formulate it. The Halting Problem originated with Martin Davis, probably in 1952 (Davis 1958: 70).

No doubt many have been misled by the practice in the literature of using the terms ‘Church’s thesis’ and ‘Church-Turing thesis’ to refer indiscriminately not only to a thesis concerning which there is little real doubt, the Church-Turing thesis properly so called, but also a medley of different theses, of unknown truth-value.

#### 2.3.1 The simulation thesis

The maximality thesis is by no means the only thesis commonly mislabelled as the ‘Church-Turing thesis’. Another example is the *simulation thesis*. A widespread mistake in modern writing on computability and the brain is to hold that Turing’s results somehow entail that the brain, and indeed any biological or physical system whatever, can be *simulated* by a Turing machine.

For example, the entry on Turing in the Blackwell *Companion to the Philosophy of Mind* contains the following claims:

> we can depend on there being a Turing machine that captures the functional relations of the brain,

for so long as

> these relations between input and output are functionally well-behaved enough to be describable by … mathematical relationships … we know that some specific version of a Turing machine will be able to mimic them. (Sam Guttenplan writing in his 1994: 595)

John Searle uses the name ‘Church’s thesis’ for a statement that bears very little relation to Church’s thesis properly so called:

> Can the operations of the brain be simulated on a digital computer? … The answer seems to me … demonstrably ‘Yes’ … That is, naturally interpreted, the question means: Is there some description of the brain such that under that description you could do a computational simulation of the operations of the brain. But given Church’s thesis that anything that can be given a precise enough characterization as a set of steps can be simulated on a digital computer, it follows trivially that the question has an affirmative answer. (Searle 1992: 200)

The thesis that Searle mislabels as ‘Church’s thesis’ is a version of what I call the simulation thesis:

__Simulation thesis__:  
Any process that can be given a mathematical description (or that is scientifically describable or scientifically explicable) can be simulated by a Turing machine.

Paul and Patricia Churchland and Philip Johnson-Laird also assert versions of the simulation thesis, with a wave towards Church and Turing by way of justification:

> Church’s Thesis says that whatever is computable is Turing computable. Assuming, with some safety, that what the mind-brain does is computable, then it can in principle be simulated by a computer. (Churchland and Churchland 1983: 6)
> 
> If you assume that \[consciousness\] is scientifically explicable … \[and\] \[g\]ranted that the \[Church-Turing\] thesis is correct, then the final dichotomy rests on … functionalism. If you believe \[functionalism\] to be false … then … you hold that consciousness could be modelled in a computer program in the same way that, say, the weather can be modelled … If you accept functionalism, however, then you should believe that consciousness is a computational process. (Johnson-Laird 1987: 252)

As previously mentioned, Churchland and Churchland say that Turing’s

> results entail … that a standard digital computer, given only the right program, a large enough memory and sufficient time, can … display any systematic pattern of responses to the environment whatsoever. (1990: 26)

Churchland and Churchland certainly do not restrict talk of “systematic patterns” to patterns generated by an effective method, and this no doubt explains why they think they can assume “with some safety” that what the mind-brain does is computable—since, on their understanding of matters, this is to assume only that the mind-brain exhibits a systematic pattern of responses, or is characterized by a “rule-governed” input-output function (1990: 26). But Turing had no result entailing what the Churchlands say. In fact, he had a result entailing that there are patterns of responses that *no* standard Turing machine is able to generate. One example of such a pattern is provided by the function *h*, described earlier.

In reality the Church-Turing thesis does *not* entail that the brain (or the mind, or consciousness) can be modelled by a Turing machine program, not even in conjunction with the belief that the brain (or mind, or consciousness) is scientifically explicable, or rule-governed, or scientifically describable, or characterizable as a set of steps (Copeland 1998c). The simulation thesis is much stronger than the Church-Turing thesis: as with the maximality thesis, neither the Church-Turing thesis properly so called nor any result proved by Turing or Church entails the simulation thesis.

This is equally so if the simulation thesis is taken narrowly, as concerning processes that conform to the physics of the real world. If, on the other hand, the thesis is taken as ranging over all processes, including merely possible or notional processes, then the thesis is known to be false, for exactly the same reasons that the stronger form of the maximality thesis is false.

Any device or organ whose internal processes can be described completely by means of (what Church called) effectively calculable functions *can* be simulated exactly by a Turing machine (providing that the *input* into the device or organ is itself computable by Turing machine). But any device or organ whose mathematical description involves functions that are not effectively calculable cannot be so simulated. As Turing showed, there are uncountably many such functions. It is an open question whether a completed neuroscience will need to employ functions that are not effectively calculable.

## 3\. Some Key Remarks by Turing

Turing prefaced his first description of a Turing machine with the words:

> We may compare a man in the process of computing a … number to a machine. (Turing 1936: 59)

The Turing machine is a model, idealized in certain respects, of a *human being* calculating in accordance with an effective method.

Wittgenstein put this point in a striking way:

> Turing’s ‘Machines’. These machines are *humans* who calculate. (Wittgenstein 1947 \[1980\]: 1096.)

It is a point that Turing was to emphasize, in various forms, again and again. For example:

> A man provided with paper, pencil, and rubber, and subject to strict discipline, is in effect a universal machine. (Turing 1948: 416)

In order to understand Turing’s texts, and the logical claims contained in them, it is essential to keep in mind that when he used the words ‘computer’, ‘computable’ and ‘computation’, he employed them not in their modern sense as pertaining to machines, but as pertaining to human calculators:

> Computers always spend just as long in writing numbers down and deciding what to do next as they do in actual multiplications, and it is just the same with ACE \[the Automatic Computing Engine\] … \[T\]he ACE will do the work of about 10,000 computers … Computers will still be employed on small calculations … (Turing 1947: 387, 391)

Turing’s ACE, an early electronic stored-program digital computer, was built at the National Physical Laboratory, London; a pilot version—at the time the fastest functioning computer in the world—first ran in 1950, and a commercial model, the DEUCE, was marketed very successfully by English Electric.

### 3.1 Human computation and machine computation

The electronic stored-program digital computers for which the universal Turing machine was a blueprint are, each of them, computationally equivalent to a Turing machine, and so they too are, in a sense, models of human beings engaged in computation. Turing chose to emphasise this when explaining these electronic machines in a manner suitable for an audience of uninitiates:

> The idea behind digital computers may be explained by saying that these machines are intended to carry out any operations which could be done by a human computer. (Turing 1950: 444)

He made the point a little more precisely in the technical document containing his design for the ACE:

> The class of problems capable of solution by the machine \[the ACE\] can be defined fairly specifically. They are \[a subset of\] those problems which can be solved by human clerical labour, working to fixed rules, and without understanding. (Turing 1945: 386)

Turing went on to *characterize* this subset in terms of the amount of paper and time available to the human clerk.

It was presumably because he considered the point to be essential for understanding the nature of the new electronic machines that he chose to begin his *Programmers’ Handbook for Manchester Electronic Computer Mark II* with this explanation:

> Electronic computers are intended to carry out any definite rule of thumb process which could have been done by a human operator working in a disciplined but unintelligent manner. (Turing *c*1950: 1)

It was not some deficiency of imagination that led Turing to model his L.C.M.s on what could be achieved by a *human* computer. The purpose for which he invented the Turing machine demanded it. The *Entscheidungsproblem* is the problem of finding a *humanly executable* method of a certain sort, and, as was explained earlier, Turing’s aim was to show that there is no such method in the case of the full first-order predicate calculus.

### 3.2 Turing’s use of ‘machine’

It is also important to note that, when Turing uses the word ‘machine’, he often means not machine-in-general but, as we would now say, Turing machine. At one point he explicitly draws attention to this usage:

> The expression ‘machine process’ of course means one which could be carried out by the type of machine I was considering \[in “On Computable Numbers”\]. (Turing 1947: 378–9)

Thus when, a few pages later, Turing asserts that “machine processes and rule of thumb processes are synonymous” (1947: 383), he is to be understood as advancing the Church-Turing thesis (and its converse), not a version of the maximality thesis. Unless his intended usage is borne in mind, misunderstanding is likely to ensue. Especially liable to mislead are statements like the following, which a casual reader might easily mistake for a formulation of the maximality thesis:

> The importance of the universal machine is clear. We do not need to have an infinity of different machines doing different jobs. A single one will suffice. The engineering problem of producing various machines for various jobs is replaced by the office work of ‘programming’ the universal machine to do these jobs. (Turing 1948: 414)

In context it is perfectly clear that these remarks concern machines equivalent to Turing machines; the passage is embedded in a discussion of L.C.M.s.

Whether or not Turing would, if queried, have assented to the maximality thesis is unknown. There is certainly no textual evidence in favour of the common belief that he did so assent.

[1]: https://plato.stanford.edu/entries/church-turing/#SomeKeyRemaTuri
[2]: https://plato.stanford.edu/entries/computation-physicalsystems/

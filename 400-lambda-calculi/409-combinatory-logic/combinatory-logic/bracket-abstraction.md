# Bracket abstraction algorithms

https://www.cantab.net/users/antoni.diller/brackets/intro.html

>A bracket abstraction algorithm removes variables from a term of combinatory logic.

"...were not keen on my fascination with combinatory logic as they both held that Curry, by treating functions as complete or saturated entities, had committed the cardinal sin against Fregean orthodoxy. I thought there was a way to answer this charge and continued to use combinatory logic to analyse the grammatical structure of language. Several years later I became interested in FPL and learnt that they could be implemented by being translated into combinatory logic. At the heart of this translation is a bracket abstraction algorithm. Super-combinator and other methods of implementation were then being developed and the use of combinatory logic fell out of favour. I still believed, however, that the full potential of combinatory logic had not yet been revealed. When I became a lecturer, I was fortunate to find a PhD student who shared my faith. David Stevens came up with the idea of *representing combinators iconically*. In standard notation the connection between a combinator and its behaviour has to be given by an arbitrary stipulation; *in an iconic representation the behaviour of a combinator is read off from its depiction*."

## Combinatory logic

There are several systems of combinatory logic; the one used here is *weak combinatory logic*.

We assume an infinite sequence of symbols, called variables, and two constants, `𝙆` and `S`, called *basic combinators*. Lowercase letters, sometimes decorated with subscripts, are used for variables. An atom is a variable or a constant.

A term is defined as
- every variable is a term
- every constant is a term
- if `P` and `Q` are terms, so is `(PQ)`

Uppercase letters, sometimes decorated with subscripts, are used for terms. A term of the form `(PQ)` is an application, but the outermost pair of parentheses is usually omitted. Normally, no space is left between the terms of an application, but sometimes one will be inserted for clarity and readability. Application associates to the left, so `PQRST` is `(((PQ)R)S)T`. The symbol `≡` represents syntactic identity: `P ≡ Q` means that `P` and `Q` are exactly the same term. Because combinatory logic contains no variable-binding operators every variable in a term is free. `FV(P)` represents the set of free variables in a term `P`.


A term of the form `Kpq` or `Spqr` is a redex. 
Contracting an instance of a redex in a term `T` 
means replacing one occurrence of
- `Kpq  -->> p`
- `Spqr -->> pr(qr)`

Let the result be `r`. Then we say that a term `t` contracts to `r`, written as `t -->>₁ r` in one step, and that `r` is the *contractum*. `t` is said to *reduce to* `r`, written `t -->> r`, iff `t` results from `r` by carrying out a finite, possibly zero, contractions. 

Combinators: 𝙆 𝙎  𝙄  𝘽 𝘾  𝙎′ 𝘽′ 𝘾′   
can be defined in terms of `K` and `S` as follows:
- 𝙄   = I  := SKK           (identity)
- 𝙎' = S' := B(B(BS)S)K
- 𝘽  = B  := S(KS)K        (composition)
- 𝘽' = B' := BB
- 𝘾  = C  := S(BBS)(KK)    (flip)
- 𝘾' = C' := B(BC)B

where `A := B` means that `A` is being defined as `B`.

We then have the following reduction properties:
- S  fgx  -->> fx(gx)
- K  xy   -->> x
- I  x    -->> x
- B  fgx  -->> f(gx)
- B' fxgy -->> fx(gy)
- C  fxy  -->> fxy
- C' fgxy -->> f(gy)x
- S' hgfx -->> h(gx)(fx)

Substituting the term `P` for every free occurrence of `x` in `X`, written 
`[P/x]X` or `X[P:=x]`, is defined in the following way:
- `[P/x] x ≡ P`
- `[P/x] Y ≡ Y` (provided `Y != x`)
- `[P/x]QR ≡ ([P/x]Q) ([P/x]R)`


## Bracket abstraction

**Uni-variate bracket abstraction** is a syntactic operation which removes a variable `x` from a term `X`, written [x]X, satisfying the property that ([x]X)P → [P/x]X. If [x]X = Q, then X is the input term and Q the abstract.

**Multi-variate bracket abstraction**, written [*x*1, *x*2, ..., *x*a]*X*, removes several variables from a term X. There are two types of multi-variate abstraction: in the *multi-sweep* variety we have [*x*1, *x*2, ..., *x*a]*X* := [*x*1]([*x*2](...([*x*a]*X*)...)), whereas in the *single-sweep* variety the *a* variables are abstracted simultaneously in a single process. On this webpage, unless explicitly stated otherwise, bracket abstraction shall mean uni-variate abstraction.

Figure 1. Algorithm (A).

One of the simplest abstraction algorithms is shown in Fig. 1; I call this *algorithm (A)*. The clauses of this have to be applied in the order in which they appear in Fig. 1, starting at the top. In the first clause *y* has to be an atom distinct from the abstraction variable *x*. In the third clause the abstraction variable *x* can occur in the terms *P* and *Q*, but does not have to. (Curry and Feys discuss this algorithm on pp. 189-190 of the first volume of *Combinatory Logic*.) Unfortunately, it produces fairly long-winded abstracts as you can see for yourself by trying some examples. Only lowercase and uppercase letters and parentheses can be input and each opening parenthesis must be matched with a closing one. Abstraction is performed on the variable *x* when you click the button.

Figure 2. Algorithm (B).

A better algorithm than (A) is shown in Fig. 2; it is better in the sense that it produces a shorter abstract when applied to the same input term. I refer to this new algorithm as *algorithm (B)*. This is much discussed by Curry, Hindley and Seldin on pp. 42-67 of the second volume of *Combinatory Logic*; the labelling of the various clauses is due to them and they refer to this as the (abcdef) algorithm. In this the abstraction variable *x* cannot occur in the term *E*, but it has to occur in terms *X* and *Y*. Although (B) produces shorter abstracts than (A), it still produces quite long-winded abstracts as you can see for yourself.

Figure 3. Algorithm (C).

It is possible to implement a functional programming language using either algorithm (A) or (B), but the resulting implementation is not very efficient. David Turner made the translation of a functional language into combinators practicable by making use of three additional combinators, namely B', C' and S', and appropriate abstraction clauses relating to them. His algorithm is often presented as shown in Fig. 3, but Turner's actual algorithm was slightly different. The differences are not important here. Most of the time algorithm (C) produces shorter abstracts than (B), but sometimes it does produce a longer abstract. Try it for yourself to see how it works.

## Representing combinators iconically

Algorithm (L), to be presented shortly, represents combinators as strings of the *iconic letters* y and n called, not surprisingly, yn-*strings*. The letter φ is used for an arbitrary yn-string. *size*(φ) is the number of occurrences of y and n in φ and φ*i*, for 1 ≤ *i* ≤ *size*(φ), is the *i*th letter in φ. String concatenation is represented by juxtaposition. The reduction properties of combinators represented by yn-strings are shown in Fig. 4.

Figure 4. Reduction of iconically represented combinators.

In order to understand how algorithm (L) works you need to know that every combinatory-logic term *P* can be uniquely expressed in the form *P*1*P*2...*P**m*, where *P*1 is an atom and *m* ≥ 1. The *P**i* are known as the *primal components* of *P*. Algorithm (L) is shown in Fig. 5.

Figure 5. Bracket abstraction algorithm (L).

Performing bracket abstraction by hand is tedious and error-prone, so experiment with algorithm (L) here to appreciate how it works.  

Algorithm (L) has many nice properties. If the input term and the abstract are written using the fewest number of parentheses, then they both contain exactly the same number of parentheses. Algorithm (C) often adds many parentheses when producing an abstract. This make processing such abstracts less efficient. In a sense that is not easy to define precisely, algorithm (L) preserves the structure of the input term. It takes into account the natural way of representing a term of combinatory logic as a tree. Because of the properties it possesses, algorithm (L) gives rise to a very efficient single-sweep, multi-variate abstraction algorithm

Algorithm (L) is not the most efficient algorithm employing yn-strings. It can be improved to produce shorter abstracts by introducing clauses (b) and (c). The resulting algorithm, called (L+), is shown in Fig. 6. Clause (b), in particular, has a dramatic effect on reducing the size of abstracts that really occur when the algorithm is used to implement a functional language. In most of my papers, however, I focus on algorithm (L), rather than (L+), because it leads to a very elegant single-sweep, multi-variate algorithm.

Figure 6. Bracket abstraction algorithm (L+).

Try algorithm (L+) for yourself to see how it works in practice.  

There is a sense in which algorithm (C) is a sub-algorithm of (L+). Each of the combinators used in (C), except for I, can be represented using yn-strings: K is n, S is yy, B is ny, B' is nny, C is yn, C' is nyn and S' is nyy. If the yn-strings introduced by (L+) in an abstract occur in the above list, then (C) would produce an abstract that only differs in the names of the combinators that occur in it.

## Comparison of bracket abstraction algorithms

To more fully appreciate how (L) and (L+) work is it useful to compare them against (C) and also against each other. Have a go at [comparing (C) and (L)][1], [comparing (L) and (L+)][2] and [comparing (L+) and (C)][3] to gain a deeper understanding of the meaning of the iconic combinators introduced here.

## References

-   M. W. Bunder, "Some Improvements to Turner's Algorithm for Bracket Abstraction", *Journal of Symbolic Locic*, vol. 55 (1990), pp. 656-669.
-   Haskell B. Curry and Robert Feys, *Combinatory Logic*, vol. 1, [Amsterdam, North-Holland, 1958].
-   Haskell B. Curry, J. R. Hindley and J. P. Seldin, *Combinatory Logic*, vol. 2, [Amsterdam, North-Holland, 1972].
-   Antoni Diller, "Making Abstraction Behave by Rerepresenting Combinators", Research Report, School of Computer Science, University of Birmingham, CSR-99-12 (November 1999); a [PDF version of this paper][4] is available on this website.
-   Antoni Diller, "Investigations into Iconic Representations of Combinators", in Javier Blanco (editor), *Argentine Workshop on Theoretical Computer Science (WAIT2000) Proceedings: Tandil, September 4-9, 2000*, [Buenos Aires, Sociedad Argentina de Informática e Investigación Operativa (SADIO), 2000], pp. 52-62; a [PDF version of this paper][5] is available on this website as is a [summary][6].
-   Antoni Diller, "Efficient Multi-variate Abstraction Using an Array Representation for Combinators", *Information Processing Letters*, vol. 84 (2002), pp. 311-317; the [full text of this paper][7] is freely available. It is discussed or mentioned in the following:
    -   Julien Cohen, Jean-Louis Giavitto and Olivier Michel, ["Variable elimination for building interpreters"][8]; I don't think this has been published yet.
    -   Julien Cohen, "Interprétation par SK-traduction et syntaxe abstraite d'ordre supérieur", in O. Michel (ed.), *Journées Francophones des Langages Applicatifs (JFLA 2005)* (2005), INRIA, pp. 17-34.
-   Antoni Diller, "Uni-variate Bracket Abstraction Using a String Representation for Combinators", Research Report, School of Computer Science, University of Birmingham, CSR-04-12 (October 2004).
-   Antoni Diller, "Efficient Bracket Abstraction Using Iconic Representations for Combinators", Research Report, School of Computer Science, University of Birmingham, CSR-11-05 (September 2011); a [PDF version of this paper][9] is available on this website as is a [summary][10].
-   David Stevens, "Variable Substitution with Iconic Combinators", in Andrzej M. Borzyszkowski and Stefan Sokołowski (eds.), *Mathematical Foundations of Computer Science*, Lecture Notes in Computer Science, vol. 711, [Berlin, Springer-Verlag, 1993], pp. 724-733.
-   David A. Turner, "A new implementation technique for applicative languages", *Software-Practice and Experience*, vol. 9 (1979), pp. 31-49.
-   David A. Turner, "Another Algorithm for Bracket Abstraction", *Journal of Symbolic Locic*, vol. 44 (1979), pp. 267-270.

© [Antoni Diller][11] (21 March 2014)

[1]: https://www.cantab.net/users/antoni.diller/brackets/compare1.html
[2]: https://www.cantab.net/users/antoni.diller/brackets/compare2.html
[3]: https://www.cantab.net/users/antoni.diller/brackets/compare3.html
[4]: https://www.cantab.net/users/antoni.diller/papers/brackets.pdf
[5]: https://www.cantab.net/users/antoni.diller/papers/wait.pdf
[6]: https://www.cantab.net/users/antoni.diller/papers/wait.html
[7]: http://www.spatial-computing.org/_media/mgs:tutorial:diller-multi-variate-combinator.pdf
[8]: https://arxiv.org/pdf/1005.1466v1.pdf
[9]: https://www.cantab.net/users/antoni.diller/papers/efficient.pdf
[10]: https://www.cantab.net/users/antoni.diller/papers/efficient.html
[11]: https://www.cantab.net/users/antoni.diller/index.html

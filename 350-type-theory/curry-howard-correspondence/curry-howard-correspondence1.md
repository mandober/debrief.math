# Curry-Howard correspondence

https://en.wikipedia.org/wiki/Curry-Howard_correspondence

*Curry-Howard correspondence (CHC)* is the direct relationship between computer programs and mathematical proofs. CHC is the link between logic and computation.

(In PLT and proof theory) the Curry-Howard correspondence, is also known as *proofs-as-programs* and *propositions-as-types*.

CHC is a *generalization of a syntactic analogy* 
between *systems of formal logic* 
and *computational calculi*.

CHC is usually attributed to Haskell Curry and William Alvin Howard, 
although the idea is related to 
the *operational interpretation of intuitionistic logic* 
given in various formulations by Brouwer, Heyting and Kolmogorov 
(*Brouwer-Heyting-Kolmogorov interpretation*) 
and Stephen Kleene (*Realizability*). 

The relationship has been extended to include 
category theory as the 3-way 
*Curry-Howard-Lambek correspondence*.

CHC is the observation that   
two families of seemingly unrelated formalisms,   
the `proof systems` on the one hand and    
the `models of computation` on the other,   
are in fact the `same kind of mathematical objects`.

If one abstracts over the peculiarities of either    
formalism, the following generalization arises:    
> A proof is a program,   
> and the formula it proves    
> is the type for the program.

More informally, this can be seen    
as an analogy that states that    

> the return type of a function    
> is analogous to a logical theorem    
>> with hypotheses corresponding    
>> to the types of the arguments;    
>>> the program to compute that function    
>>> is analogous to a proof of that theorem.

This sets a form of logic programming on a rigorous foundation: 
proofs can be represented as programs, 
and especially as lambda terms, 
or proofs can be run.

CHC also showed that classical logic corresponds to the ability to manipulate the continuation of programs. Also, the symmetry of sequent calculus was shown to express the duality between the evaluation strategies call-by-name and call-by-value.

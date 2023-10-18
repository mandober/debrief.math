# Logic :: Fundamentals :: 5. Validity and soundness



A deductive argument is **valid** if the conclusion necessarily follows from the premises. This is very important: for an argument to be valid, it does not matter whether the premises are actually true or not - what matters is only that, if the premises were true, the conclusion could not be false. The only concern of validity is that a conclusion is the *necessary logical consequence* of premises.

Let that sink in with another example: All rectangles are circles. All circles are triangles. Therefore, all rectangles are triangles. This is also a valid argument which happens to have false premises.

>A deductive argument is **valid** if the conclusion necessarily follows from the premises.

If the premises are true, the conclusion must also be true. It is impossible to have a valid argument in which the premises are true and the conclusion is false.

>A deductive argument is **sound** if it is valid and its premises are true.

Validity is weaker than soundness. Validity does't care about the truth of premises, only that conclusion is a logical consequence (entailment) of premises; only that it necessarily follows from the premises. *Rules of inference* are the means to make sure that this is really the case (they are explored later).

Soundness subsumes validity, making sure that the premises are actually true. We don't have to say that soundness makes sure that the conclusion is also true - it is enough to just insist on the truth of premises, because only a true conclusion can follow from true premises.

ASIDE: Soundness, as discusses here, is a property of deductive arguments. However, soundness is also a property of logic systems. A logic system is sound if every formula that can be proved in the system is logically valid with respect to the semantics of the system. This means that the rules of inference of a logic system are truth-preserving (have the property of preserving truth).

Thus, soundness is about the truth, while validity is about logical consequence.

Since soundness includes validity, an argument is unsound either if it is invalid or if its premises are not true. This also means that an unsound argument is necessarily invalid. 
Since an invalid argument is necessarily unsound.
For an argument to be sound, it must be valid first.




## Examples

The distinction between validity (logical consequence) and soundness (truth) is of the fundamental importance in deductive logic.

To generate examples of arguments concerning both validity and soundness, we can distinguish these 4 combinations of premises and conclusions regarding their truth value:
- true premises, true conclusion   (TT-)
- true premises, false conclusion  (TF-)
- false premises, true conclusion  (FT-)
- false premises, false conclusion (FF-)

Each of these examples is then split according into
- valid argument   (-V)
- invalid argument (-I)

to obtain a collection of these 8 arguments:

### True premises, true conclusion

(TTV) *Valid argument*:

    Cats are mammals.
    Tigers are cats.
    Therefore, tigers are mammals.

This argument is valid. Since it has true premises, so its conclusion must be true due to validity. Since it is valid and has true premisese (and hence true conclusion) it is also a *sound argument*.

(TTI) *Invalid argument*:

    Cats are mammals.
    Tigers are mammals.
    Therefore, tigers are cats.

This argument is invalid because the conclusion is not a logical consequence of premises. Being invalid it is unsound (because soundness depends on validity). It shows that an argument can be invalid and unsound despite having true premises and a true conclusion.

### True premises, false conclusion

(TFV) *Valid argument*:

  This combination is **impossible** because a valid argument cannot have true premises and a false conclusion!

(TFI) *Invalid argument*:

    Cats are mammals.
    Dogs are mammals.
    Therefore, dogs are cats.

This argument is invalid because the conclusion is not a logical consequence of premises. Being invalid it is unsound (because soundness depends on validity). It shows that an argument can be invalid and unsound despite having true premises (though the conclusion is false).

### False premises, true conclusion

(FTV) *Valid argument*:

    Dogs are cats.
    Cats are birds.
    Therefore, dogs are birds.

This argument is valid but unsound.

(FTI) *Invalid argument*:

    Cats are birds.
    Dogs are birds.
    Therefore, dogs are cats.

This argument is invalid and (thus/also) unsound.

### False premises, false conclusion

(FFV) *Valid argument*:

    Cats are birds.
    Birds are mammals.
    Therefore, cats are mammals.

This argument is valid but unsound.

(FFI) *Invalid argument*:

    Cats are birds.
    Tigers are birds.
    Therefore, tigers are cats.

This argument is invalid and (thus/also) unsound.


## Consequences

These examples help us establish the following general principles of logic:
- True premises                     do not guarantee validity (TxI: TTI, TFI)
- True conclusion                 does not guarantee validity (xTI: TTI, FTI)
- True premises and true conclusion do not guarantee validity (TTI)
+ True premises and false conclusion guarantee invalidity (TFI)
- False premises                      do not guarantee invalidity (FxV: FFV,FTV)
- False conclusion                  does not guarantee invalidity (FFV)
- False premises and false conclusion do not guarantee invalidity (FFV)
+ Valid argument   does not guarantee a true  conclusion (FFV)
+ Invalid argument does not guarantee a false conclusion (TTI, FFI)


premises,conclusion | Valid | Invalid | (Material implication)
--------------------|-------|---------|------------------------
T, T                | TTV   | TTI     | T
T, F                | -     | TFI     | F
F, T                | FTV   | FTI     | T
F, F                | FFV   | FFI     | T


Therefore, while the truth of propositions and the validity of arguments are distinct properties, the relationship between them is not straightforward.

We cannot say that truth and validity are independent from one another because the impossibility of TFV case (valid argument with true premises and false conclusion) shows that this one combination of truth-values is an absolute bar to validity. When an argument has true premises and a false conclusion, it must be invalid. In fact, this is how we define *invalidity*. (Note the similarily with material implication).

On the other hand, this partial reliance of validity on truth-values only exists for what logicians call the *semantic concept of validity*. The *syntactic concept of validity* makes no reference to truth values at all.

We should never be misled by true premises or true conclusions to automatically suppose that an argument is valid. Nor should we be misled by false premises or false conclusions to suppose that it is invalid. Nor should we be misled by valid reasoning to suppose that statements are true, or by invalid reasoning to suppose that statements are false.

Truth and validity are combined in the concept of *soundness*. An argument is **sound** iff all its premises are true and its reasoning is valid. Otherwise it is unsound. It follows that all sound arguments have true conclusions.

The only sound argument in the 8 examples above is TTV (valid argument with true premises and true conclusion). All others are examples of unsound arguments.

Empirical scientists (inductive reasoning) and private detectives (abductive reasoning) tell us whether statements are true. Logicians tell us whether reasoning is valid (deductive reasoning).

Logicians test for validity by looking for invalidity. We know exactly what invalidity in an argument is: to have true premises and a false conclusion. An *argument is valid in a weak sense* if it simply is not invalid. This weak sense of validity turns out to suffice for all the purposes of rigorous reasoning in science, mathematics, and daily life.

But to test for invalidity, we must know when we are dealing with true premises and a false conclusion. However, logicians do not know whether statements are true or false (because they are not empirical scientists or private detectives).

But despite this ignorance, logicians can still test validity. One way is to assume that an argument's premises are all true and the conclusion false (i.e. assume invalidity) and see what transpires.

Another way is to make all possible assumptions about the truth and falsity of the statements. If it turns out that there is at least one possible world in which the premises are all true and the conclusion is false, then the argument is invalid (and it is invalid for all worlds). This is because deductive reasoning seeks out the *necessary truth* - truth that holds in any conceivable world (ethernal truth).

## Back to arguments

An argument establish the truth of its conclusion relative to a set of premises and the admitted rules of inference.

Logicians do not care whether arguments succeed psychologically in changing people's minds or convincing them. The actual processes involved in human reasoning are studied by psychology. The effectiveness of reasoning in persuading others are studied by rhetoric. But the correctness of reasoning - the validity of inference - is studied by logic.

As we've sen above, there are 3 properties (dimensions) to an argument:
- truth of the premises
- truth of the conclusion
- validity of argument

To assess an argument, two of these three properties need be considered: the truth of the premises and the validity of reasoning. Of these, logicians study only the validity of reasoning (deductive reasoning), while the question of truth (of the premises) is left to the empirical scientists (inductive reasoning) and private detectives (abductive reasoning).

An argument is valid
* if the truth of premises guarantees the truth of the conclusion.
* if the conclusion would necessarily be true on the assumption that all the premises were true.
* if it is impossible for the conclusion to be false and all the premises to be true at the same time.
* if the conclusion can be deduced from the premises according to the rules of inference.

It turns out that these 4 formulations are equivalent. The last one is related to *syntactic validity*, the first three to *semantic validity*.

Note that only arguments can be valid or invalid, not propositions. Similarly, only propositions can have a truth value, not arguments. Validity pertains to reasoning (arguments), not to propositions, while truth pertains to propositions, not reasoning.

>The first fundamental principle of logic is this independence of truth and validity.

When an argument is valid and all its premises are true, then an argument is *sound*. Otherwise it is unsound. If an argument is sound, then its conclusion must be true and it would be illogical to daubt it.

An argument is *deductive* if the premises support the conclusion with necessity. An argument is *inductive* if its premises support the conclusion with possibility.

The binary categories of validity and invalidity apply only to deductive arguments; inductive arguments are said to be *strong* or *weak*.

In a valid deductive argument with all true premises, the truth of the conclusion is necessary and its falsehood is impossible.

In a *strong inductive argument* with all true premises, the truth of the conclusion is merely probable and its falsehood merely improbable.

The kind of support that valid deductions provide their conclusions is not a matter of degree; it is "all or nothing". 

The kind of support that strong inductions provide their conclusions is a matter of degree; it is "more or less".

>The conclusion of a valid deduction never contains more information than was contained the premises; the conclusion of an induction always does.

That is why deductions possess certainty (they never tell us anything new) and why inductions are always uncertain to some degree.

Inductions should not be confused with bad deductions. The difference between deduction and induction is not the difference between correct and wrong reasoning, but between two ways to support the truth of conclusions. Deduction is the subject of a rigorous exact science; induction, despite the attempts, is not.

A *fallacy* is a bad method of conducting argumentation, whether deductive or inductive. Arguments can be incorrect (unsound) for several reasons: one or more of their premises may be false or irrelevant, or the reasoning from them may be invalid, or the language expressing them may be ambiguous or vague.

There is an infinity of bad arguments; there may even be an infinity of ways of argue badly. The term *fallacy* is usually reserved for typical faults in argumentation (reasoning) that may nevertheless seem persuasive.



---


This may strike you as strange, but validity doesn't care about truth (content) so much as it cares about logical consequence (form).

Validity doesn't get involved with the discussion about truth, the meaning of truth, and whether some claim is true or not. It sidesteps the whole issue of truth and focuses exclusively on the form: *An argument is valid if the conclusion necessarily follow from the premises; the conclusion must be a necessary logical consequence of premises*. In a valid argument, if the premises are true then the conclusion is true (because it necessarily follows from premises). But the truth of premises alone does not guarantee validity.



This is remiscent of the way a mathematical theory works: a theory is based on a set of axioms, but unlike the times when the axioms needed to be commnplace, "evident truths" that everyone agrees on, in modern mathematics axioms are propositions whose truth value is not up for discussion. It's up to you to accept them or not. However, should you accept the axioms, you are guaranteed that what follows is true. It is guaranteed that the conclusions that a theory lays down hold, since they are a necessary logical consequence of the axioms. The method used in a theory to derive conclusions from the axioms (an axiom is also a kind of premise) is deduction.

# Propositional Logic

*Truth tables* are a sure way to determine the truth value of a logic expression, but testing whether a proposition is, e.g. a tautology, requires testing every possible truth assignment, which gets expensive very quickly; it is an operation with exponential complexity, `2^(2ⁿ)`, where `n` is the number of logical variables. With only 1 variable, there are 4 logical operations (F=0, not=¬p, id=p, T=1); with 2 vars there are 16 ops (from F=0000 to T=1111, and p=0011, q=0101; one for each binary number 0-15 inclusive); with just 3 vars the number of ops becomes unwieldy at 256 ops. We need a different reasoning system, one that is more inlined with a natural way of thinking and reasoning.

*Deductive reasoning*, and its method deduction, is the process of reasoning that starts with premises and proceeds to reach a logically certain conclusion; if all premises are true and the rules of inference were strictly followed, then the conclusion is necessarily true. Deduction in logic is only concerned with syntactic validity, i.e. that the conclusion necessarily follows from premises. It does not care about the actual truth of premises - they are taken to be true, but they need not be proved. Therefore, deduction is an "if-then" procedure: "given these premises" (in fact means: "assuming the following premises are/as true"), "then the following conclusion follows".

An **interpretation** (assignment, state) is a function `σ` from logical variables to truth values {t,f}.



One such system is *natural deduction*, by G.Getzen. The system consists of a set of inference rules that we apply in order to derive a conclusion from a premise.

One builds a proof tree whose root is the proposition to be proved and whose leaves are the initial assumptions or axioms (for proof trees, we usually draw the root at the bottom and the leaves at the top).

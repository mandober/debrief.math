# Intuitionistic and Classical logic

(Parts adopted from `Propositions as Types`, Philip Wadler, 2015)

Logic comes in many varieties, and one distinction is between classical and intuitionistic. Intuitionists, concerned by assumptions made by some logicians about the nature of infinity, adapted the constructivist's notion of truth. In particular, they insist that a proof of `A ∨ B` must show which of `A` or `B` holds. That is, it is not enough knowing that `A` or `B` holds, it must also be known which of the two holds (~~in which case, what is the other doing in there then?~~). It is not enough knowing that a proposition holds, there must also be a witness for it.

Intuitionistic logic (IL) does not admit the law of the excluded middle (LEM), which asserts `A ∨ ¬A`, for every `A`, since the law gives no clue as to which side holds.

Heyting formalised a variant of Hilbert's classical logic that captures the intuitionistic notion of provability. In particular, the LEM is provable in *Hilbert's logic*, but not in *Heyting's logic*. Further, if the LEM is added as an axiom to Heyting's logic, then it becomes equivalent to Hilbert's.

Kolmogorov showed the two logics were closely related: he gave a *double-negation translation*, such that a formula is provable in classical logic iff its translation is provable in IL (which turned out to correspond to CPS vs direct style in programming).

The paradigm of *propositions-as-types* was first formulated for IL. It is a perfect fit, because in the intuitionistic interpretation, the formula `A ∨ B` is provable exactly when one exhibits either a proof of `A` or a proof of `B`, so the type corresponding to disjunction is a *disjoint sum*.

The LEM doesn't hold in IL, however, it can be shown *irrefutable*, meaning that the negation of its negation is provable - and hence, that its negation is never provable.

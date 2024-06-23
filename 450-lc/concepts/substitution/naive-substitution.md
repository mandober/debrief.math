# Naive substitution

Problem with naive substitution is that free vars may be captured:

(λx.λy.x)y --/->ᵦ λy.y

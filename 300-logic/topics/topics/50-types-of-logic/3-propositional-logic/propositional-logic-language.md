# Propositional logic: formal language

- 𝓛₀ is the formal language of propositional logic
- 𝓐 is the alphabet i.e. a set of symbols
- 𝓟₀ is the infinite set of symbols: 𝓟₀ = { p, p₁, …, pₙ, …, q, q', r, rᵏ, … }

```js bnf
wff  ::= var
       | const
       | '¬' wff
       | wff 'binop' wff

var   ::= p | q | r | s | t | …
const ::= 0 | 1 | ⟙ | ⟘
binop ::= ⋀ | ⋁ | -> | ⟺
```

- specify a domain of discurse (DoD), i.e. a universe, `𝓤`
- or we fix several DoDs, and specify which DoD each var ranges over
- a variable represents an individual from the (specific) DoD
- variables range over the (specific) DoD


[eg] Examples of wffs:
- `p`
- `0`
- `¬q`
- `¬(p ⋀ ¬q)`

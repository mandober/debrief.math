# Denotational semantics

The syntax of a language is interpreted by the semantic valuation function, which maps the parts of the language into abstract (mathematical) objects.

## An example of denotational semantics

Decimal numerals form a language `Num` over the alphabet {0..9} defined by the grammar:

```bnf
n := n d | d
d := '0' | … | '9'
```

A numeral `d` is a numeral followed by a digit or it is a single digit. The metavars `n` and `d` range over the parts of the language `Num`, with `n` ranging over an initial segment (init), and `d` ranging over the final digit (tail).

The decimal numerals *denote* integers, which are abstract objects. The interpretation is formalized by giving the *valuation function* `V`:

```
V : Num -> Int
V⟦nd⟧ = 10 ⨯ V⟦n⟧ + V⟦d⟧
V⟦'0'⟧ = 0
…
V⟦'9'⟧ = 9
```

`V` is a function from the sentences of the language `Num` to integers, `Int`. `V` works by case analysis. Inside the ⟦…⟧ brackets are strings, e.g. '7' is a character which denotes the integer 7.

```
V⟦'9876'⟧
= 10 ⨯ V⟦'987'⟧ + V⟦'6'⟧
= 10 ⨯ (10 ⨯ V⟦'98'⟧ + V⟦'7'⟧) + V⟦'6'⟧
= 10 ⨯ (10 ⨯ (10 ⨯ V⟦'9'⟧ + V⟦'8'⟧) + V⟦'7'⟧) + V⟦'6'⟧
= 10 ⨯ (10 ⨯ (10 ⨯ 9 + 8) + 7) + 6
= 10 ⨯ (10 ⨯ (90 + 8) + 7) + 6
= 10 ⨯ (10 ⨯ 98 + 7) + 6
= 10 ⨯ (980 + 7) + 6
= 10 ⨯ 987 + 6
= 9870 + 6
= 9876
```

## Another example of denotational semantics

Decimal numerals form a language `Hex` over the alphabet `{'0'..'9', 'a'..'f'}` defined by the grammar:

```hs bnf
-- grammar
n := n d | d
d := '0' | … | '9' | 'a' | 'b' | … | 'f'

-- valuation function
V : Hex -> Int
V⟦nd⟧ = 16 ⨯ V⟦n⟧ + V⟦d⟧
V⟦'0'⟧ = 0
…
V⟦'9'⟧ = 9
V⟦'a'⟧ = 10
V⟦'b'⟧ = 11
V⟦'c'⟧ = 12
V⟦'d'⟧ = 13
V⟦'e'⟧ = 14
V⟦'f'⟧ = 15

-- example
V⟦'f7ab'⟧
= 16 ⨯ V⟦'f7a'⟧ + V⟦'b'⟧
= 16 ⨯ (16 ⨯ V⟦'f7'⟧ + V⟦'a'⟧) + V⟦'b'⟧
= 16 ⨯ (16 ⨯ (16 ⨯ V⟦'f'⟧ + V⟦'7'⟧) + V⟦'a'⟧) + V⟦'b'⟧
= 16 ⨯ (16 ⨯ (16 ⨯ 15 + 7) + 10) + 11
= 16 ⨯ (16 ⨯ (240 + 7) + 10) + 11
= 16 ⨯ (16 ⨯ 247 + 10) + 11
= 16 ⨯ (3952 + 10) + 11
= 16 ⨯ 3962 + 11
= 63392 + 11
= 63403
```

### Implementation in Haskell

```hs
xs = ['0'..'9'] ++ ['a'..'f']

if c `elem` xs
then 16 * (valuation c) +
else error "Invalid digit!"
  where
  valuation '0' = 0
  …
  valuation '9' = 9
  valuation 'a' = 10
  …
  valuation 'f' = 15
```

## Syntax

Concrete vs abstract syntax

```hs
-- concrete syntax
e := e + t | t
t := t ⨯ c | c
c := (e) | a | b | c | …

-- abstract syntax
exp := exp + exp
     | exp ⨯ exp
     | var
var := a | b | c | …
```

The rules of the concrete syntax specify precedence of operators `+ < ⨯ < ()`, something that cannot be inferred from the abstract syntax. Abstract syntax only specifies crucial info: whether an exp is either an operator or operand. Parens need not even appear as they control parsing.

The result of parsing corresponds to abstract syntax and denotational semantics is given in terms of the abstract syntax.

## Domains

The existence of certain domains is always assumed, e.g. `Int`, `Bool`, `Char`. Their structure corresponds to a lattice.

Operations on domains
- direct product, `⨯`
- union, `⋃`
- disjoint union, `⨄`


For the `Char` domain, we write the elements of `A⨯A` (or `A²`) as `aa′` instead of `(a,a′)`. The `()` is the empty tuple - for `Char` domain it is the empty string, `ε`. The domain of all strings (finite tuples or words) over an alphabet `A` is `A* = A⁰ ⋃ A¹ ⋃ A² ⋃ …` (with `A⁰` giving rise to `ε`, `A¹` holds all words of length 1, `A²` of length 2, etc.). The domain of all non-emply strings over an alphabet `A` is `Aᐩ = ⋃ A¹ ⋃ A² ⋃ …`.

The disjoint union (disjoint sum) of domains A and B, i.e. `A ⨄ B` or `A + B` is `{ (a,1) | ∀a ∈ A } ⋃ { (b,2) | ∀b ∈ B }`, i.e. `A⨯{1} ⋃ B⨯{2}`.

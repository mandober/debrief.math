# Iota and Jot

https://en.wikipedia.org/wiki/Iota_and_Jot

In formal language theory Iota and Jot are languages, extremely minimalist formal systems, designed to be even simpler than other more popular alternatives, such as the lambda calculus and SKI combinator calculus.

Thus, they can also be considered minimalist computer programming languages (although Turing tarpits) designed to be as small as possible but still Turing-complete.

Both systems use only two symbols and involve only two operations. Both were created by professor of linguistics Chris Barker in 2001. Zot (2002) is a successor to Iota that supports input and output.


𝚤 𝚥
𝚤 𝚥

## Universal iota

Chris Barker's universal iota combinator `ι` has the very simple `λf.fSK` structure, `ι := λf.fSK`. Because of its minimalism, it has influenced research concerning *Chaitin's constant*.

We can recover the usual SKI expressions from the definition of the universal iota, `ι := λf.fSK`

```
ι := λf.fSK

I :=       ιι
K :=   ι(ι(ιι))
S := ι(ι(ι(ιι)))
```

## Iota

Iota is the LL(1) language that prefix orders trees of the Universal iota, `ι`, combinator leafs, cons'ed by function application `ε`

iota = "1" | "0" iota iota

so that for example
- 0011011 denotes ((ιι)(ιι))
- 0101011 denotes (ι(ι(ιι)))

## Jot

Jot is the regular language consisting of all sequences of 0 and 1

jot = ε | jot "0" | jot "1"

The semantics is given by translation to SKI expressions. The empty string denotes I, 

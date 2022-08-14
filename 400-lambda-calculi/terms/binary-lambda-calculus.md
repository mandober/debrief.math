# Binary Lambda Calculus

http://www.ioccc.org/2012/tromp/hint.html

Some consider **Binary Lambda Calculus** (BLC) as the most concise PL ever known to man.

BLC was developed to make Algorithmic Information Theory, the theory of smallest programs, more concrete. It starts with the simplest model of computation, the λ-calculus, and adds the minimum amount of machinery to enable binary input and output.

More specifically, it defines a *universal machine*, which, from an input stream of bits, *parses the binary encoding of a lambda-term*, applies that to the remainder of input (translated to a lazy list of booleans using Church's encoding of Booleans and list), and translates the evaluated result back into a stream of bits as the output.

BLC encoding:
- `00`    lambda binder
- `01`    application
- `1{n}0` variable bound by `n`ᵗʰ enclosing lambda (`n` in De Bruijn notation)

The expression `1{n}0` denotes the multiplicity count of `1`'s, which is equal to `n`, followed by a single `0`. For example, if `n=1` then `10`; if n=2 then `110`; if n=3 then `1110`, etc. So, in this convention, the smallest De Bruijn index is 1 (other conventions use 0). If the number of variables in the considered term is `l`, then the first free variable foound in that term gets index `l+1`.


For example, this lambda term:   
`λx.λy.λz.((x z)(y z))` becomes    
`λ  λ  λ    3 1 (2 1)` in De Bruijn notation; in BLC it is:    
`00 00 00 01 01 1110 10 01 110 10`.

```js
λx. λy. λz. ((x z) (y z))


            ┌──── application#3──────┐               (y@z)@(x@z)
            │                        │
            │  ┌──app#2───┐          │         x@z
            │  │          │  ┌app#1┐ │  y@z
            │  │          │  │     │ │
λx. λy. λz. (  (  x    z )  (  y   z) )
λ   λ   λ   (  (  3    1 )  (  2   1) )
00  00  00  01 01 1110 10   01 110 10
│   │   │   │  │  │    │  │  │   │
│   │   │   │  │  │    │  │  │   │
│   │   │   │  │  │    │  │  │   │
│   │   │   │  │  │    │  │  │   │
│   │   │   │  │       │
│   │   │   @  │       │
│   │   │      @       │
│   │   │              @
│   │   λ
│   λ
λ
```


─  ┌ ┬ ┐  ├ │ ┼ ┤  └ ┴ ┘




In the closely related BLC8 language, IO is byte oriented, translating between a stream of bytes and a list of length-8 lists of booleans.

The submission implements the universal machine in the most concise manner conceivable. It lacks #defines and #includes, and compiles to a (stripped) executable of under 6K in size.

Without arguments, it runs in byte mode, using standard in- and output. With one (arbitrary) argument, it runs in bit mode, using only the least significant bit of input, and using characters '0' and '1' for output.

The program uses the following exit codes: 0: OK; result is a finite list 5: Out of term space 6: Out of memory 1,2,3,4,8,9: result not in list form

The size of the term space is fixed at compile time with -DA

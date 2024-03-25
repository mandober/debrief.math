# LC self-interpretation

https://crypto.stanford.edu/~blynn/lambda/

https://cs.stackexchange.com/questions/83533/practical-usage-of-the-%ce%bb-calculus-self-interpreter-and-the-self-reducer

Mogensen describes an encoding of lambda terms with lambda terms. If we denote the encoding of a term `t` by `⌈t⌉`, then we can recursively encode any term with the following 3 rules:

```js
⌈x⌉    = λabc. a x
⌈MN⌉   = λabc. b ⌈M⌉ ⌈N⌉
⌈λx.M⌉ = λabc. c (λx. ⌈M⌉)
```

where (`a`, `b`, `c`) may have to be renamed to avoid clashes with free vars in the term being encoded. (In the Haskell code, this translates to `quote` function.)

With this encoding the following lambda term is a self-interpreter:

E = Y(\e m.m (\x.x) (\m n.(e m)(e n)) (\m v.e (m v)))

That is, the term `E ⌈M⌉` evaluates to the normal form of `M` if one exists. Also, the following lambda term `R` is a *self-reducer*, which means `R ⌈M⌉` evaluates to the encoding of the normal form of `M` if one exists:

```
P  = Y (λp m.
        (λx. x
         (λv. p
          (λa b c. b m
           (v
            (λa b. b)))) m))

R  = λm. RR m (λa b. b)

RR = Y (λr m. m
        (λx. x)
         (λm n.
          (r m)
           (λa b. a)
            (r n))
             (λm.
              (λg x. x g
               (λa b c. c
                (λw. g
                 (P
                  (λa b c. a w))
                   (λa b. b))))
                    (λv. r
                     (m v))))
```

Unlike the self-interpreter, the self-reducer requires the input to be the encoding of a closed term. See Mogensen's paper for details.


$$
\begin{align}
\lceil x            \rceil &= \lambda a b c . a x \\
\lceil M N          \rceil &= \lambda a b c . b \lceil M\rceil \lceil N\rceil \\
\lceil \lambda{x}.M \rceil &= \lambda a b c . c (\lambda x . \lceil M\rceil)
\end{align}
$$

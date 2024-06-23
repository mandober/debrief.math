# Lambda calculus :: Conventions

Conventions are generally accepted customs concerning the syntax of lambda calulus.

**Berenregt convention** means giving unique names to variables so that name-capturing substitution is not a concern.

**Contraction of binders** is a shorthand that allows contraction of consequtive binders. `λa.λd.λc.ac(dc)` may be written as `λadc.ac(dc)` instead.

**Fixity convention** determines the precedence and associativity of lambda terms. It assigns left associativity to application and right associativity to lambda abstraction. It also assigns higer precedence to application in relation to abstraction.

The lambda expression on the left is explicitly denoted as the term on the right as far as associativity of abs and app is concerned:
`λa. λd. λc. a c d c` ≅ `λa. (λd. (λc. (((a c) d) c)))`

App has higher precedence than abs (in cases the dot symbol is elided):   
`λaba` = `λa(ba)` ≠ `(λab)a`    
that is, with the explicit dot:    
`λa.ba` = `λa.(ba)` ≠ `(λa.b)a`

What is `λaba`?
- `λa. b a`   ✔
- `λa b. a`   ✘

What is `λabca`?
1. `λa b c. a`    ✘
2. `λa b. c a`    ✘
3. `λa. b c a`    ✔
4. `λa. b (c a)`  ✘
5. `λa. (b c) a`  ✔

*Don't-be-a-jerk convention* stipulates that the dot symbol is obligatory.

*Let-be-cheap convention* commends the addition of extra spaces around the variables.

*Kill-the-outer-parens convention* encourages the removal of the outer parens if the resulting term is unambiguous.

*Be-concise convention* asks you to avoid being (delibrately) ambiguous, lauding the promotion of clarity.

*Don't-be-insane convention* applauds the substitution (of an arg `A` bound to a parameter `x` wrt a lambda body `B`) denoted thus:
- [x:=A]B    ✔
- [x⟼A]B    ✔
- [x/A]B     ✘
- [A/x]B     ✘

while also allowing for the body `B` to be written on the left, `B[x:=A]`

```hs
(λa d c. a c (d c)) A D C
= (λd c. A c (d c))  D C
                        (a c (d c))[a:=A]
= (λc. A c (D c)) C
                        (A c (d c))[d:=D]
= A C (D C)
                        (A c (D c))[c:=C]


-- again but with parallel substitution
(λa d c. a c (d c)) A D C
    -- right-side-body parallel substitution:
    (a c (d c))[a:=A,d:=D,c:=C]
    -- left-side-body parallel substitution:
    [c:=C]([d:=D]([a:=A](a c (d c))))
    -- or merging substitution:
    (((a c (d c))[a:=A])[d:=D])[c:=C]
-- all result in
= A C (D C)
```

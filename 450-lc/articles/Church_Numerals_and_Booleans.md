---
downloaded:       2021-11-05
author:           
page-url:         https://opendsa-server.cs.vt.edu/ODSA/Books/PL/html/ChurchNumerals.html
page-title:       3.8. Church Numerals and Booleans — Programming Languages
article-title:    3.8. Church Numerals and Booleans — Programming Languages
article-length:   2356
article-created:  {Date-Creation-yyyymmdd}
article-modified: {Date-Revision-yyyymmdd}
desc:             {description}
---
# 3.8. Church Numerals and Booleans — Programming Languages

To turn the  λ calculus into a "real" programming language, we
need to be able to manipulate:
## 3.8.1. Church Booleans


To turn the λ calculus into a "real" programming language, we need to be able to manipulate:

-   boolean constants (true, false)
-   logical operators (and, or, not)
-   conditionals (if)
-   integers (0, 1, 2, 3, etc.)
-   arithmetic operators (+, −, etc.)
-   mathematical functions (factorial, etc.)

Alonzo Church, the creator of the lambda calculus, realized this and consequently set about to make a series of encodings of lambda expressions designed to satisfy the properties we expect from the items in the preceding list. Let's first examine some of the encodings for the *church boolean* constants and operations.

-   TRUE = λx.λy.x
-   FALSE = λx.λy.y
-   AND = λp.λq.((pq)FALSE)

The following slideshow indicates how TRUE AND FALSE is β reduced.

As one would expect for boolean operations, TRUE AND FALSE reduces to FALSE.

## 3.8.2. Encoding If-Then-Else[¶][2]

This problem is about a possible representation for the ternary IF/THEN/ELSE operator.

## 3.8.3. Encoding OR[¶][3]

This problem is about a possible representation for the binary OR operator.

## 3.8.4. Church Numerals[¶][4]

To encode the non-negative integers, Church used the following encoding:

-   ZERO = λf.λ x.x
-   A successor function SUCC = λn.λf.λx.(f((nf)x))
-   ONE = (SUCC ZERO) = λf.λ x.(fx)
-   TWO = (SUCC ONE) = λf.λ x.(f(fx))
-   THREE = (SUCC TWO) = λf.λ x.(f(f(fx)))
-   FOUR = (SUCC THREE) = ???
-   FIVE = (SUCC FOUR) = ???
-   SIX = (SUCC FIVE) = ???
-   SEVEN = (SUCC SIX) = ???
-   EIGHT = (SUCC SEVEN) = ???
-   NINE = (SUCC EIGHT) = ???
-   TEN = (SUCC NINE) = ???

To help you see how the successor function works, watch the following slideshow of how the successor of THREE is reduced to FOUR.

Addition and multiplication can be encoded as:

-   PLUS = λm.λn.λf.λx.((nf)((mf)x))
-   MULT = λm.λn.λf.(m(nf))

To see how the multiplication function works, watch the following slideshow of how (MULT TWO THREE) reduced to SIX.

An encoding for a predecessor operation:

PRED = λn.λf.λx.(((nλg.λh.(h(gf)))λu.x)λu.u)

And an operation to test for zero in an __if-then-else__

ISZERO = λn.((nλx.FALSE)TRUE)

## 3.8.5. Church numerals with addition and multiplication[¶][5]

This problem will help you recognize and use the Church numerals as well as the representation of the corresponding addition and multiplication operators. To get credit for this randomized problem, you must solve it correctly three times in a row.

[1]: https://opendsa-server.cs.vt.edu/ODSA/Books/PL/html/ChurchNumerals.html#church-booleans "Permalink to this headline"
[2]: https://opendsa-server.cs.vt.edu/ODSA/Books/PL/html/ChurchNumerals.html#encoding-if-then-else "Permalink to this headline"
[3]: https://opendsa-server.cs.vt.edu/ODSA/Books/PL/html/ChurchNumerals.html#encoding-or "Permalink to this headline"
[4]: https://opendsa-server.cs.vt.edu/ODSA/Books/PL/html/ChurchNumerals.html#church-numerals "Permalink to this headline"
[5]: https://opendsa-server.cs.vt.edu/ODSA/Books/PL/html/ChurchNumerals.html#church-numerals-with-addition-and-multiplication "Permalink to this headline"

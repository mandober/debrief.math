# Number base

$$
\displaystyle{
  b \in \mathbb{N} \land b\gt 1 \\
  D \subseteq \Omega \land \vert D\vert = b \\
  \Omega = \{0-9,a-z,A-Z,+,=,\_,$,!,@,\% \}
}
$$


$$
base, b = 2 \\
digits, D = \{0, 1\} \\
index: i \in \mathbb{Z} = \{\dots 3,2,1,0,-1,-2,-3, \dots\} \\
$$

$$
\displaystyle
\sum_{i=0} d_i\times b^i
$$


| p: | 4                 | 3 | 2 | 1 | 0 | . | -1 | -2 |
|----|------------------:|--:|--:|--:|--:|---|---:|---:|
| d: | 1                 | 1 | 1 | 1 | 0 | . |  1 |  1 |
| p: | $$d_p\times b^p$$ | $$d_4\times b^4$$ | 2 | 1 | 0 | . | -1 | -2 |


$$
d_4\times b^4 + 
d_3\times b^3 + 
d_2\times b^2 + 
d_1\times b^1 + 
d_0\times b^0 + 
d_{-1}\times 2^{-1} + 
d_{-2}\times 2^{-2}
$$


1 base 8 digit = 3 bits  
1 base10 digit = 3.2 bits  
1 base16 digit = 4 bits  
1 Base32 digit = 5 bits  
1 Base64 digit = 6 bits

3 x 8-bit byte (24 bits) = 4 x 6-bit Base64 digits


| base | e.g. | name       | bits/digit |
|-----:|-----:|------------|------------|
|    2 | 1010 | binary     | 1:1        |
|    3 |      | ternary    |            |
|    4 |      | quaternary |            |
|    8 |   12 | octal      |            |
|   10 |   10 | decimal    |            |
|   16 |    A | hex        | 4:1        |
|   32 |      | Base32     | 5:1        |
|   64 |      | Base64     | 6:1        |


base number system
2	binary
3	ternary
4	quaternary
5	quinary
6	senary
7	septenary
8	octal
9	nonary
10	decimal
11	undenary
12	duodecimal
16	hexadecimal
20	vigesimal
60	sexagesimal

negadecimal (base −10) corresponds to decimal (base 10), negabinary (base −2) to binary (base 2), negaternary (base −3) to ternary (base 3), and negaquaternary (base −4) to quaternary (base 4).

---

https://baseconvert.com/
http://mathworld.wolfram.com/Base.html

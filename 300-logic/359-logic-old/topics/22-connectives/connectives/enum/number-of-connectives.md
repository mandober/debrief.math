# Number of connectives

The number of connectives depends on the number of truth values and arity.

The formula for the number of connectives is `k ^ (k ^ a)`   
where 
`k` is the number of truth values, 
`a` is the arity of the connective.

In any `k`-valued logic, there will be `k` nullary (`a = 0`) conectives equaling the number of truth values (`k^k^0` = `k^1` = `k`).

In two-valued logic (k = 2), and three-valued logic (k = 3)

a | 2^2ᵃ      | k = 2 | 3^3ᵃ       | k = 3             | connectives
--|-----------|------:|------------|------------------:|----------
0 | 2^2⁰ = 2¹ |     2 | 3^3⁰ = 3¹  |                 3 | nullary
1 | 2^2¹ = 2² |     4 | 3^3¹ = 3³  |                27 | unary
2 | 2^2² = 2⁴ |    16 | 3^3² = 3⁹  |            19,683 | binary
3 | 2^2³ = 2⁸ |   256 | 3^3³ = 3²⁷ | 7,625,597,484,987 | ternary
n | 2^2ⁿ      |       | 3^3ⁿ       |                   | n-ary

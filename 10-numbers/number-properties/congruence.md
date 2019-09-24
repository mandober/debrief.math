# Congruence

**Congruence relation**, denoted by `≅`, is an equivalence relation on an algebraic structure (group, ring, vector space, etc.) that is compatible with the structure in the sense that algebraic operations done with equivalent elements will yield equivalent elements.

**Modular arithmetic** is done by introducing a congruence relation on the integers that is compatible with the integer operations (addition, subtraction, and multiplication).

For a positive integer $$n$$, 
two integers $$a$$ and $$b$$ 
are said to be congruent modulo $$n$$, 
if their difference is an integer multiple of $$n$$,
i.e. if there is an integer $$k$$ such that $$a − b = kn$$, denoted    
$$a \equiv b \pmod n$$

The number $$n$$ is called the **modulus of the congruence**.

The congruence relation may be rewritten as: $$a=kn+b$$ which explicitly shows its relationship with Euclidean division. However, $$b$$ need not be the remainder of the division of $$a$$ by $$n$$.

$$a \equiv b \pmod n$$     
asserts that $$a$$ and $$b$$ have the same remainder $$r$$ when divided by $$n$$, with    
$$0\le r\lt n$$

$$
\frac{a}{n}=(p,r)\ \to (a=np+r) \to (r=a-np) \\
\frac{b}{n}=(q,r)\ \to (b=nq+r) \to (r=b-nq) \\
a - np = b - nq \\
a - b = np - nq \\
a - b = n(p - q) \\
(\text{let } k=p-q) \\
a - b = nk
$$

Letting $$k=p-q$$ recovers the previously stated relation, $$a−b=kn$$

---

Given a positive integer $$n$$, we say that two integers $$a$$ and $$b$$ are
congruent $$mod\ n$$, if and only if $$a−b$$ is divisible by $$n$$ (or equivalently, if $$a$$ and $$b$$ have the same remainder when divided by $$n$$).

$${\forall n\in \mathbb{Z^+}} :\ a \equiv b \pmod n \iff n\ |\ a−b$$


For example,    
1234 ≡ 10 (mod 9)   
because:
1234−10=1224 and 1224/9=136 (1224 mod 9 = 0)


Congruence acts like equality ("="), that is, they shares the same 3 properties that make an equivalence relationship: reflexivity, symmetry and transitivity.

For integers $$a,b,c,n > 0$$, we have:
- Reflexivity:  $$a\equiv a\pmod n$$
- Symmetry:     $$a\equiv b\pmod n \to b\equiv a\pmod n$$
- Transitivity: $$a\equiv b\pmod n \land b\equiv c\pmod n \to a\equiv c\pmod n$$


The basic arithmetic properties of equality ("="), i.e. that you can add, subtract or multiply equals to get equals, e.g.    
$$
a = b \land c = d \\
\qquad \to a + c = b + d \\
\qquad \to a − c = b − d \\
\qquad \to ac = bd
$$

hold for congruences as well.

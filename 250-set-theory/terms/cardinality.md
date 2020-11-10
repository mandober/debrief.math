# Set cardinality

**Cardinality** is the number of elements in a set.

Finite sets
- cardinality of a finite set is established by enumerating its elements
- enumerating a set means putting it in a 1-to-1 correspondance with ℕ
- this often means finding a suitable bijective function
- to count means to mentally label (enumerate) elements

Infinite sets
- with infinite sets, notion of cardinality goes beyond some concrete quantity, towards the notion of the size of the particular *kind of infinity* of a set.
- it is more about finding an appropriate bijective function for enumeration
- **Equinumerousity** is a property that two sets with equal cardinality have
- there are 2 kinds of infinity: countable and uncountable
- **Countable set** can be put in a bijection with ℕ
- **Uncountable set** cannot be put in a bijection with ℕ
- the smallest infinity is that of natural numbers, denoted by ℵ₀ (read "aleph naught"); this number is a cardinal number, $$\mathfrak{c}$$


- Two sets are equal iff they contain the same elements.
- Two sets are equivalent iff they have the same cardinality.
- Singleton or unit set is a set containing a single element.
- Unordered pair is a set containing two elements.
- Cardinality of a power set of a set $$X$$ is $$2^{|X|}$$.
- Cardinality of a power set of an empty set is: $$\mathcal{P}(\varnothing)=1$$.
- Cardinality of a set $$X$$ is equivalent to $$\mathbb{N}$$ if there is a bijective function, $$f:\mathbb{N} \mapsto X$$, mapping elements in $$\mathbb{N}$$ to the elements in $$X$$





## Cardinalities

$$n$$ | $$\mathcal{P}: 2^n$$ | $$\mathcal{C}: n^2$$| $$\mathcal{R}: 2^{(n^2)}$$
------|--------------|-------------|------------
0     | $$2^0$$ = 1  | $$0^2$$ = 0 | $$2^0$$ = 1
1     | $$2^1$$ = 2  | $$1^2$$ = 1 | $$2^1$$ = 2
2     | $$2^2$$ = 4  | $$2^2$$ = 4 | $$2^4$$ = 16
3     | $$2^3$$ = 8  | $$3^2$$ = 9 | $$2^9$$ = 512
4     | $$2^4$$ = 16 | $$4^2$$ = 16| $$2^{16}$$ = 65,536
5     | $$2^5$$ = 32 | $$5^2$$ = 25| $$2^{25}$$
6     | $$2^6$$ = 64 | $$6^2$$ = 36| $$2^{36}$$
7     | $$2^7$$ = 128| $$7^2$$ = 49| $$2^{49}$$
8     | $$2^8$$ = 256| $$8^2$$ = 64| $$2^{64}$$
9     | $$2^9$$ = 512| $$9^2$$ = 81| $$2^{81}$$

This table shows: 
- the first column shows the cardinality of a n-element set.
- the second column shows the cardinality of the powersets of an n-element set 
- the third column shows the cardinality of the Cartesian product of an n-element set with itself.
- the fourth column shows the number of ditinct relations of an n-element set

## Cardinality

Cardinality of a set S, denoted by |S|, is the number of elements of the set. The number is also referred as the cardinal number. If a set has an infinite number of elements, its cardinality is ∞.
|{1,2,3,4,5,…}| = ∞

|X|=|Y| denotes two sets X and Y having same cardinality.
It occurs when the number of elements in X is exactly equal to the number of elements in Y. In this case, there exists a __bijective__ function `f` from X to Y.

|X|≤|Y| denotes that set X’s cardinality is less than or equal to set Y’s cardinality. It occurs when number of elements in X is less than or equal to that of Y. Here, there exists an __injective__ function ‘f’ from X to Y.

|X|<|Y| denotes that set X’s cardinality is less than set Y’s cardinality. It occurs when number of elements in X is less than that of Y. Here, the function ‘f’ from X to Y is _injective function but not bijective_.

If |X|≤|Y| and |X|≥|Y| then |X|=|Y|. The sets X and Y are commonly referred as _equivalent_ sets.

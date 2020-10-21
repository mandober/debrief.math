# Set Partitioning

*Partitioning* a set produces a set of nonempty disjoint subsets, called **partitions**.

Conditions:
* No partition is empty (i.e. nonempty subsets)
* The intersection of two partitions is empty (i.e. disjoint subsets)
* The union of partitions must equal the original set (i.e. sanity check)

Partitioning the set $$S$$ produces $$n$$ partitions, $$P_1, P_2,\dots,P_n$$,  which are the disjoint and non-empty subsets of $$S$$.


$$
\displaystyle
\bigcup_{i=1}^{n} 
$$

$$P_1, P_2,\dots,P_n$$


$$P_i$$ are non-empty sets:

$$P_i$$
Pi ≠ {∅} for all 0 < i ≤ n

P1∪P2∪⋯∪Pn=S


The intersection of two partitions is empty:



Pa ∩ Pb={∅}, for a≠b where n≥a, b≥0



Example:
Let S={a,b,c,d,e,f,g,h}
One probable partitioning scheme: {a},{b,c,d},{e,f,g,h}
Another probable partitioning scheme: {a,b},{c,d},{e,f,g,h}


**Bell number** signifies the number of ways to partition a set; it is denoted by $$B_n$$, where $$n$$ is the cardinality of the set. For example, let $$S=\{1,2,3\},\ \ n=|S|=3$$.

The partitions:
1. $$\{\},\{1,2,3\}$$
2. $$\{1\},\{2,3\}$$
3. $$\{1,2\},\{3\}$$
4. $$\{1,3\},\{2\}$$
5. $$\{1\},\{2\},\{3\}$$

so, $$B_3=5$$




Set                     | Notation
------------------------|---------
universe                | $$\mathcal{U}$$
set                     | $$A$$
class                   | $$A$$
element                 | $$a$$
urelement               | $$a$$ (element that is not a set)
membership              | $$a\in A$$
empty set               | $$\varnothing$$
disjoint union          | $$A\cap B = \varnothing$$
powerset                | $$\mathcal{P}(A)$$
Cartesian product       | $$A\times B$$
set of pairs            | $$A\times B$$
set of functions        | $$A\to B$$
relation                | $$R \subseteq A\times B$$
relation                | $$R \in P(A\times B)$$
union                   | $$A \cup B$$
intersection            | $$A \cap B$$
complement              | $$\bar A=\mathcal{U}\cap A$$
family of sets          | $$B(x)$$
family of elements      | $$b(x):B(x)$$

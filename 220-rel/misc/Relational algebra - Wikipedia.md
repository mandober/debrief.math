---
downloaded:       2021-12-11
page-url:         https://en.wikipedia.org/wiki/Relational_algebra
page-title:       Relational algebra - Wikipedia
article-title:    Relational algebra - Wikipedia
---
# Relational algebra - Wikipedia

In database theory, relational algebra is a theory that uses algebraic structures with a well-founded semantics for modeling data, and defining queries on it. The theory was introduced by Edgar F. Codd.
In [database theory][1], __relational algebra__ is a theory that uses [algebraic structures][2] with a [well-founded semantics][3] for modeling data, and defining queries on it. The theory was introduced by [Edgar F. Codd][4].

The main application of relational algebra is to provide a theoretical foundation for [relational databases][5], particularly [query languages][6] for such databases, chief among which is [SQL][7]. Relational databases store tabular data represented as [relations][8]. Queries over relational databases often likewise return tabular data represented as [relations][9].

The main premise of the relational algebra is to define operators that transform one or more input relations to an output relation. Given that these operators accept relations as input and produce relations as output, they can be combined and used to express potentially complex queries that transform potentially many input relations (whose data are stored in the database) into a single output relation (the query results).

Unary operators accept as input a single relation; examples include operators to filter certain attributes (columns) or tuples (rows) from an input relation.

Binary operators accept as input two relations; such operators combine the two input relations into a single output relation by, for example, taking all tuples found in either relation, removing tuples from the first relation found in the second relation, extending the tuples of the first relation with tuples in the second relation matching certain conditions, and so forth.

Other more advanced operators can also be included, where the inclusion or exclusion of certain operators gives rise to a family of algebras.

## Introduction\[[edit][10]\]

Relational algebra received little attention outside of pure mathematics until the publication of [E.F. Codd][11]'s [relational model of data][12] in 1970. Codd proposed such an algebra as a basis for database query languages. (See section [Implementations][13].)

Five primitive operators of Codd's algebra are the *[selection][14]*, the *[projection][15]*, the *[Cartesian product][16]* (also called the *cross product* or *cross join*), the *[set union][17]*, and the *[set difference][18]*.

### Set operators\[[edit][19]\]

The relational algebra uses [set union][20], [set difference][21], and [Cartesian product][22] from [set theory][23], but adds additional constraints to these operators.

For set union and set difference, the two [relations][24] involved must be *union-compatible*—that is, the two relations must have the same set of attributes. Because [set intersection][25] is defined in terms of set union and set difference, the two relations involved in set intersection must also be union-compatible.

For the Cartesian product to be defined, the two relations involved must have disjoint headers—that is, they must not have a common attribute name.

In addition, the Cartesian product is defined differently from the one in [set][26] theory in the sense that tuples are considered to be "shallow" for the purposes of the operation. That is, the Cartesian product of a set of *n*\-tuples with a set of *m*\-tuples yields a set of "flattened" (*n* + *m*)\-tuples (whereas basic set theory would have prescribed a set of 2-tuples, each containing an *n*\-tuple and an *m*\-tuple). More formally, *R* × *S* is defined as follows:

![R\times S:=\{(r_{1},r_{2},\dots ,r_{n},s_{1},s_{2},\dots ,s_{m})|(r_{1},r_{2},\dots ,r_{n})\in R,(s_{1},s_{2},\dots ,s_{m})\in S\}](https://wikimedia.org/api/rest_v1/media/math/render/svg/fa3f152025b960f99a213cee14a6ca793e4f5cf1)

The cardinality of the Cartesian product is the product of the cardinalities of its factors, that is, |*R* × *S*| = |*R*| × |*S*|.

### Projection (Π)\[[edit][27]\]

A __projection__ is a [unary operation][28] written as ![\Pi_{a_1, \ldots,a_n}( R )](https://wikimedia.org/api/rest_v1/media/math/render/svg/ca7a826cf139117a870e3db396a549fa35f024ba) where ![a_1,\ldots,a_n](https://wikimedia.org/api/rest_v1/media/math/render/svg/451345cc97e2ed923dd4656fcc400c3f37119cca) is a set of attribute names. The result of such projection is defined as the [set][29] that is obtained when all [tuples][30] in *R* are restricted to the set ![\{a_{1},\ldots ,a_{n}\}](https://wikimedia.org/api/rest_v1/media/math/render/svg/f985892ccc9f753dc96b7da26722b0cb302bdcc9).

Note: when implemented in [SQL][31] standard the "default projection" returns a [multiset][32] instead of a set, and the Π projection to eliminate duplicate data is obtained by the addition of the [`DISTINCT` keyword][33].

### Selection (*σ*)\[[edit][34]\]

A __generalized selection__ is a [unary operation][35] written as ![\sigma_\varphi(R)](https://wikimedia.org/api/rest_v1/media/math/render/svg/87ee37b1a098ac4980c9580f56a9813fc10cdba5) where *φ* is a [propositional formula][36] that consists of [atoms][37] as allowed in the [normal selection][38] and the logical operators ![\wedge ](https://wikimedia.org/api/rest_v1/media/math/render/svg/1caa4004cb216ef2930bb12fe805a76870caed94) ([and][39]), ![\lor ](https://wikimedia.org/api/rest_v1/media/math/render/svg/ab47f6b1f589aedcf14638df1d63049d233d851a) ([or][40]) and ![\neg ](https://wikimedia.org/api/rest_v1/media/math/render/svg/fa78fd02085d39aa58c9e47a6d4033ce41e02fad) ([negation][41]). This selection selects all those [tuples][42] in *R* for which *φ* holds.

To obtain a listing of all friends or business associates in an address book, the selection might be written as ![{\displaystyle \sigma _{{\text{isFriend = true}}\,\lor \,{\text{isBusinessContact = true}}}({\text{addressBook}})}](https://wikimedia.org/api/rest_v1/media/math/render/svg/1143214ca89a7f741518f8fc300ceea071797735). The result would be a relation containing every attribute of every unique record where isFriend is true or where isBusinessContact is true.

### Rename (*ρ*)\[[edit][43]\]

A __rename__ is a [unary operation][44] written as ![\rho_{a / b}(R)](https://wikimedia.org/api/rest_v1/media/math/render/svg/ff02829e7d8a0f7a89682d97acfd4bb8d73fd986) where the result is identical to *R* except that the *b* attribute in all tuples is renamed to an *a* attribute. This is simply used to rename the attribute of a [relation][45] or the relation itself.

To rename the 'isFriend' attribute to 'isBusinessContact' in a relation, ![\rho_{\text{isBusinessContact / isFriend} } ( \text{addressBook} )](https://wikimedia.org/api/rest_v1/media/math/render/svg/6a017168eab17fa7c071bf730c73fc02b8546597) might be used.

There is also the ![{\displaystyle \rho _{x(A_{1},\ldots ,A_{n})}(R)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/842583f0ecaaddb48192e3c2a70e649d446d33bc) notation, where *R* is renamed to *x* and the attributes ![\{a_{1},\ldots ,a_{n}\}](https://wikimedia.org/api/rest_v1/media/math/render/svg/f985892ccc9f753dc96b7da26722b0cb302bdcc9) are renamed to ![{\displaystyle \{A_{1},\ldots ,A_{n}\}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/4f59c806c483fcf623b7120c4ad8f75b2a9fecf9).[\[1\]][46]

## Joins and join-like operators\[[edit][47]\]

### Natural join (⋈)\[[edit][48]\]

"Natural join" redirects here. For the SQL implementation, see [Natural join (SQL)][49].

"⋈" redirects here. For the band sometimes represented by this symbol, see [The Armed][50].

Natural join (⋈) is a [binary operator][51] that is written as (*R* ⋈ *S*) where *R* and *S* are [relations][52].[\[2\]][53] The result of the natural join is the set of all combinations of tuples in *R* and *S* that are equal on their common attribute names. For an example consider the tables *Employee* and *Dept* and their natural join:

*Employee*

Name

EmpId

DeptName

Harry

3415

Finance

Sally

2241

Sales

George

3401

Finance

Harriet

2202

Sales

Mary

1257

Human Resources

*Dept*

DeptName

Manager

Finance

George

Sales

Harriet

Production

Charles

*Employee* ⋈ *Dept*

Name

EmpId

DeptName

Manager

Harry

3415

Finance

George

Sally

2241

Sales

Harriet

George

3401

Finance

George

Harriet

2202

Sales

Harriet

Note that neither the employee named Mary nor the Human Resources department appear in the result.

This can also be used to define [composition of relations][54]. For example, the composition of *Employee* and *Dept* is their join as shown above, projected on all but the common attribute *DeptName*. In [category theory][55], the join is precisely the [fiber product][56].

The natural join is arguably one of the most important operators since it is the relational counterpart of the logical AND operator. Note that if the same variable appears in each of two predicates that are connected by AND, then that variable stands for the same thing and both appearances must always be substituted by the same value (this is a consequence of the [idempotence][57] of the logical AND). In particular, natural join allows the combination of relations that are associated by a [foreign key][58]. For example, in the above example a foreign key probably holds from *Employee*.*DeptName* to *Dept*.*DeptName* and then the natural join of *Employee* and *Dept* combines all employees with their departments. This works because the foreign key holds between attributes with the same name. If this is not the case such as in the foreign key from *Dept*.*Manager* to *Employee*.*Name* then these columns must be renamed before taking the natural join. Such a join is sometimes also referred to as an __equijoin__ (see *θ*\-join).

More formally the semantics of the natural join are defined as follows:

![R \bowtie S = \left\{ r \cup s \ \vert \ r \in R \ \land \ s \in S \ \land \ \mathit{Fun}(r \cup s) \right\}](https://wikimedia.org/api/rest_v1/media/math/render/svg/42d03b194cca0a501136ece44860f5cc4c1abafb)

__(1)__

where *Fun(t)* is a [predicate][59] that is true for a [relation][60] *t* (in the mathematical sense) [iff][61] *t* is a function. It is usually required that *R* and *S* must have at least one common attribute, but if this constraint is omitted, and *R* and *S* have no common attributes, then the natural join becomes exactly the Cartesian product.

The natural join can be simulated with Codd's primitives as follows. Assume that *c*1,...,*c**m* are the attribute names common to *R* and *S*, *r*1,...,*r**n* are the attribute names unique to *R* and *s*1,...,*s**k* are the attribute names unique to *S*. Furthermore, assume that the attribute names *x*1,...,*x**m* are neither in *R* nor in *S*. In a first step the common attribute names in *S* can be renmaned:

![T=\rho _{x_{1}/c_{1},\ldots ,x_{m}/c_{m}}(S)=\rho _{x_{1}/c_{1}}(\rho _{x_{2}/c_{2}}(\ldots \rho _{x_{m}/c_{m}}(S)\ldots ))](https://wikimedia.org/api/rest_v1/media/math/render/svg/5c591661e5ae892fb99445827839f9b208846f67)

__(2)__

Then we take the Cartesian product and select the tuples that are to be joined:

![P=\sigma _{c_{1}=x_{1},\ldots ,c_{m}=x_{m}}(R\times T)=\sigma _{c_{1}=x_{1}}(\sigma _{c_{2}=x_{2}}(\ldots \sigma _{c_{m}=x_{m}}(R\times T)\ldots ))](https://wikimedia.org/api/rest_v1/media/math/render/svg/0c7ad95a19c626dbe0a5715d91fa6b5ae8f14a91)

__(3)__

Finally we take a projection to get rid of the renamed attributes:

![{\displaystyle U=\Pi _{r_{1},\ldots ,r_{n},c_{1},\ldots ,c_{m},s_{1},\ldots ,s_{k}}(P)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/2475ed88a3111f04c7a7a36a49de5dfdc5a378bd)

__(4)__

### *θ*\-join and equijoin\[[edit][62]\]

Consider tables *Car* and *Boat* which list models of cars and boats and their respective prices. Suppose a customer wants to buy a car and a boat, but she does not want to spend more money for the boat than for the car. The *θ*\-join (⋈*θ*) on the predicate *CarPrice* ≥ *BoatPrice* produces the flattened pairs of rows which satisfy the predicate. When using a condition where the attributes are equal, for example Price, then the condition may be specified as *Price*\=*Price* or alternatively (*Price*) itself.

*Car*

CarModel

CarPrice

CarA

20,000

CarB

30,000

CarC

50,000

*Boat*

BoatModel

BoatPrice

Boat1

10,000

Boat2

40,000

Boat3

60,000

 ![{\displaystyle {Car\bowtie Boat \atop \scriptstyle CarPrice\geq BoatPrice}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/ff006eda3fde84d62ea99aae51fc508a797540e5) 

CarModel

CarPrice

BoatModel

BoatPrice

CarA

20,000

Boat1

10,000

CarB

30,000

Boat1

10,000

CarC

50,000

Boat1

10,000

CarC

50,000

Boat2

40,000

In order to combine tuples from two relations where the combination condition is not simply the equality of shared attributes it is convenient to have a more general form of join operator, which is the *θ*\-join (or theta-join). The *θ*\-join is a binary operator that is written as ![{\displaystyle {R\ \bowtie \ S \atop a\ \theta \ b}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/4949920c7ae2979a6d353082b9a32672e3e4d745) or ![{\displaystyle {R\ \bowtie \ S \atop a\ \theta \ v}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/7ec5235053b3152d3c4d4a558d77a736f84f1d2d) where *a* and *b* are attribute names, *θ* is a binary [relational operator][63] in the set {<, ≤, =, ≠, >, ≥}, *υ* is a value constant, and *R* and *S* are relations. The result of this operation consists of all combinations of tuples in *R* and *S* that satisfy *θ*. The result of the *θ*\-join is defined only if the headers of *S* and *R* are disjoint, that is, do not contain a common attribute.

The simulation of this operation in the fundamental operations is therefore as follows:

*R* ⋈*θ* *S* = *σθ*(*R* × *S*)

In case the operator *θ* is the equality operator (=) then this join is also called an __equijoin__.

Note, however, that a computer language that supports the natural join and selection operators does not need *θ*\-join as well, as this can be achieved by selection from the result of a natural join (which degenerates to Cartesian product when there are no shared attributes).

In SQL implementations, joining on a predicate is usually called an *inner join*, and the *on* keyword allows one to specify the predicate used to filter the rows. It is important to note: forming the flattened Cartesian product then filtering the rows is conceptually correct, but an implementation would use more sophisticated data structures to speed up the join query.

### Semijoin (⋉)(⋊)\[[edit][64]\]

The left semijoin is a joining similar to the natural join and written as *R* ⋉ *S* where *R* and *S* are [relations][65].[\[3\]][66] The result is the set of all tuples in *R* for which there is a tuple in *S* that is equal on their common attribute names. The difference from a natural join is that other columns of *S* do not appear. For example, consider the tables *Employee* and *Dept* and their semijoin:

*Employee*

Name

EmpId

DeptName

Harry

3415

Finance

Sally

2241

Sales

George

3401

Finance

Harriet

2202

Production

*Dept*

DeptName

Manager

Sales

Sally

Production

Harriet

*Employee* ⋉ *Dept*

Name

EmpId

DeptName

Sally

2241

Sales

Harriet

2202

Production

More formally the semantics of the semijoin can be defined as follows:

*R* ⋉ *S* = { *t* : *t* ∈ *R* ∧ ∃*s* ∈ *S*(*Fun* (*t* ∪ *s*)) }

where *Fun*(*r*) is as in the definition of natural join.

The semijoin can be simulated using the natural join as follows. If *a*1, ..., *a**n* are the attribute names of *R*, then

*R* ⋉ *S* = ![\Pi ](https://wikimedia.org/api/rest_v1/media/math/render/svg/eed3e3db6cc2028a183af948212ed2551d25c954)*a*1,..,*a**n*(*R* ⋈ *S*).

Since we can simulate the natural join with the basic operators it follows that this also holds for the semijoin.

In Codd's 1970 paper, semijoin is called restriction.[\[4\]][67]

### Antijoin (▷)\[[edit][68]\]

The antijoin, written as *R* ▷ *S* where *R* and *S* are [relations][69], is similar to the semijoin, but the result of an antijoin is only those tuples in *R* for which there is *no* tuple in *S* that is equal on their common attribute names.[\[5\]][70]

For an example consider the tables *Employee* and *Dept* and their antijoin:

*Employee*

Name

EmpId

DeptName

Harry

3415

Finance

Sally

2241

Sales

George

3401

Finance

Harriet

2202

Production

*Dept*

DeptName

Manager

Sales

Sally

Production

Harriet

*Employee* ▷ *Dept*

Name

EmpId

DeptName

Harry

3415

Finance

George

3401

Finance

The antijoin is formally defined as follows:

*R* ▷ *S* = { *t* : *t* ∈ *R* ∧ ¬∃*s* ∈ *S*(*Fun* (*t* ∪ *s*)) }

or

*R* ▷ *S* = { *t* : *t* ∈ *R*, there is no tuple *s* of *S* that satisfies *Fun* (*t* ∪ *s*) }

where *Fun* (*t* ∪ *s*) is as in the definition of natural join.

The antijoin can also be defined as the [complement][71] of the semijoin, as follows:

Given this, the antijoin is sometimes called the anti-semijoin, and the antijoin operator is sometimes written as semijoin symbol with a bar above it, instead of ▷.

### Division (÷)\[[edit][72]\]

The division is a binary operation that is written as *R* ÷ *S*. Division is not implemented directly in SQL. The result consists of the restrictions of tuples in *R* to the attribute names unique to *R*, i.e., in the header of *R* but not in the header of *S*, for which it holds that all their combinations with tuples in *S* are present in *R*. For an example see the tables *Completed*, *DBProject* and their division:

*Completed*

Student

Task

Fred

Database1

Fred

Database2

Fred

Compiler1

Eugene

Database1

Eugene

Compiler1

Sarah

Database1

Sarah

Database2

*DBProject*

Task

Database1

Database2

*Completed* ÷ *DBProject*

Student

Fred

Sarah

If *DBProject* contains all the tasks of the Database project, then the result of the division above contains exactly the students who have completed both of the tasks in the Database project. More formally the semantics of the division is defined as follows:

*R* ÷ *S* = { *t*\[*a*1,...,*a**n*\] : *t* ∈ *R* ∧ ∀*s* ∈ *S* ( (*t*\[*a*1,...,*a**n*\] ∪ *s*) ∈ *R*) }

__(6)__

where {*a*1,...,*a**n*} is the set of attribute names unique to *R* and *t*\[*a*1,...,*a**n*\] is the restriction of *t* to this set. It is usually required that the attribute names in the header of *S* are a subset of those of *R* because otherwise the result of the operation will always be empty.

The simulation of the division with the basic operations is as follows. We assume that *a*1,...,*a**n* are the attribute names unique to *R* and *b*1,...,*b**m* are the attribute names of *S*. In the first step we project *R* on its unique attribute names and construct all combinations with tuples in *S*:

*T* := π*a*1,...,*a**n*(*R*) × *S*

In the prior example, T would represent a table such that every Student (because Student is the unique key / attribute of the Completed table) is combined with every given Task. So Eugene, for instance, would have two rows, Eugene → Database1 and Eugene → Database2 in T.

EG: First, let's pretend that "Completed" has a third attribute called "grade". It's unwanted baggage here, so we must project it off always. In fact in this step we can drop 'Task' from R as well; the multiply puts it back on.

*T* := πStudent(*R*) × *S* // This gives us every possible desired combination, including those that don't actually exist in R, and excluding others (eg Fred | compiler1, which is not a desired combination)

*T*

Student

Task

Fred

Database1

Fred

Database2

Eugene

Database1

Eugene

Database2

Sarah

Database1

Sarah

Database2

In the next step we subtract *R* from *T*

[relation][73]:

*U* := *T* − *R*

In *U* we have the possible combinations that "could have" been in *R*, but weren't.

EG: Again with projections — *T* and *R* need to have identical attribute names/headers.

*U* := *T* − πStudent,Task(*R*) // This gives us a "what's missing" list.

*T*

Student

Task

Fred

Database1

Fred

Database2

Eugene

Database1

Eugene

Database2

Sarah

Database1

Sarah

Database2

*R* a.k.a. *Completed*

Student

Task

Fred

Database1

Fred

Database2

Fred

Compiler1

Eugene

Database1

Eugene

Compiler1

Sarah

Database1

Sarah

Database2

*U* aka *T* − *R* aka *what's missing*

Student

Task

Eugene

Database2

So if we now take the projection on the attribute names unique to *R*

then we have the restrictions of the tuples in *R* for which not all combinations with tuples in *S* were present in *R*:

*V* := π*a*1,...,*a**n*(*U*)

EG: Project *U* down to just the attribute(s) in question (Student)

*V* := πStudent(*U*)

So what remains to be done is take the projection of *R* on its unique attribute names and subtract those in *V*:

*W* := π*a*1,...,*a**n*(*R*) − *V*

EG: *W* := πStudent(*R*) − *V*.

πStudent(*R*)

Student

Fred

Eugene

Sarah

*V*

Student

Eugene

*W* aka (πStudent(*R*) − *V*) aka desired result

Student

Fred

Sarah

## Common extensions\[[edit][74]\]

In practice the classical relational algebra described above is extended with various operations such as outer joins, aggregate functions and even transitive closure.[\[6\]][75]

### Outer joins\[[edit][76]\]

Whereas the result of a join (or inner join) consists of tuples formed by combining matching tuples in the two operands, an outer join contains those tuples and additionally some tuples formed by extending an unmatched tuple in one of the operands by "fill" values for each of the attributes of the other operand. Outer joins are not considered part of the classical relational algebra discussed so far.[\[7\]][77]

The operators defined in this section assume the existence of a *null* value, *ω*, which we do not define, to be used for the fill values; in practice this corresponds to the [NULL][78] in SQL. In order to make subsequent selection operations on the resulting table meaningful, a semantic meaning needs to be assigned to nulls; in Codd's approach the propositional logic used by the selection is [extended to a three-valued logic][79], although we elide those details in this article.

Three outer join operators are defined: left outer join, right outer join, and full outer join. (The word "outer" is sometimes omitted.)

#### Left outer join (⟕)\[[edit][80]\]

The left outer join is written as *R* ⟕ *S* where *R* and *S* are [relations][81].[\[8\]][82] The result of the left outer join is the set of all combinations of tuples in *R* and *S* that are equal on their common attribute names, in addition (loosely speaking) to tuples in *R* that have no matching tuples in *S*.

For an example consider the tables *Employee* and *Dept* and their left outer join:

*Employee*

Name

EmpId

DeptName

Harry

3415

Finance

Sally

2241

Sales

George

3401

Finance

Harriet

2202

Sales

Tim

1123

Executive

*Dept*

DeptName

Manager

Sales

Harriet

Production

Charles

*Employee* ⟕ *Dept*

Name

EmpId

DeptName

Manager

Harry

3415

Finance

ω

Sally

2241

Sales

Harriet

George

3401

Finance

ω

Harriet

2202

Sales

Harriet

Tim

1123

Executive

ω

In the resulting relation, tuples in *S* which have no common values in common attribute names with tuples in *R* take a *null* value, *ω*.

Since there are no tuples in *Dept* with a *DeptName* of *Finance* or *Executive*, *ω*s occur in the resulting relation where tuples in *Employee* have a *DeptName* of *Finance* or *Executive*.

Let *r*1, *r*2, ..., *r**n* be the attributes of the relation *R* and let {(*ω*, ..., *ω*)} be the singleton relation on the attributes that are *unique* to the relation *S* (those that are not attributes of *R*). Then the left outer join can be described in terms of the natural join (and hence using basic operators) as follows:

![(R \bowtie S) \cup ((R - \pi_{r_1, r_2, \dots, r_n}(R \bowtie S)) \times \{(\omega, \dots \omega)\})](https://wikimedia.org/api/rest_v1/media/math/render/svg/98d8c92b6cb42dc22b5b3a9d1a2a4ee4520ba199)

#### Right outer join (⟖)\[[edit][83]\]

The right outer join behaves almost identically to the left outer join, but the roles of the tables are switched.

The right outer join of [relations][84] *R* and *S* is written as *R* ⟖ *S*.[\[9\]][85] The result of the right outer join is the set of all combinations of tuples in *R* and *S* that are equal on their common attribute names, in addition to tuples in *S* that have no matching tuples in *R*.

For example, consider the tables *Employee* and *Dept* and their right outer join:

*Employee*

Name

EmpId

DeptName

Harry

3415

Finance

Sally

2241

Sales

George

3401

Finance

Harriet

2202

Sales

Tim

1123

Executive

*Dept*

DeptName

Manager

Sales

Harriet

Production

Charles

*Employee* ⟖ *Dept*

Name

EmpId

DeptName

Manager

Sally

2241

Sales

Harriet

Harriet

2202

Sales

Harriet

ω

ω

Production

Charles

In the resulting relation, tuples in *R* which have no common values in common attribute names with tuples in *S* take a *null* value, *ω*.

Since there are no tuples in *Employee* with a *DeptName* of *Production*, *ω*s occur in the Name and EmpId attributes of the resulting relation where tuples in *Dept* had *DeptName* of *Production*.

Let *s*1, *s*2, ..., *s**n* be the attributes of the relation *S* and let {(*ω*, ..., *ω*)} be the singleton relation on the attributes that are *unique* to the relation *R* (those that are not attributes of *S*). Then, as with the left outer join, the right outer join can be simulated using the natural join as follows:

![(R \bowtie S) \cup (\{(\omega, \dots, \omega)\} \times (S - \pi_{s_1, s_2, \dots, s_n}(R \bowtie S)))](https://wikimedia.org/api/rest_v1/media/math/render/svg/0570296147338af7c86304c653c3431c88b39d3c)

#### Full outer join (⟗)\[[edit][86]\]

The __outer join__ or __full outer join__ in effect combines the results of the left and right outer joins.

The full outer join is written as *R* ⟗ *S* where *R* and *S* are [relations][87].[\[10\]][88] The result of the full outer join is the set of all combinations of tuples in *R* and *S* that are equal on their common attribute names, in addition to tuples in *S* that have no matching tuples in *R* and tuples in *R* that have no matching tuples in *S* in their common attribute names.

For an example consider the tables *Employee* and *Dept* and their full outer join:

*Employee*

Name

EmpId

DeptName

Harry

3415

Finance

Sally

2241

Sales

George

3401

Finance

Harriet

2202

Sales

Tim

1123

Executive

*Dept*

DeptName

Manager

Sales

Harriet

Production

Charles

*Employee* ⟗ *Dept*

Name

EmpId

DeptName

Manager

Harry

3415

Finance

ω

Sally

2241

Sales

Harriet

George

3401

Finance

ω

Harriet

2202

Sales

Harriet

Tim

1123

Executive

ω

ω

ω

Production

Charles

In the resulting relation, tuples in *R* which have no common values in common attribute names with tuples in *S* take a *null* value, *ω*. Tuples in *S* which have no common values in common attribute names with tuples in *R* also take a *null* value, *ω*.

The full outer join can be simulated using the left and right outer joins (and hence the natural join and set union) as follows:

*R* ⟗ *S* = (*R* ⟕ *S*) ∪ (*R* ⟖ *S*)

### Operations for domain computations\[[edit][89]\]

There is nothing in relational algebra introduced so far that would allow computations on the data domains (other than evaluation of propositional expressions involving equality). For example, it is not possible using only the algebra introduced so far to write an expression that would multiply the numbers from two columns, e.g. a unit price with a quantity to obtain a total price. Practical query languages have such facilities, e.g. the SQL SELECT allows arithmetic operations to define new columns in the result `SELECT unit_price * quantity AS total_price FROM t`, and a similar facility is provided more explicitly by [Tutorial D][90]'s `EXTEND` keyword.[\[11\]][91] In database theory, this is called __extended projection__.[\[12\]][92]: 213 

#### Aggregation\[[edit][93]\]

Furthermore, computing various functions on a column, like the summing up of its elements, is also not possible using the relational algebra introduced so far. There are five [aggregate functions][94] that are included with most relational database systems. These operations are Sum, Count, Average, Maximum and Minimum. In relational algebra the aggregation operation over a schema (*A*1, *A*2, ... *A**n*) is written as follows:

![G_1, G_2, \ldots, G_m\ g_{f_1({A_1}'), f_2({A_2}'), \ldots, f_k({A_k}')}\ (r)](https://wikimedia.org/api/rest_v1/media/math/render/svg/c74b92d02fb0ae8df720ba3355e2cd7bc7a3e58f)

where each *A**j*', 1 ≤ *j* ≤ *k*, is one of the original attributes *A**i*, 1 ≤ *i* ≤ *n*.

The attributes preceding the *g* are grouping attributes, which function like a "group by" clause in SQL. Then there are an arbitrary number of aggregation functions applied to individual attributes. The operation is applied to an arbitrary relation *r*. The grouping attributes are optional, and if they are not supplied, the aggregation functions are applied across the entire relation to which the operation is applied.

Let's assume that we have a table named Account with three columns, namely Account\_Number, Branch\_Name and Balance. We wish to find the maximum balance of each branch. This is accomplished by Branch\_Name*G*Max(Balance)(Account). To find the highest balance of all accounts regardless of branch, we could simply write *G*Max(Balance)(Account).

Grouping is often written as Branch\_Name*ɣ*Max(Balance)(Account) instead.[\[13\]][95]

### Transitive closure\[[edit][96]\]

Although relational algebra seems powerful enough for most practical purposes, there are some simple and natural operators on [relations][97] that cannot be expressed by relational algebra. One of them is the [transitive closure][98] of a binary relation. Given a domain *D*, let binary relation *R* be a subset of *D*×*D*. The transitive closure *R+* of *R* is the smallest subset of *D*×*D* that contains *R* and satisfies the following condition:

![\forall x \forall y \forall z \left( (x,y) \in R^+ \wedge (y,z) \in R^+ \Rightarrow (x,z) \in R^+ \right)](https://wikimedia.org/api/rest_v1/media/math/render/svg/e785e5bd6f950ac4720195acf0603763b5e8de7a)

There is no relational algebra expression *E*(*R*) taking *R* as a variable argument that produces *R*+. This can be proved using the fact that, given a relational expression *E* for which it is claimed that *E*(*R*) = *R*+, where *R* is a variable, we can always find an instance *__r__* of *R* (and a corresponding domain __d__) such that *E*(*__r__*) ≠ *__r__*+.[\[14\]][99]

SQL however officially supports such [fixpoint queries][100] since 1999, and it had vendor-specific extensions in this direction well before that.

## Use of algebraic properties for query optimization\[[edit][101]\]

[Queries][102] can be represented as a [tree][103], where

-   the internal nodes are operators,
-   leaves are [relations][104],
-   subtrees are subexpressions.

The primary goal is to transform expression trees into equivalent [expression trees][105], where the average size of the relations yielded by subexpressions in the tree is smaller than it was before the [optimization][106]. The secondary goal is to try to form common subexpressions within a single query, or if there is more than one query being evaluated at the same time, in all of those queries. The rationale behind the second goal is that it is enough to compute common subexpressions once, and the results can be used in all queries that contain that subexpression.

Here are a set of rules that can be used in such transformations.

### Selection\[[edit][107]\]

Rules about selection operators play the most important role in query optimization. Selection is an operator that very effectively decreases the number of rows in its operand, so if the selections in an expression tree are moved towards the leaves, the internal [relations][108] (yielded by subexpressions) will likely shrink.

#### Basic selection properties\[[edit][109]\]

Selection is [idempotent][110] (multiple applications of the same selection have no additional effect beyond the first one), and [commutative][111] (the order selections are applied in has no effect on the eventual result).

1.  ![\sigma_{A}(R)=\sigma_{A}\sigma_{A}(R)\,\!](https://wikimedia.org/api/rest_v1/media/math/render/svg/72c4bc41e50ba62f1d28b7168e5519036449973b)
2.  ![\sigma_{A}\sigma_{B}(R)=\sigma_{B}\sigma_{A}(R)\,\!](https://wikimedia.org/api/rest_v1/media/math/render/svg/048c468963483b92e1f2da2bbd22591af9633280)

#### Breaking up selections with complex conditions\[[edit][112]\]

A selection whose condition is a [conjunction][113] of simpler conditions is equivalent to a sequence of selections with those same individual conditions, and selection whose condition is a [disjunction][114] is equivalent to a union of selections. These identities can be used to merge selections so that fewer selections need to be evaluated, or to split them so that the component selections may be moved or optimized separately.

1.  ![\sigma_{A \land B}(R)=\sigma_{A}(\sigma_{B}(R))=\sigma_{B}(\sigma_{A}(R))](https://wikimedia.org/api/rest_v1/media/math/render/svg/68355655a27c5d21353e79a928b9ac432cf0c316)
2.  ![\sigma_{A \lor B}(R)=\sigma_{A}(R)\cup\sigma_{B}(R)](https://wikimedia.org/api/rest_v1/media/math/render/svg/747b9bc1c2c5fa36bd22a6c16a8b1b7cf4efaaf8)

#### Selection and cross product\[[edit][115]\]

Cross product is the costliest operator to evaluate. If the input [relations][116] have *N* and *M* rows, the result will contain ![NM](https://wikimedia.org/api/rest_v1/media/math/render/svg/eb6cb316227dda0eea096c613bc1400323ad141c) rows. Therefore, it is important to decrease the size of both operands before applying the cross product operator.

This can be effectively done if the cross product is followed by a selection operator, e.g. ![{\displaystyle \sigma _{A}(R\times P)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/12ee31931df0695eb048b5837bd575406d6274fd). Considering the definition of join, this is the most likely case. If the cross product is not followed by a selection operator, we can try to push down a selection from higher levels of the expression tree using the other selection rules.

In the above case the condition *A* is broken up in to conditions *B*, *C* and *D* using the split rules about complex selection conditions, so that ![{\displaystyle A=B\wedge C\wedge D}](https://wikimedia.org/api/rest_v1/media/math/render/svg/06d2f21a1ffe70472c07152fb3f4ec7a2cc64125) and *B* contains attributes only from *R*, *C* contains attributes only from *P*, and *D* contains the part of *A* that contains attributes from both *R* and *P*. Note, that *B*, *C* or *D* are possibly empty. Then the following holds:

![\sigma_{A}(R \times P) = \sigma_{B \wedge C \wedge D}(R \times P) = \sigma_{D}(\sigma_{B}(R) \times \sigma_{C}(P))](https://wikimedia.org/api/rest_v1/media/math/render/svg/5f8d2bdd9e735b0e6799b621a95c0fa66b625356)

#### Selection and set operators\[[edit][117]\]

Selection is [distributive][118] over the set difference, intersection, and union operators. The following three rules are used to push selection below set operations in the expression tree. For the set difference and the intersection operators, it is possible to apply the selection operator to just one of the operands following the transformation. This can be beneficial where one of the operands is small, and the overhead of evaluating the selection operator outweighs the benefits of using a smaller [relation][119] as an operand.

1.  ![\sigma_{A}(R\setminus P)=\sigma_{A}(R)\setminus \sigma_{A}(P) =\sigma_{A}(R)\setminus P](https://wikimedia.org/api/rest_v1/media/math/render/svg/e87383dddbc16bf37336661f184c738cc56dcce5)
2.  ![\sigma_{A}(R\cup P)=\sigma_{A}(R)\cup\sigma_{A}(P)](https://wikimedia.org/api/rest_v1/media/math/render/svg/1144b34d4d8fe054c24f7068a7f503b6d19fb54c)
3.  ![\sigma_{A}(R\cap P)=\sigma_{A}(R)\cap\sigma_{A}(P)=\sigma_{A}(R)\cap P=R\cap \sigma_{A}(P)](https://wikimedia.org/api/rest_v1/media/math/render/svg/503defe62c64d4c79a8313fb4516641a9ec57826)

#### Selection and projection\[[edit][120]\]

Selection commutes with projection if and only if the fields referenced in the selection condition are a subset of the fields in the projection. Performing selection before projection may be useful if the operand is a cross product or join. In other cases, if the selection condition is relatively expensive to compute, moving selection outside the projection may reduce the number of tuples which must be tested (since projection may produce fewer tuples due to the elimination of duplicates resulting from omitted fields).

![\pi_{a_1, \ldots ,a_n}(\sigma_A( R )) = \sigma_A(\pi_{a_1, \ldots,a_n}( R ))\text{ where fields in }A \subseteq \{a_1,\ldots,a_n\}](https://wikimedia.org/api/rest_v1/media/math/render/svg/dd4110186f634ea47338e679340e47127b827d1c)

### Projection\[[edit][121]\]

#### Basic projection properties\[[edit][122]\]

Projection is idempotent, so that a series of (valid) projections is equivalent to the outermost projection.

![\pi_{a_1, \ldots , a_n}(\pi_{b_1,\ldots , b_m}(R)) = \pi_{a_1, \ldots , a_n}(R)\text{ where }\{a_1, \ldots , a_n\} \subseteq \{b_1, \ldots , b_m\}](https://wikimedia.org/api/rest_v1/media/math/render/svg/85c967b825a490c4967be092c68307b5648c50da)

#### Projection and set operators\[[edit][123]\]

Projection is [distributive][124] over set union.

![\pi_{a_1, \ldots, a_n}(R \cup P) = \pi_{a_1, \ldots, a_n}(R) \cup \pi_{a_1, \ldots, a_n}(P). \, ](https://wikimedia.org/api/rest_v1/media/math/render/svg/d06e67761e8301675f517061d1310a052a17b198)

Projection does not distribute over intersection and set difference. Counterexamples are given by:

![\pi_A(\{ \langle A=a, B=b \rangle \} \cap \{ \langle A=a, B=b' \rangle \}) = \emptyset](https://wikimedia.org/api/rest_v1/media/math/render/svg/378e4048048367e680a5afdf00107629484e1f31)

![\pi_A(\{ \langle A=a, B=b \rangle \}) \cap \pi_A(\{ \langle A=a, B=b' \rangle \}) = \{ \langle A=a \rangle \}](https://wikimedia.org/api/rest_v1/media/math/render/svg/21e59bc1d4142ad1f4ee90bac9b8459b6a5f30c7)

and

![{\displaystyle \pi _{A}(\{\langle A=a,B=b\rangle \}\setminus \{\langle A=a,B=b'\rangle \})=\{\langle A=a\rangle \}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/8bb2c62cf510226e2c50c3b13bcac5baf56042e0)

![\pi_A(\{ \langle A=a, B=b \rangle \}) \setminus \pi_A(\{ \langle A=a, B=b' \rangle \}) = \emptyset\,,](https://wikimedia.org/api/rest_v1/media/math/render/svg/3e883d041f15b91daf775bc70d4ae495feb9f588)

where *b* is assumed to be distinct from b'.

### Rename\[[edit][125]\]

#### Basic rename properties\[[edit][126]\]

Successive renames of a variable can be collapsed into a single rename. Rename operations which have no variables in common can be arbitrarily reordered with respect to one another, which can be exploited to make successive renames adjacent so that they can be collapsed.

1.  ![\rho_{a / b}(\rho_{b / c}(R)) = \rho_{a / c}(R)\,\!](https://wikimedia.org/api/rest_v1/media/math/render/svg/a6bdfa6b9e88f9821eb5ffa2f680d8d9d8bf8738)
2.  ![\rho_{a / b}(\rho_{c / d}(R)) = \rho_{c / d}(\rho_{a / b}(R))\,\!](https://wikimedia.org/api/rest_v1/media/math/render/svg/98f1641d2a57c0c603178c04ac5703a85de990a2)

#### Rename and set operators\[[edit][127]\]

Rename is distributive over set difference, union, and intersection.

1.  ![\rho_{a / b}(R \setminus P) = \rho_{a / b}(R) \setminus \rho_{a / b}(P)](https://wikimedia.org/api/rest_v1/media/math/render/svg/cb1c7d578876376d7c20e895f5d4626381c795c4)
2.  ![\rho_{a / b}(R \cup P) = \rho_{a / b}(R) \cup \rho_{a / b}(P)](https://wikimedia.org/api/rest_v1/media/math/render/svg/f525fffb64796f16aaff65f972cdbe417fbb2b5c)
3.  ![\rho_{a / b}(R \cap P) = \rho_{a / b}(R) \cap \rho_{a / b}(P)](https://wikimedia.org/api/rest_v1/media/math/render/svg/43ae222553c616a4c337602305b9dac04551a0ae)

### Product and union\[[edit][128]\]

Cartesian product is distributive over union.

1.  ![{\displaystyle (A\times B)\cup (A\times C)=A\times (B\cup C)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/d8d68ce564002d180ffda5f69eb28e012ca87a36)

## Implementations\[[edit][129]\]

The first query language to be based on Codd's algebra was Alpha, developed by Dr. Codd himself. Subsequently, [ISBL][130] was created, and this pioneering work has been acclaimed by many authorities[\[15\]][131] as having shown the way to make Codd's idea into a useful language. [Business System 12][132] was a short-lived industry-strength relational DBMS that followed the ISBL example.

In 1998 [Chris Date][133] and [Hugh Darwen][134] proposed a language called __[Tutorial D][135]__ intended for use in teaching relational database theory, and its query language also draws on ISBL's ideas. [Rel][136] is an implementation of __Tutorial D__.

Even the query language of [SQL][137] is loosely based on a relational algebra, though the operands in SQL ([tables][138]) are not exactly [relations][139] and several useful theorems about the relational algebra do not hold in the SQL counterpart (arguably to the detriment of optimisers and/or users). The SQL table model is a bag ([multiset][140]), rather than a set. For example, the expression ![{\displaystyle (R\cup S)\setminus T=(R\setminus T)\cup (S\setminus T)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/47bb90bb5ceff80faae30764493fe243e72f9ae4) is a theorem for relational algebra on sets, but not for relational algebra on bags; for a treatment of relational algebra on bags see chapter 5 of the "Complete" textbook by [Garcia-Molina][141], [Ullman][142] and [Widom][143].[\[12\]][144]

## See also\[[edit][145]\]

## References\[[edit][146]\]

1.  __[^][147]__ Silberschatz, Abraham; Henry F. Korth; S. Sudarshan (2020). *Database system concepts* (Seventh ed.). New York. p. 56. [ISBN][148] [978-0-07-802215-9][149]. [OCLC][150] [1080554130][151].
2.  __[^][152]__ In [Unicode][153], the bowtie symbol is ⋈ (U+22C8).
3.  __[^][154]__ In [Unicode][155], the ltimes symbol is ⋉ (U+22C9). The rtimes symbol is ⋊ (U+22CA)
4.  __[^][156]__ [Codd, E.F.][157] (June 1970). "A Relational Model of Data for Large Shared Data Banks". *[Communications of the ACM][158]*. __13__ (6): 377–387. [doi][159]:[10.1145/362384.362685][160].
5.  __[^][161]__ In [Unicode][162], the Antijoin symbol is ▷ (U+25B7).
6.  __[^][163]__ M. Tamer Özsu; Patrick Valduriez (2011). [*Principles of Distributed Database Systems*][164] (3rd ed.). Springer. p. 46. [ISBN][165] [978-1-4419-8833-1][166].
7.  __[^][167]__ Patrick O'Neil; [Elizabeth O'Neil][168] (2001). [*Database: Principles, Programming, and Performance, Second Edition*][169]. Morgan Kaufmann. p. 120. [ISBN][170] [978-1-55860-438-4][171].
8.  __[^][172]__ In [Unicode][173], the Left outer join symbol is ⟕ (U+27D5).
9.  __[^][174]__ In [Unicode][175], the Right outer join symbol is ⟖ (U+27D6).
10.  __[^][176]__ In [Unicode][177], the Full Outer join symbol is ⟗ (U+27D7).
11.  __[^][178]__ C. J. Date (2011). [*SQL and Relational Theory: How to Write Accurate SQL Code*][179]. O'Reilly Media, Inc. pp. 133–135. [ISBN][180] [978-1-4493-1974-8][181].
12.  ^ [Jump up to: *__a__*][182] [*__b__*][183] Hector Garcia-Molina; Jeffrey D. Ullman; Jennifer Widom (2009). *Database systems: the complete book* (2nd ed.). Pearson Prentice Hall. [ISBN][184] [978-0-13-187325-4][185].
13.  __[^][186]__ Garcia-Molina, Hector; Ullman, Jeffrey D.; Widom, Jennifer (2009). *DATABASE SYSTEMS The Complete Book*. Upper Saddle River, New Jersey 07458: Pearson Education, Inc. p. 218. [ISBN][187] [9780136067016][188].CS1 maint: location ([link][189])
14.  __[^][190]__ Aho, Alfred V.; Jeffrey D. Ullman (1979). "Universality of data retrieval languages". *Proceedings of the 6th ACM SIGACT-SIGPLAN Symposium on Principles of Programming Languages*: 110–119. [doi][191]:[10.1145/567752.567763][192].
15.  __[^][193]__ C. J. Date. ["Edgar F. Codd - A.M. Turing Award Laureate"][194]. *amturing.acm.org*. Retrieved 2020-12-27.

## Further reading\[[edit][195]\]

Practically any academic textbook on databases has a detailed treatment of the classic relational algebra.

-   [Imieliński, T.][196]; Lipski, W. (1984). ["The relational model of data and cylindric algebras"][197]. *[Journal of Computer and System Sciences][198]*. __28__: 80–102. [doi][199]:[10.1016/0022-0000(84)90077-1][200]. (For relationship with [cylindric algebras][201]).

## External links\[[edit][202]\]

-   [RAT. Software Relational Algebra Translator to SQL][203]
-   [Lecture Videos: Relational Algebra Processing][204] - An introduction to how database systems process relational algebra
-   [Lecture Notes: Relational Algebra][205] – A quick tutorial to adapt SQL queries into relational algebra
-   [Relational – A graphic implementation of the relational algebra][206]
-   [Query Optimization][207] (Page deleted; Closest alternatives: [Standford Query Optimization 2][208], [Microsoft research Query Optimization in relational systems][209], [Stanford paper: Query Optimization][210])This paper is an introduction into the use of the relational algebra in optimizing queries, and includes numerous citations for more in-depth study.
-   [Relational Algebra System for Oracle and Microsoft SQL Server][211]
-   [Pireal – An experimental educational tool for working with Relational Algebra][212]
-   [DES – An educational tool for working with Relational Algebra and other formal languages][213]
-   [RelaX - Relational Algebra Calculator][214] (open-source software available as an online service without registration)
-   [RA: A Relational Algebra Interpreter][215]
-   [Translating SQL to Relational Algebra][216]

[1]: https://en.wikipedia.org/wiki/Database_theory "Database theory"
[2]: https://en.wikipedia.org/wiki/Algebraic_structure
[3]: https://en.wikipedia.org/wiki/Well-founded_semantics
[4]: https://en.wikipedia.org/wiki/Edgar_F._Codd "Edgar F. Codd"
[5]: https://en.wikipedia.org/wiki/Relational_database "Relational database"
[6]: https://en.wikipedia.org/wiki/Query_language "Query language"
[7]: https://en.wikipedia.org/wiki/SQL "SQL"
[8]: https://en.wikipedia.org/wiki/Relation_(database)
[9]: https://en.wikipedia.org/wiki/Relation_(database) "Relation (database)"
[10]: https://en.wikipedia.org/w/index.php?title=Relational_algebra&action=edit&section=1 "Edit section: Introduction"
[11]: https://en.wikipedia.org/wiki/Edgar_F._Codd "Edgar F. Codd"
[12]: https://en.wikipedia.org/wiki/Relational_model "Relational model"
[13]: https://en.wikipedia.org/wiki/Relational_algebra#Implementations
[14]: https://en.wikipedia.org/wiki/Selection_(relational_algebra) "Selection (relational algebra)"
[15]: https://en.wikipedia.org/wiki/Projection_(relational_algebra) "Projection (relational algebra)"
[16]: https://en.wikipedia.org/wiki/Cartesian_product "Cartesian product"
[17]: https://en.wikipedia.org/wiki/Set_union "Set union"
[18]: https://en.wikipedia.org/wiki/Set_difference "Set difference"
[19]: https://en.wikipedia.org/w/index.php?title=Relational_algebra&action=edit&section=2 "Edit section: Set operators"
[20]: https://en.wikipedia.org/wiki/Set_union "Set union"
[21]: https://en.wikipedia.org/wiki/Set_difference "Set difference"
[22]: https://en.wikipedia.org/wiki/Cartesian_product "Cartesian product"
[23]: https://en.wikipedia.org/wiki/Set_theory "Set theory"
[24]: https://en.wikipedia.org/wiki/Relation_(database) "Relation (database)"
[25]: https://en.wikipedia.org/wiki/Set_intersection "Set intersection"
[26]: https://en.wikipedia.org/wiki/Set_(mathematics) "Set (mathematics)"
[27]: https://en.wikipedia.org/w/index.php?title=Relational_algebra&action=edit&section=3 "Edit section: Projection (Π)"
[28]: https://en.wikipedia.org/wiki/Unary_operation "Unary operation"
[29]: https://en.wikipedia.org/wiki/Set_(mathematics) "Set (mathematics)"
[30]: https://en.wikipedia.org/wiki/Tuple "Tuple"
[31]: https://en.wikipedia.org/wiki/SQL "SQL"
[32]: https://en.wikipedia.org/wiki/Multiset "Multiset"
[33]: https://en.wikipedia.org/wiki/Select_(SQL) "Select (SQL)"
[34]: https://en.wikipedia.org/w/index.php?title=Relational_algebra&action=edit&section=4 "Edit section: Selection (σ)"
[35]: https://en.wikipedia.org/wiki/Unary_operation "Unary operation"
[36]: https://en.wikipedia.org/wiki/Propositional_formula "Propositional formula"
[37]: https://en.wikipedia.org/wiki/Atomic_formula "Atomic formula"
[38]: https://en.wikipedia.org/wiki/Selection_(relational_algebra) "Selection (relational algebra)"
[39]: https://en.wikipedia.org/wiki/Logical_conjunction "Logical conjunction"
[40]: https://en.wikipedia.org/wiki/Logical_disjunction "Logical disjunction"
[41]: https://en.wikipedia.org/wiki/Negation "Negation"
[42]: https://en.wikipedia.org/wiki/Tuple "Tuple"
[43]: https://en.wikipedia.org/w/index.php?title=Relational_algebra&action=edit&section=5 "Edit section: Rename (ρ)"
[44]: https://en.wikipedia.org/wiki/Unary_operation "Unary operation"
[45]: https://en.wikipedia.org/wiki/Relation_(database) "Relation (database)"
[46]: https://en.wikipedia.org/wiki/Relational_algebra#cite_note-1
[47]: https://en.wikipedia.org/w/index.php?title=Relational_algebra&action=edit&section=6 "Edit section: Joins and join-like operators"
[48]: https://en.wikipedia.org/w/index.php?title=Relational_algebra&action=edit&section=7 "Edit section: Natural join (⋈)"
[49]: https://en.wikipedia.org/wiki/Natural_join_(SQL) "Natural join (SQL)"
[50]: https://en.wikipedia.org/wiki/The_Armed "The Armed"
[51]: https://en.wikipedia.org/wiki/Binary_relation "Binary relation"
[52]: https://en.wikipedia.org/wiki/Relation_(database) "Relation (database)"
[53]: https://en.wikipedia.org/wiki/Relational_algebra#cite_note-2
[54]: https://en.wikipedia.org/wiki/Composition_of_relations "Composition of relations"
[55]: https://en.wikipedia.org/wiki/Category_theory "Category theory"
[56]: https://en.wikipedia.org/wiki/Fiber_product "Fiber product"
[57]: https://en.wikipedia.org/wiki/Idempotence "Idempotence"
[58]: https://en.wikipedia.org/wiki/Foreign_key "Foreign key"
[59]: https://en.wikipedia.org/wiki/Predicate_(mathematics) "Predicate (mathematics)"
[60]: https://en.wikipedia.org/wiki/Relation_(mathematics) "Relation (mathematics)"
[61]: https://en.wikipedia.org/wiki/Iff "Iff"
[62]: https://en.wikipedia.org/w/index.php?title=Relational_algebra&action=edit&section=8 "Edit section: θ-join and equijoin"
[63]: https://en.wikipedia.org/wiki/Relational_operator "Relational operator"
[64]: https://en.wikipedia.org/w/index.php?title=Relational_algebra&action=edit&section=9 "Edit section: Semijoin (⋉)(⋊)"
[65]: https://en.wikipedia.org/wiki/Relation_(database) "Relation (database)"
[66]: https://en.wikipedia.org/wiki/Relational_algebra#cite_note-3
[67]: https://en.wikipedia.org/wiki/Relational_algebra#cite_note-Codd1970-4
[68]: https://en.wikipedia.org/w/index.php?title=Relational_algebra&action=edit&section=10 "Edit section: Antijoin (▷)"
[69]: https://en.wikipedia.org/wiki/Relation_(database) "Relation (database)"
[70]: https://en.wikipedia.org/wiki/Relational_algebra#cite_note-5
[71]: https://en.wikipedia.org/wiki/Complement_(set_theory) "Complement (set theory)"
[72]: https://en.wikipedia.org/w/index.php?title=Relational_algebra&action=edit&section=11 "Edit section: Division (÷)"
[73]: https://en.wikipedia.org/wiki/Relation_(database) "Relation (database)"
[74]: https://en.wikipedia.org/w/index.php?title=Relational_algebra&action=edit&section=12 "Edit section: Common extensions"
[75]: https://en.wikipedia.org/wiki/Relational_algebra#cite_note-%C3%96zsuValduriez2011-6
[76]: https://en.wikipedia.org/w/index.php?title=Relational_algebra&action=edit&section=13 "Edit section: Outer joins"
[77]: https://en.wikipedia.org/wiki/Relational_algebra#cite_note-O'NeilO'Neil2001-7
[78]: https://en.wikipedia.org/wiki/Null_(SQL) "Null (SQL)"
[79]: https://en.wikipedia.org/wiki/Null_(SQL)#Comparisons_with_NULL_and_the_three-valued_logic_.283VL.29 "Null (SQL)"
[80]: https://en.wikipedia.org/w/index.php?title=Relational_algebra&action=edit&section=14 "Edit section: Left outer join (⟕)"
[81]: https://en.wikipedia.org/wiki/Relation_(database) "Relation (database)"
[82]: https://en.wikipedia.org/wiki/Relational_algebra#cite_note-8
[83]: https://en.wikipedia.org/w/index.php?title=Relational_algebra&action=edit&section=15 "Edit section: Right outer join (⟖)"
[84]: https://en.wikipedia.org/wiki/Relation_(database) "Relation (database)"
[85]: https://en.wikipedia.org/wiki/Relational_algebra#cite_note-9
[86]: https://en.wikipedia.org/w/index.php?title=Relational_algebra&action=edit&section=16 "Edit section: Full outer join (⟗)"
[87]: https://en.wikipedia.org/wiki/Relation_(database) "Relation (database)"
[88]: https://en.wikipedia.org/wiki/Relational_algebra#cite_note-10
[89]: https://en.wikipedia.org/w/index.php?title=Relational_algebra&action=edit&section=17 "Edit section: Operations for domain computations"
[90]: https://en.wikipedia.org/wiki/Tutorial_D "Tutorial D"
[91]: https://en.wikipedia.org/wiki/Relational_algebra#cite_note-Date2011-11
[92]: https://en.wikipedia.org/wiki/Relational_algebra#cite_note-Garcia-MolinaUllman2009-12
[93]: https://en.wikipedia.org/w/index.php?title=Relational_algebra&action=edit&section=18 "Edit section: Aggregation"
[94]: https://en.wikipedia.org/wiki/Aggregate_function "Aggregate function"
[95]: https://en.wikipedia.org/wiki/Relational_algebra#cite_note-13
[96]: https://en.wikipedia.org/w/index.php?title=Relational_algebra&action=edit&section=19 "Edit section: Transitive closure"
[97]: https://en.wikipedia.org/wiki/Relation_(database) "Relation (database)"
[98]: https://en.wikipedia.org/wiki/Transitive_closure "Transitive closure"
[99]: https://en.wikipedia.org/wiki/Relational_algebra#cite_note-14
[100]: https://en.wikipedia.org/wiki/Hierarchical_and_recursive_queries_in_SQL "Hierarchical and recursive queries in SQL"
[101]: https://en.wikipedia.org/w/index.php?title=Relational_algebra&action=edit&section=20 "Edit section: Use of algebraic properties for query optimization"
[102]: https://en.wikipedia.org/wiki/Relational_query "Relational query"
[103]: https://en.wikipedia.org/wiki/Tree_(data_structure) "Tree (data structure)"
[104]: https://en.wikipedia.org/wiki/Relation_(database) "Relation (database)"
[105]: https://en.wikipedia.org/wiki/Binary_expression_tree "Binary expression tree"
[106]: https://en.wikipedia.org/wiki/Query_optimization "Query optimization"
[107]: https://en.wikipedia.org/w/index.php?title=Relational_algebra&action=edit&section=21 "Edit section: Selection"
[108]: https://en.wikipedia.org/wiki/Relation_(database) "Relation (database)"
[109]: https://en.wikipedia.org/w/index.php?title=Relational_algebra&action=edit&section=22 "Edit section: Basic selection properties"
[110]: https://en.wikipedia.org/wiki/Idempotent "Idempotent"
[111]: https://en.wikipedia.org/wiki/Commutative "Commutative"
[112]: https://en.wikipedia.org/w/index.php?title=Relational_algebra&action=edit&section=23 "Edit section: Breaking up selections with complex conditions"
[113]: https://en.wikipedia.org/wiki/Logical_conjunction "Logical conjunction"
[114]: https://en.wikipedia.org/wiki/Logical_disjunction "Logical disjunction"
[115]: https://en.wikipedia.org/w/index.php?title=Relational_algebra&action=edit&section=24 "Edit section: Selection and cross product"
[116]: https://en.wikipedia.org/wiki/Relation_(database) "Relation (database)"
[117]: https://en.wikipedia.org/w/index.php?title=Relational_algebra&action=edit&section=25 "Edit section: Selection and set operators"
[118]: https://en.wikipedia.org/wiki/Distributive_property "Distributive property"
[119]: https://en.wikipedia.org/wiki/Relation_(database) "Relation (database)"
[120]: https://en.wikipedia.org/w/index.php?title=Relational_algebra&action=edit&section=26 "Edit section: Selection and projection"
[121]: https://en.wikipedia.org/w/index.php?title=Relational_algebra&action=edit&section=27 "Edit section: Projection"
[122]: https://en.wikipedia.org/w/index.php?title=Relational_algebra&action=edit&section=28 "Edit section: Basic projection properties"
[123]: https://en.wikipedia.org/w/index.php?title=Relational_algebra&action=edit&section=29 "Edit section: Projection and set operators"
[124]: https://en.wikipedia.org/wiki/Distributive_property "Distributive property"
[125]: https://en.wikipedia.org/w/index.php?title=Relational_algebra&action=edit&section=30 "Edit section: Rename"
[126]: https://en.wikipedia.org/w/index.php?title=Relational_algebra&action=edit&section=31 "Edit section: Basic rename properties"
[127]: https://en.wikipedia.org/w/index.php?title=Relational_algebra&action=edit&section=32 "Edit section: Rename and set operators"
[128]: https://en.wikipedia.org/w/index.php?title=Relational_algebra&action=edit&section=33 "Edit section: Product and union"
[129]: https://en.wikipedia.org/w/index.php?title=Relational_algebra&action=edit&section=34 "Edit section: Implementations"
[130]: https://en.wikipedia.org/wiki/ISBL "ISBL"
[131]: https://en.wikipedia.org/wiki/Relational_algebra#cite_note-15
[132]: https://en.wikipedia.org/wiki/Business_System_12 "Business System 12"
[133]: https://en.wikipedia.org/wiki/Christopher_J._Date "Christopher J. Date"
[134]: https://en.wikipedia.org/wiki/Hugh_Darwen "Hugh Darwen"
[135]: https://en.wikipedia.org/wiki/Tutorial_D "Tutorial D"
[136]: https://en.wikipedia.org/wiki/Rel_(DBMS) "Rel (DBMS)"
[137]: https://en.wikipedia.org/wiki/SQL "SQL"
[138]: https://en.wikipedia.org/wiki/Table_(database) "Table (database)"
[139]: https://en.wikipedia.org/wiki/Relation_(database) "Relation (database)"
[140]: https://en.wikipedia.org/wiki/Multiset "Multiset"
[141]: https://en.wikipedia.org/wiki/Garcia-Molina "Garcia-Molina"
[142]: https://en.wikipedia.org/wiki/Jeffrey_Ullman "Jeffrey Ullman"
[143]: https://en.wikipedia.org/wiki/Jennifer_Widom "Jennifer Widom"
[144]: https://en.wikipedia.org/wiki/Relational_algebra#cite_note-Garcia-MolinaUllman2009-12
[145]: https://en.wikipedia.org/w/index.php?title=Relational_algebra&action=edit&section=35 "Edit section: See also"
[146]: https://en.wikipedia.org/w/index.php?title=Relational_algebra&action=edit&section=36 "Edit section: References"
[147]: https://en.wikipedia.org/wiki/Relational_algebra#cite_ref-1 "Jump up"
[148]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[149]: https://en.wikipedia.org/wiki/Special:BookSources/978-0-07-802215-9 "Special:BookSources/978-0-07-802215-9"
[150]: https://en.wikipedia.org/wiki/OCLC_(identifier) "OCLC (identifier)"
[151]: https://www.worldcat.org/oclc/1080554130
[152]: https://en.wikipedia.org/wiki/Relational_algebra#cite_ref-2 "Jump up"
[153]: https://en.wikipedia.org/wiki/Unicode "Unicode"
[154]: https://en.wikipedia.org/wiki/Relational_algebra#cite_ref-3 "Jump up"
[155]: https://en.wikipedia.org/wiki/Unicode "Unicode"
[156]: https://en.wikipedia.org/wiki/Relational_algebra#cite_ref-Codd1970_4-0 "Jump up"
[157]: https://en.wikipedia.org/wiki/E.F._Codd "E.F. Codd"
[158]: https://en.wikipedia.org/wiki/Communications_of_the_ACM "Communications of the ACM"
[159]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[160]: https://doi.org/10.1145%2F362384.362685
[161]: https://en.wikipedia.org/wiki/Relational_algebra#cite_ref-5 "Jump up"
[162]: https://en.wikipedia.org/wiki/Unicode "Unicode"
[163]: https://en.wikipedia.org/wiki/Relational_algebra#cite_ref-%C3%96zsuValduriez2011_6-0 "Jump up"
[164]: https://books.google.com/books?id=TOBaLQMuNV4C&pg=PA46
[165]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[166]: https://en.wikipedia.org/wiki/Special:BookSources/978-1-4419-8833-1 "Special:BookSources/978-1-4419-8833-1"
[167]: https://en.wikipedia.org/wiki/Relational_algebra#cite_ref-O'NeilO'Neil2001_7-0 "Jump up"
[168]: https://en.wikipedia.org/wiki/Elizabeth_O%27Neil "Elizabeth O'Neil"
[169]: https://books.google.com/books?id=UXh4qTpmO8QC&pg=PA120
[170]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[171]: https://en.wikipedia.org/wiki/Special:BookSources/978-1-55860-438-4 "Special:BookSources/978-1-55860-438-4"
[172]: https://en.wikipedia.org/wiki/Relational_algebra#cite_ref-8 "Jump up"
[173]: https://en.wikipedia.org/wiki/Unicode "Unicode"
[174]: https://en.wikipedia.org/wiki/Relational_algebra#cite_ref-9 "Jump up"
[175]: https://en.wikipedia.org/wiki/Unicode "Unicode"
[176]: https://en.wikipedia.org/wiki/Relational_algebra#cite_ref-10 "Jump up"
[177]: https://en.wikipedia.org/wiki/Unicode "Unicode"
[178]: https://en.wikipedia.org/wiki/Relational_algebra#cite_ref-Date2011_11-0 "Jump up"
[179]: https://books.google.com/books?id=WuZGD5tBfMwC&pg=PA133
[180]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[181]: https://en.wikipedia.org/wiki/Special:BookSources/978-1-4493-1974-8 "Special:BookSources/978-1-4493-1974-8"
[182]: https://en.wikipedia.org/wiki/Relational_algebra#cite_ref-Garcia-MolinaUllman2009_12-0
[183]: https://en.wikipedia.org/wiki/Relational_algebra#cite_ref-Garcia-MolinaUllman2009_12-1
[184]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[185]: https://en.wikipedia.org/wiki/Special:BookSources/978-0-13-187325-4 "Special:BookSources/978-0-13-187325-4"
[186]: https://en.wikipedia.org/wiki/Relational_algebra#cite_ref-13 "Jump up"
[187]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[188]: https://en.wikipedia.org/wiki/Special:BookSources/9780136067016 "Special:BookSources/9780136067016"
[189]: https://en.wikipedia.org/wiki/Category:CS1_maint:_location "Category:CS1 maint: location"
[190]: https://en.wikipedia.org/wiki/Relational_algebra#cite_ref-14 "Jump up"
[191]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[192]: https://doi.org/10.1145%2F567752.567763
[193]: https://en.wikipedia.org/wiki/Relational_algebra#cite_ref-15 "Jump up"
[194]: https://amturing.acm.org/award_winners/codd_1000892.cfm
[195]: https://en.wikipedia.org/w/index.php?title=Relational_algebra&action=edit&section=37 "Edit section: Further reading"
[196]: https://en.wikipedia.org/wiki/Tomasz_Imieli%C5%84ski "Tomasz Imieliński"
[197]: https://doi.org/10.1016%2F0022-0000%2884%2990077-1
[198]: https://en.wikipedia.org/wiki/Journal_of_Computer_and_System_Sciences "Journal of Computer and System Sciences"
[199]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[200]: https://doi.org/10.1016%2F0022-0000%2884%2990077-1
[201]: https://en.wikipedia.org/wiki/Cylindric_algebra "Cylindric algebra"
[202]: https://en.wikipedia.org/w/index.php?title=Relational_algebra&action=edit&section=38 "Edit section: External links"
[203]: http://www.slinfo.una.ac.cr/rat/rat.html
[204]: http://www.databaselecture.com/processing.html
[205]: http://www.databasteknik.se/webbkursen/relalg-lecture/index.html
[206]: https://ltworf.github.io/relational/index.html
[207]: http://www-db.stanford.edu/~widom/cs346/ioannidis.pdf
[208]: https://web.stanford.edu/class/cs345d-01/rl/chaudhuri98.pdf
[209]: https://web.stanford.edu/class/cs345d-01/rl/chaudhuri98.pdf
[210]: http://infolab.stanford.edu/lore/pubs/qo.pdf
[211]: http://www.cse.fau.edu/~marty#RADownload
[212]: https://centaurialpha.github.io/pireal/index.html
[213]: http://des.sourceforge.net/
[214]: https://dbis-uibk.github.io/relax/
[215]: https://users.cs.duke.edu/~junyang/ra2/
[216]: http://mlwiki.org/index.php/Translating_SQL_to_Relational_Algebra

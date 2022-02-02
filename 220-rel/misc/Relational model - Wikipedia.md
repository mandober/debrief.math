---
downloaded:       2021-12-11
page-url:         https://en.wikipedia.org/wiki/Relational_model
page-title:       Relational model - Wikipedia
article-title:    Relational model - Wikipedia
---
# Relational model - Wikipedia

The relational model (RM) for database management is an approach to managing data using a structure and language consistent with first-order predicate logic, first described in 1969 by English computer scientist Edgar F. Codd,[1][2] where all data is represented in terms of tuples, grouped into relations. A database organized in terms of the relational model is a relational database.
The __relational model__ (__RM__) for [database][1] management is an approach to managing [data][2] using a [structure][3] and language consistent with [first-order predicate logic][4], first described in 1969 by English computer scientist [Edgar F. Codd][5],[\[1\]][6][\[2\]][7] where all data is represented in terms of [tuples][8], grouped into [relations][9]. A database organized in terms of the relational model is a [relational database][10].

The purpose of the relational model is to provide a [declarative][11] method for specifying data and queries: users directly state what information the database contains and what information they want from it, and let the database management system software take care of describing data structures for storing the data and retrieval procedures for answering queries.

Most relational databases use the [SQL][12] data definition and query language; these systems implement what can be regarded as an engineering approximation to the relational model. A *table* in an SQL [database schema][13] corresponds to a predicate variable; the contents of a table to a relation; key constraints, other constraints, and SQL queries correspond to predicates. However, SQL databases [deviate from the relational model in many details][14], and Codd fiercely argued against deviations that compromise the original principles.[\[3\]][15]

## Overview\[[edit][16]\]

The relational model's central idea is to describe a database as a collection of [predicates][17] over a finite set of predicate variables, describing [constraints][18] on the possible values and combinations of values. The content of the database at any given time is a finite (logical) [model][19] of the database, i.e. a set of [relations][20], one per predicate variable, such that all predicates are satisfied. A request for information from the database (a [database query][21]) is also a predicate.

[![](https://upload.wikimedia.org/wikipedia/commons/thumb/8/8d/Relational_model_concepts.png/360px-Relational_model_concepts.png)][22]

Relational model concepts.

### Alternatives\[[edit][23]\]

Other [models][24] include the [hierarchical model][25] and [network model][26]. Some [systems][27] using these older architectures are still in use today in [data centers][28] with high data volume needs, or where existing systems are so complex and abstract that it would be cost-prohibitive to migrate to systems employing the relational model. Also of note are newer [object-oriented databases][29].

### Implementation\[[edit][30]\]

There have been several attempts to produce a true implementation of the relational database model as originally defined by [Codd][31] and explained by [Date][32], [Darwen][33] and others, but none have popular successes so far. As of October 2015, [Rel][34] is one of the more recent attempts to do this.

The relational model was the first database model to be described in formal mathematical terms. Hierarchical and network databases existed before relational databases, but their specifications were relatively informal. After the relational model was defined, there were many attempts to compare and contrast the different models, and this led to the emergence of more rigorous descriptions of the earlier models; though the procedural nature of the data manipulation interfaces for hierarchical and network databases limited the scope for formalization.\[*[citation needed][35]*\]

Structural database analytics employing relational modality protocols frequently employ data sequence differentials to maintain hierarchical architecture designations with incorporation of new input. These systems are functionally similar in concept to alternative relay algorithms, which form the foundation of [cloud database][36] infrastructure.\[*[citation needed][37]*\]

## History\[[edit][38]\]

The relational model was invented by [Edgar F. Codd][39] as a general model of data, and subsequently promoted by [Chris Date][40] and [Hugh Darwen][41] among others. In [The Third Manifesto][42] (first published in 1995) Date and Darwen attempt to show how the relational model can allegedly accommodate certain "desired" [object-oriented][43] features.

### Controversies\[[edit][44]\]

Some years after publication of his 1970 model, Codd proposed a [three-valued logic][45] (True, False, Missing/[NULL][46]) version of it to deal with missing information, and in his *The Relational Model for Database Management Version 2* (1990) he went a step further with a four-valued logic (True, False, Missing but Applicable, Missing but Inapplicable) version.[\[4\]][47] These have never been implemented, presumably because of attending complexity. SQL's NULL construct was intended to be part of a three-valued logic system, but fell short of that due to logical errors in the standard and in its implementations.[\[5\]][48]

## Topics\[[edit][49]\]

The fundamental assumption of the relational model is that all [data][50] is represented as mathematical *n*\-[ary][51] __[relations][52]__, an *n*\-ary relation being a [subset][53] of the [Cartesian product][54] of *n* domains. In the mathematical model, [reasoning][55] about such data is done in two-valued [predicate logic][56], meaning there are two possible [evaluations][57] for each [proposition][58]: either *true* or *false* (and in particular no third value such as *unknown*, or *not applicable*, either of which are often associated with the concept of [NULL][59]). Data are operated upon by means of a [relational calculus][60] or [relational algebra][61], these being equivalent in [expressive power][62].

The relational model of data permits the database designer to create a consistent, logical representation of [information][63]. Consistency is achieved by including declared *__[constraints][64]__* in the database design, which is usually referred to as the *logical schema*. The theory includes a process of [database normalization][65] whereby a design with certain desirable properties can be selected from a set of [logically equivalent][66] alternatives. The [access plans][67] and other implementation and operation details are handled by the [DBMS][68] engine, and are not reflected in the logical model. This contrasts with common practice for SQL DBMSs in which [performance tuning][69] often requires changes to the logical model.

The basic relational building block is the [domain][70] or [data type][71], usually abbreviated nowadays to *__type__*. A *[tuple][72]* is an ordered [set][73] of *__attribute values__*. An [attribute][74] is an ordered pair of *__attribute name__* and *__type name__*. An attribute value is a specific valid value for the type of the attribute. This can be either a scalar value or a more complex type.

A relation consists of a *__heading__* and a *__body__*. A heading is a set of attributes. A body (of an *n*\-ary relation) is a set of *n*\-tuples. The heading of the relation is also the heading of each of its tuples.

A relation is defined as a [set][75] of *n*\-tuples. In both mathematics and the relational database model, a set is an *unordered* collection of unique, non-duplicated items, although some DBMSs impose an order to their data. In mathematics, a [tuple][76] has an order, and allows for duplication. [E. F. Codd][77] originally defined tuples using this mathematical definition.[\[2\]][78] Later, it was one of [E. F. Codd][79]'s great insights that using attribute names instead of an ordering would be more convenient (in general) in a computer language based on relations\[*[citation needed][80]*\]. This insight is still being used today. Though the concept has changed, the name "tuple" has not. An immediate and important consequence of this distinguishing feature is that in the relational model the [Cartesian product][81] becomes [commutative][82].

A [table][83] is an accepted visual representation of a relation; a tuple is similar to the concept of a *[row][84]*.

A *[relvar][85]* is a named variable of some specific relation type, to which at all times some relation of that type is assigned, though the relation may contain zero tuples.

The basic principle of the relational model is the [Information Principle][86]: all [information][87] is represented by data values in relations. In accordance with this Principle, a [relational database][88] is a set of relvars and the result of every query is presented as a relation.

The consistency of a relational database is enforced, not by rules built into the applications that use it, but rather by *[constraints][89]*, declared as part of the logical schema and enforced by the [DBMS][90] for all applications. In general, constraints are expressed using relational comparison operators, of which just one, "is subset of" (⊆), is theoretically sufficient\[*[citation needed][91]*\]. In practice, several useful shorthands are expected to be available, of which the most important are [candidate key][92] (really, [superkey][93]) and [foreign key][94] constraints.

### Interpretation\[[edit][95]\]

To fully appreciate the relational model of data it is essential to understand the intended *interpretation* of a [relation][96].

The body of a relation is sometimes called its extension. This is because it is to be interpreted as a representation of the [extension][97] of some [predicate][98], this being the set of true [propositions][99] that can be formed by replacing each [free variable][100] in that predicate by a name (a term that designates something).

There is a [one-to-one correspondence][101] between the free variables of the predicate and the attribute names of the relation heading. Each tuple of the relation body provides attribute values to instantiate the predicate by substituting each of its free variables. The result is a proposition that is deemed, on account of the appearance of the tuple in the relation body, to be true. Contrariwise, every tuple whose heading conforms to that of the relation, but which does not appear in the body is deemed to be false. This assumption is known as the [closed world assumption][102]: it is often violated in practical databases, where the absence of a tuple might mean that the truth of the corresponding proposition is unknown. For example, the absence of the tuple ('John', 'Spanish') from a table of language skills cannot necessarily be taken as evidence that John does not speak Spanish.

For a formal exposition of these ideas, see the section [Set-theoretic Formulation][103], below.

### Application to databases\[[edit][104]\]

A __[data type][105]__ as used in a typical relational database might be the set of integers, the set of character strings, the set of dates, or the two boolean values *true* and *false*, and so on. The corresponding __type names__ for these types might be the strings "int", "char", "date", "boolean", etc. It is important to understand, though, that relational theory does not dictate what types are to be supported; indeed, nowadays provisions are expected to be available for *user-defined* types in addition to the *built-in* ones provided by the system.

__[Attribute][106]__ is the term used in the theory for what is commonly referred to as a __column__. Similarly, __table__ is commonly used in place of the theoretical term __relation__ (though in SQL the term is by no means synonymous with relation). A table data structure is specified as a list of column definitions, each of which specifies a unique column name and the type of the values that are permitted for that column. An __attribute *value*__ is the entry in a specific column and row, such as "John Doe" or "35".

A __[tuple][107]__ is basically the same thing as a __[row][108]__, except in an SQL DBMS, where the column values in a row are ordered. (Tuples are not ordered; instead, each attribute value is identified solely by the __attribute name__ and never by its ordinal position within the tuple.) An attribute name might be "name" or "age".

A __[relation][109]__ is a __[table][110]__ structure definition (a set of column definitions) along with the data appearing in that structure. The structure definition is the __heading__ and the data appearing in it is the __body__, a set of rows. A database __[relvar][111]__ (relation variable) is commonly known as a __base table__. The heading of its assigned value at any time is as specified in the table declaration and its body is that most recently assigned to it by invoking some __update operator__ (typically, INSERT, UPDATE, or DELETE). The heading and body of the table resulting from evaluation of some query are determined by the definitions of the operators used in the expression of that query. (Note that in SQL the heading is not always a set of column definitions as described above, because it is possible for a column to have no name and also for two or more columns to have the same name. Also, the body is not always a set of rows because in SQL it is possible for the same row to appear more than once in the same body.)

### SQL and the relational model\[[edit][112]\]

SQL, initially pushed as the [standard][113] language for [relational databases][114], deviates from the relational model in several places. The current [ISO][115] SQL standard doesn't mention the relational model or use relational terms or concepts. However, it is possible to create a database conforming to the relational model using SQL if one does not use certain SQL features.

The following deviations from the relational model have been noted\[*[by whom?][116]*\] in SQL. Note that few database servers implement the entire SQL standard and in particular do not allow some of these deviations. Whereas NULL is ubiquitous, for example, allowing duplicate column names within a table or anonymous columns is uncommon.

Duplicate rows

The same row can appear more than once in an SQL table. The same tuple cannot appear more than once in a [relation][117].

Anonymous columns

A column in an SQL table can be unnamed and thus unable to be referenced in expressions. The relational model requires every attribute to be named and referenceable.

Duplicate column names

Two or more columns of the same SQL table can have the same name and therefore cannot be referenced, on account of the obvious ambiguity. The relational model requires every attribute to be referenceable.

Column order significance

The order of columns in an SQL table is defined and significant, one consequence being that SQL's implementations of Cartesian product and union are both noncommutative. The relational model requires there to be no significance to any ordering of the attributes of a relation.

Views without CHECK OPTION

Updates to a [view][118] defined without CHECK OPTION can be accepted but the resulting update to the database does not necessarily have the expressed effect on its target. For example, an invocation of INSERT can be accepted but the inserted rows might not all appear in the view, or an invocation of UPDATE can result in rows disappearing from the view. The relational model requires updates to a view to have the same effect as if the view were a base relvar.

Columnless tables unrecognized

SQL requires every table to have at least one column, but there are two relations of degree zero (of [cardinality][119] one and zero) and they are needed to represent extensions of predicates that contain no free variables.

NULL

This special mark can appear instead of a value wherever a value can appear in SQL, in particular in place of a column value in some row. The deviation from the relational model arises from the fact that the implementation of this *ad hoc* concept in SQL involves the use of [three-valued logic][120], under which the comparison of NULL with itself does not yield *true* but instead yields the third [truth value][121], *unknown*; similarly the comparison NULL with something other than itself does not yield *false* but instead yields *unknown*. It is because of this behavior in comparisons that NULL is described as a mark rather than a value. The relational model depends on the [law of excluded middle][122] under which anything that is not true is false and anything that is not false is true; it also requires every tuple in a relation body to have a value for every attribute of that relation. This particular deviation is disputed by some if only because E. F. Codd himself eventually advocated the use of special marks and a 4-valued logic, but this was based on his observation that there are two distinct reasons why one might want to use a special mark in place of a value, which led opponents of the use of such logics to discover more distinct reasons and at least as many as 19 have been noted, which would require a 21-valued logic.\[*[citation needed][123]*\] SQL itself uses NULL for several purposes other than to represent "value unknown". For example, the sum of the empty set is NULL, meaning zero, the average of the empty set is NULL, meaning undefined, and NULL appearing in the result of a LEFT JOIN can mean "no value because there is no matching row in the right-hand operand". There are ways to design tables to avoid the need for NULL, typically what may be considered or resemble high degrees of [database normalization][124], but many find such impractical. It can be a hotly debated topic.

### Relational operations\[[edit][125]\]

Users (or programs) request data from a relational database by sending it a [query][126] that is written in a special language, usually a dialect of SQL. Although SQL was originally intended for end-users, it is much more common for SQL queries to be embedded into software that provides an easier user interface. Many Web sites, such as Wikipedia, perform SQL queries when generating pages.

In response to a query, the database returns a result set, which is just a list of rows containing the answers. The simplest query is just to return all the rows from a table, but more often, the rows are filtered in some way to return just the answer wanted.

Often, data from multiple tables are combined into one, by doing a [join][127]. Conceptually, this is done by taking all possible combinations of rows (the [Cartesian product][128]), and then filtering out everything except the answer. In practice, relational database management systems rewrite ("[optimize][129]") queries to perform faster, using a variety of techniques.

There are a number of relational operations in addition to join. These include project (the process of eliminating some of the columns), restrict (the process of eliminating some of the rows), union (a way of combining two tables with similar structures), difference (that lists the rows in one table that are not found in the other), intersect (that lists the rows found in both tables), and product (mentioned above, which combines each row of one table with each row of the other). Depending on which other sources you consult, there are a number of other operators – many of which can be defined in terms of those listed above. These include semi-join, outer operators such as outer join and outer union, and various forms of division. Then there are operators to rename columns, and summarizing or aggregating operators, and if you permit [relation][130] values as attributes (relation-valued attribute), then operators such as group and ungroup. The SELECT statement in SQL serves to handle all of these except for the group and ungroup operators.

The flexibility of relational databases allows programmers to write queries that were not anticipated by the database designers. As a result, relational databases can be used by multiple applications in ways the original designers did not foresee, which is especially important for databases that might be used for a long time (perhaps several decades). This has made the idea and implementation of relational databases very popular with businesses.

### Database normalization\[[edit][131]\]

[Relations][132] are classified based upon the types of anomalies to which they're vulnerable. A database that is in the [first normal form][133] is vulnerable to all types of anomalies, while a database that is in the domain/key normal form has no modification anomalies. Normal forms are hierarchical in nature. That is, the lowest level is the first normal form, and the database cannot meet the requirements for higher level normal forms without first having met all the requirements of the lesser normal forms.[\[6\]][134]

## Examples\[[edit][135]\]

### Database\[[edit][136]\]

An idealized, very simple example of a description of some [relvars][137] ([relation][138] variables) and their attributes:

-   Customer (__Customer ID__, Tax ID, Name, Address, City, State, Zip, Phone, Email, Sex)
-   Order (__Order No__, Customer ID, Invoice No, Date Placed, Date Promised, Terms, Status)
-   Order Line (__Order No__, __Order Line No__, Product Code, Qty)
-   Invoice (__Invoice No__, Customer ID, Order No, Date, Status)
-   Invoice Line (__Invoice No__, __Invoice Line No__, Product Code, Qty Shipped)
-   Product (__Product Code__, Product Description)

In this [design][139] we have six relvars: Customer, Order, Order Line, Invoice, Invoice Line and Product. The bold, underlined attributes are *[candidate keys][140]*. The non-bold, underlined attributes are *[foreign keys][141]*.

Usually one [candidate key][142] is chosen to be called the [primary key][143] and used in [preference][144] over the other candidate keys, which are then called [alternate keys][145].

A *candidate key* is a unique [identifier][146] enforcing that no [tuple][147] will be duplicated; this would make the [relation][148] into something else, namely a [bag][149], by violating the basic definition of a [set][150]. Both foreign keys and superkeys (that includes candidate keys) can be composite, that is, can be composed of several attributes. Below is a tabular depiction of a relation of our example Customer relvar; a relation can be thought of as a value that can be attributed to a relvar.

### Customer relation\[[edit][151]\]

If we attempted to *insert* a new customer with the ID *1234567890*, this would violate the design of the relvar since __Customer ID__ is a *primary key* and we already have a customer *1234567890*. The [DBMS][152] must reject a [transaction][153] such as this that would render the [database][154] inconsistent by a violation of an [integrity constraint][155].

*[Foreign keys][156]* are [integrity constraints][157] enforcing that the [value][158] of the [attribute set][159] is drawn from a *[candidate key][160]* in another [relation][161]. For example, in the Order relation the attribute __Customer ID__ is a foreign key. A *[join][162]* is the [operation][163] that draws on [information][164] from several relations at once. By joining relvars from the example above we could *query* the database for all of the Customers, Orders, and Invoices. If we only wanted the tuples for a specific customer, we would specify this using a [restriction condition][165].

If we wanted to retrieve all of the Orders for Customer *1234567890*, we could [query][166] the database to return every row in the Order table with __Customer ID__ *1234567890* and join the Order table to the Order Line table based on __Order No__.

There is a flaw in our [database design][167] above. The Invoice relvar contains an Order No attribute. So, each tuple in the Invoice relvar will have one Order No, which implies that there is precisely one Order for each Invoice. But in reality an invoice can be created against many orders, or indeed for no particular order. Additionally the Order relvar contains an Invoice No attribute, implying that each Order has a corresponding Invoice. But again this is not always true in the real world. An order is sometimes paid through several invoices, and sometimes paid without an invoice. In other words, there can be many Invoices per Order and many Orders per Invoice. This is a __[many-to-many][168]__ relationship between Order and Invoice (also called a *non-specific relationship*). To represent this relationship in the database a new relvar should be introduced whose [role][169] is to specify the correspondence between Orders and Invoices:

OrderInvoice (__Order No__, __Invoice No__)

Now, the Order relvar has a *[one-to-many relationship][170]* to the OrderInvoice table, as does the Invoice relvar. If we want to retrieve every Invoice for a particular Order, we can query for all orders where __Order No__ in the Order relation equals the __Order No__ in OrderInvoice, and where __Invoice No__ in OrderInvoice equals the __Invoice No__ in Invoice.

## Set-theoretic formulation\[[edit][171]\]

Basic notions in the relational model are *[relation][172] names* and *attribute names*. We will represent these as strings such as "Person" and "name" and we will usually use the variables ![r, s, t, \ldots](https://wikimedia.org/api/rest_v1/media/math/render/svg/6af5cc856df752ec7107ccb938d12d390015e763) and ![a,b,c](https://wikimedia.org/api/rest_v1/media/math/render/svg/f13f068df656c1b1911ae9f81628c49a6181194d) to range over them. Another basic notion is the set of *atomic values* that contains values such as numbers and strings.

Our first definition concerns the notion of *tuple*, which formalizes the notion of row or record in a table:

[Tuple][173]

A tuple is a [partial function][174] from attribute names to atomic values.

Header

A header is a finite set of attribute names.

[Projection][175]

The projection of a tuple ![t](https://wikimedia.org/api/rest_v1/media/math/render/svg/65658b7b223af9e1acc877d848888ecdb4466560) on a [finite set][176] of attributes ![A](https://wikimedia.org/api/rest_v1/media/math/render/svg/7daff47fa58cdfd29dc333def748ff5fa4c923e3) is ![t[A] = \{ (a, v) : (a, v) \in t, a \in A \}](https://wikimedia.org/api/rest_v1/media/math/render/svg/9f73aac5669f24d1ad1da4c7c16d2f0d39ee6f5c).

The next definition defines *relation* that formalizes the contents of a table as it is defined in the relational model.

[Relation][177]

A relation is a tuple ![(H, B)](https://wikimedia.org/api/rest_v1/media/math/render/svg/95d189340253ada2af02579f01bc476386f341fc) with ![H](https://wikimedia.org/api/rest_v1/media/math/render/svg/75a9edddcca2f782014371f75dca39d7e13a9c1b), the header, and ![B](https://wikimedia.org/api/rest_v1/media/math/render/svg/47136aad860d145f75f3eed3022df827cee94d7a), the body, a set of tuples that all have the domain ![H](https://wikimedia.org/api/rest_v1/media/math/render/svg/75a9edddcca2f782014371f75dca39d7e13a9c1b).

Such a relation closely corresponds to what is usually called the extension of a predicate in [first-order logic][178] except that here we identify the places in the predicate with attribute names. Usually in the relational model a [database schema][179] is said to consist of a set of relation names, the headers that are associated with these names and the [constraints][180] that should hold for every instance of the database schema.

Relation universe

A relation universe ![U](https://wikimedia.org/api/rest_v1/media/math/render/svg/458a728f53b9a0274f059cd695e067c430956025) over a header ![H](https://wikimedia.org/api/rest_v1/media/math/render/svg/75a9edddcca2f782014371f75dca39d7e13a9c1b) is a non-empty set of relations with header ![H](https://wikimedia.org/api/rest_v1/media/math/render/svg/75a9edddcca2f782014371f75dca39d7e13a9c1b).

Relation schema

A relation schema ![(H, C)](https://wikimedia.org/api/rest_v1/media/math/render/svg/5c2c5fff066e006afda3988aeb204f2634acf54d) consists of a header ![H](https://wikimedia.org/api/rest_v1/media/math/render/svg/75a9edddcca2f782014371f75dca39d7e13a9c1b) and a predicate ![C(R)](https://wikimedia.org/api/rest_v1/media/math/render/svg/8c00b7fd762aa97836172e97f4b9c5ddd11d55b8) that is defined for all relations ![R](https://wikimedia.org/api/rest_v1/media/math/render/svg/4b0bfb3769bf24d80e15374dc37b0441e2616e33) with header ![H](https://wikimedia.org/api/rest_v1/media/math/render/svg/75a9edddcca2f782014371f75dca39d7e13a9c1b). A relation satisfies a relation schema ![(H, C)](https://wikimedia.org/api/rest_v1/media/math/render/svg/5c2c5fff066e006afda3988aeb204f2634acf54d) if it has header ![H](https://wikimedia.org/api/rest_v1/media/math/render/svg/75a9edddcca2f782014371f75dca39d7e13a9c1b) and satisfies ![C](https://wikimedia.org/api/rest_v1/media/math/render/svg/4fc55753007cd3c18576f7933f6f089196732029).

### Key constraints and functional dependencies\[[edit][181]\]

One of the simplest and most important types of relation [constraints][182] is the *key constraint*. It tells us that in every instance of a certain relational schema the tuples can be identified by their values for certain attributes.

[Superkey][183]

A superkey is a set of column headers for which the values of those columns concatenated are unique across all rows. Formally:

A superkey is written as a finite set of attribute names.

A superkey ![K](https://wikimedia.org/api/rest_v1/media/math/render/svg/2b76fce82a62ed5461908f0dc8f037de4e3686b0) holds in a relation ![(H, B)](https://wikimedia.org/api/rest_v1/media/math/render/svg/95d189340253ada2af02579f01bc476386f341fc) if:

A superkey holds in a relation universe ![U](https://wikimedia.org/api/rest_v1/media/math/render/svg/458a728f53b9a0274f059cd695e067c430956025) if it holds in all relations in ![U](https://wikimedia.org/api/rest_v1/media/math/render/svg/458a728f53b9a0274f059cd695e067c430956025).

__Theorem:__ A superkey ![K](https://wikimedia.org/api/rest_v1/media/math/render/svg/2b76fce82a62ed5461908f0dc8f037de4e3686b0) holds in a relation universe ![U](https://wikimedia.org/api/rest_v1/media/math/render/svg/458a728f53b9a0274f059cd695e067c430956025) over ![H](https://wikimedia.org/api/rest_v1/media/math/render/svg/75a9edddcca2f782014371f75dca39d7e13a9c1b) if and only if ![K \subseteq H](https://wikimedia.org/api/rest_v1/media/math/render/svg/ac864b38f4348e23edcb3e7aaf8cb1eeb90c3954) and ![K \rightarrow H](https://wikimedia.org/api/rest_v1/media/math/render/svg/ed74a79b8ed033a6d02e550d61cfc37906cdbe82) holds in ![U](https://wikimedia.org/api/rest_v1/media/math/render/svg/458a728f53b9a0274f059cd695e067c430956025).

[Candidate key][184]

A candidate key is a superkey that cannot be further subdivided to form another superkey.

A superkey ![K](https://wikimedia.org/api/rest_v1/media/math/render/svg/2b76fce82a62ed5461908f0dc8f037de4e3686b0) holds as a candidate key for a relation universe ![U](https://wikimedia.org/api/rest_v1/media/math/render/svg/458a728f53b9a0274f059cd695e067c430956025) if it holds as a superkey for ![U](https://wikimedia.org/api/rest_v1/media/math/render/svg/458a728f53b9a0274f059cd695e067c430956025) and there is no [proper subset][185] of ![K](https://wikimedia.org/api/rest_v1/media/math/render/svg/2b76fce82a62ed5461908f0dc8f037de4e3686b0) that also holds as a superkey for ![U](https://wikimedia.org/api/rest_v1/media/math/render/svg/458a728f53b9a0274f059cd695e067c430956025).

[Functional dependency][186]

Functional dependency is the property that a value in a tuple may be derived from another value in that tuple.

A functional dependency (FD for short) is written as ![X \rightarrow Y](https://wikimedia.org/api/rest_v1/media/math/render/svg/d10a18ff36fb82a8fea00dc79971f5ab3a06caff) for ![X,Y](https://wikimedia.org/api/rest_v1/media/math/render/svg/b8705438171d938b7f59cd1bfa5b7d99b6afa5cd) finite sets of attribute names.

A functional dependency ![X \rightarrow Y](https://wikimedia.org/api/rest_v1/media/math/render/svg/d10a18ff36fb82a8fea00dc79971f5ab3a06caff) holds in a relation ![(H, B)](https://wikimedia.org/api/rest_v1/media/math/render/svg/95d189340253ada2af02579f01bc476386f341fc) if:

A functional dependency ![X \rightarrow Y](https://wikimedia.org/api/rest_v1/media/math/render/svg/d10a18ff36fb82a8fea00dc79971f5ab3a06caff) holds in a relation universe ![U](https://wikimedia.org/api/rest_v1/media/math/render/svg/458a728f53b9a0274f059cd695e067c430956025) if it holds in all relations in ![U](https://wikimedia.org/api/rest_v1/media/math/render/svg/458a728f53b9a0274f059cd695e067c430956025).

Trivial functional dependency

A functional dependency is trivial under a header ![H](https://wikimedia.org/api/rest_v1/media/math/render/svg/75a9edddcca2f782014371f75dca39d7e13a9c1b) if it holds in all relation universes over ![H](https://wikimedia.org/api/rest_v1/media/math/render/svg/75a9edddcca2f782014371f75dca39d7e13a9c1b).

__Theorem:__ An FD ![X \rightarrow Y](https://wikimedia.org/api/rest_v1/media/math/render/svg/d10a18ff36fb82a8fea00dc79971f5ab3a06caff) is trivial under a header ![H](https://wikimedia.org/api/rest_v1/media/math/render/svg/75a9edddcca2f782014371f75dca39d7e13a9c1b) if and only if ![Y \subseteq X \subseteq H](https://wikimedia.org/api/rest_v1/media/math/render/svg/8758f3e7647dfa3465ce5189e6c6d053d9399bee).

Closure

[Armstrong's axioms][187]: The closure of a set of FDs ![S](https://wikimedia.org/api/rest_v1/media/math/render/svg/4611d85173cd3b508e67077d4a1252c9c05abca2) under a header ![H](https://wikimedia.org/api/rest_v1/media/math/render/svg/75a9edddcca2f782014371f75dca39d7e13a9c1b), written as ![S^+](https://wikimedia.org/api/rest_v1/media/math/render/svg/8fb8e791330b1f1aabb7d9ab514afa5b879190a9), is the smallest superset of ![S](https://wikimedia.org/api/rest_v1/media/math/render/svg/4611d85173cd3b508e67077d4a1252c9c05abca2) such that:

__Theorem:__ Armstrong's axioms are sound and complete; given a header ![H](https://wikimedia.org/api/rest_v1/media/math/render/svg/75a9edddcca2f782014371f75dca39d7e13a9c1b) and a set ![S](https://wikimedia.org/api/rest_v1/media/math/render/svg/4611d85173cd3b508e67077d4a1252c9c05abca2) of FDs that only contain subsets of ![H](https://wikimedia.org/api/rest_v1/media/math/render/svg/75a9edddcca2f782014371f75dca39d7e13a9c1b), ![X \rightarrow Y \in S^+](https://wikimedia.org/api/rest_v1/media/math/render/svg/9110e4c3462337292294fd7684d26b08271dc8ae) if and only if ![X \rightarrow Y](https://wikimedia.org/api/rest_v1/media/math/render/svg/d10a18ff36fb82a8fea00dc79971f5ab3a06caff) holds in all relation universes over ![H](https://wikimedia.org/api/rest_v1/media/math/render/svg/75a9edddcca2f782014371f75dca39d7e13a9c1b) in which all FDs in ![S](https://wikimedia.org/api/rest_v1/media/math/render/svg/4611d85173cd3b508e67077d4a1252c9c05abca2) hold.

Completion

The completion of a finite set of attributes ![X](https://wikimedia.org/api/rest_v1/media/math/render/svg/68baa052181f707c662844a465bfeeb135e82bab) under a finite set of FDs ![S](https://wikimedia.org/api/rest_v1/media/math/render/svg/4611d85173cd3b508e67077d4a1252c9c05abca2), written as ![X^+](https://wikimedia.org/api/rest_v1/media/math/render/svg/18e0e7c566b554eafc1b5705551ac4e939074777), is the smallest superset of ![X](https://wikimedia.org/api/rest_v1/media/math/render/svg/68baa052181f707c662844a465bfeeb135e82bab) such that:

-   ![Y \rightarrow Z \in S \land Y \subseteq X^+~\Rightarrow~Z \subseteq X^+](https://wikimedia.org/api/rest_v1/media/math/render/svg/dcb7268e8034437714e7ec20e79cd43792de8ead)

The completion of an attribute set can be used to compute if a certain dependency is in the closure of a set of FDs.

__Theorem:__ Given a set ![S](https://wikimedia.org/api/rest_v1/media/math/render/svg/4611d85173cd3b508e67077d4a1252c9c05abca2) of FDs, ![X \rightarrow Y \in S^+](https://wikimedia.org/api/rest_v1/media/math/render/svg/9110e4c3462337292294fd7684d26b08271dc8ae) if and only if ![Y \subseteq X^+](https://wikimedia.org/api/rest_v1/media/math/render/svg/f44a238595eb5e82fd5f1381fb366066a5b91087).

Irreducible cover

An irreducible cover of a set ![S](https://wikimedia.org/api/rest_v1/media/math/render/svg/4611d85173cd3b508e67077d4a1252c9c05abca2) of FDs is a set ![T](https://wikimedia.org/api/rest_v1/media/math/render/svg/ec7200acd984a1d3a3d7dc455e262fbe54f7f6e0) of FDs such that:

### Algorithm to derive candidate keys from functional dependencies\[[edit][188]\]

__algorithm__ derive candidate keys from functional dependencies __is__
    __input:__ a set *S* of FDs that contain only subsets of a header *H*
    __output:__ the set *C* of superkeys that hold as candidate keys in
            all relation universes over *H* in which all FDs in *S* hold

    *C* := ∅         // found candidate keys
    *Q* := { *H* }      // superkeys that contain candidate keys
    __while__ *Q* <> ∅ __do__
        let *K* be some element from *Q*
        *Q* := *Q* – { *K* }
        *minimal* := __true__
        __for each__ *X->Y* __in__ *S* __do__
            *K'* := (*K* – *Y*) ∪ *X*   // derive new superkey
            __if__ *K'* ⊂ *K* __then__
                *minimal* := __false__
                *Q* := *Q* ∪ { *K'* }
            __end if__
        __end for__
        __if__ *minimal* __and__ there is not a subset of *K* in *C* __then__
            remove all supersets of *K* from *C*
            *C* := *C* ∪ { *K* }
        __end if__
    __end while__

## See also\[[edit][189]\]

## References\[[edit][190]\]

1.  __[^][191]__ Codd, E.F (1969), *Derivability, Redundancy, and Consistency of Relations Stored in Large Data Banks*, Research Report, IBM.
2.  ^ [Jump up to: *__a__*][192] [*__b__*][193] Codd, E.F (1970). ["A Relational Model of Data for Large Shared Data Banks"][194]. *[Communications of the ACM][195]*. Classics. __13__ (6): 377–87. [doi][196]:[10.1145/362384.362685][197]. [S2CID][198] [207549016][199]. Archived from [the original][200] on 2007-06-12.
3.  __[^][201]__ Codd, E. F (1990), *The Relational Model for Database Management*, Addison-Wesley, pp. 371–388, [ISBN][202] [978-0-201-14192-4][203].
4.  __[^][204]__ Date, Christopher J. (2006). "18. Why Three- and Four-Valued Logic Don't Work". *Date on Database: Writings 2000–2006*. Apress. pp. 329–41. [ISBN][205] [978-1-59059-746-0][206].
5.  __[^][207]__ Date, Christopher J. (2004). [*An Introduction to Database Systems*][208] (8 ed.). Addison Wesley. pp. [592–97][209]. [ISBN][210] [978-0-321-19784-9][211].
6.  __[^][212]__ David M. Kroenke, *Database Processing: Fundamentals, Design, and Implementation* (1997), Prentice-Hall, Inc., pages 130–144

## Further reading\[[edit][213]\]

-   [Date, Christopher J.][214]; [Darwen, Hugh][215] (2000). *Foundation for future database systems: the third manifesto; a detailed study of the impact of type theory on the relational model of data, including a comprehensive model of type inheritance* (2 ed.). Reading, [MA][216]: Addison-Wesley. [ISBN][217] [978-0-201-70928-5][218].
-   ——— (2007). [*An Introduction to Database Systems*][219] (8 ed.). Boston: Pearson Education. [ISBN][220] [978-0-321-19784-9][221].

## External links\[[edit][222]\]

-   Childs (1968), *Feasibility of a set-theoretic data structure: a general structure based on a reconstituted definition of relation* (research), Handle, [hdl][223]:[2027.42/4164][224] cited in Codd's 1970 paper.
-   Darwen, Hugh, [*The Third Manifesto (TTM)*][225].
-   [Relational Databases][226] at [Curlie][227]
-   ["Relational Model"][228], *C2*.
-   [*Binary relations and tuples compared with respect to the semantic web*][229] ([World Wide Web][230] log), Sun.

[1]: https://en.wikipedia.org/wiki/Database "Database"
[2]: https://en.wikipedia.org/wiki/Data "Data"
[3]: https://en.wikipedia.org/wiki/Structure_(mathematical_logic) "Structure (mathematical logic)"
[4]: https://en.wikipedia.org/wiki/First-order_logic "First-order logic"
[5]: https://en.wikipedia.org/wiki/Edgar_F._Codd "Edgar F. Codd"
[6]: https://en.wikipedia.org/wiki/Relational_model#cite_note-1
[7]: https://en.wikipedia.org/wiki/Relational_model#cite_note-codd1970-2
[8]: https://en.wikipedia.org/wiki/Tuple "Tuple"
[9]: https://en.wikipedia.org/wiki/Relation_(database) "Relation (database)"
[10]: https://en.wikipedia.org/wiki/Relational_database "Relational database"
[11]: https://en.wikipedia.org/wiki/Declarative_programming "Declarative programming"
[12]: https://en.wikipedia.org/wiki/SQL "SQL"
[13]: https://en.wikipedia.org/wiki/Database_schema "Database schema"
[14]: https://en.wikipedia.org/wiki/Relational_model#SQL_and_the_relational_model
[15]: https://en.wikipedia.org/wiki/Relational_model#cite_note-3
[16]: https://en.wikipedia.org/w/index.php?title=Relational_model&action=edit&section=1 "Edit section: Overview"
[17]: https://en.wikipedia.org/wiki/Predicate_(mathematical_logic) "Predicate (mathematical logic)"
[18]: https://en.wikipedia.org/wiki/Constraint_(database) "Constraint (database)"
[19]: https://en.wikipedia.org/wiki/Model_(logic) "Model (logic)"
[20]: https://en.wikipedia.org/wiki/Relation_(database) "Relation (database)"
[21]: https://en.wikipedia.org/wiki/Database_query "Database query"
[22]: https://en.wikipedia.org/wiki/File:Relational_model_concepts.png
[23]: https://en.wikipedia.org/w/index.php?title=Relational_model&action=edit&section=2 "Edit section: Alternatives"
[24]: https://en.wikipedia.org/wiki/Database_model "Database model"
[25]: https://en.wikipedia.org/wiki/Hierarchical_database_model "Hierarchical database model"
[26]: https://en.wikipedia.org/wiki/Network_model "Network model"
[27]: https://en.wikipedia.org/wiki/System "System"
[28]: https://en.wikipedia.org/wiki/Data_center "Data center"
[29]: https://en.wikipedia.org/wiki/Object_database "Object database"
[30]: https://en.wikipedia.org/w/index.php?title=Relational_model&action=edit&section=3 "Edit section: Implementation"
[31]: https://en.wikipedia.org/wiki/Edgar_F._Codd "Edgar F. Codd"
[32]: https://en.wikipedia.org/wiki/Christopher_J._Date "Christopher J. Date"
[33]: https://en.wikipedia.org/wiki/Hugh_Darwen "Hugh Darwen"
[34]: https://en.wikipedia.org/wiki/Rel_(DBMS) "Rel (DBMS)"
[35]: https://en.wikipedia.org/wiki/Wikipedia:Citation_needed "Wikipedia:Citation needed"
[36]: https://en.wikipedia.org/wiki/Cloud_database "Cloud database"
[37]: https://en.wikipedia.org/wiki/Wikipedia:Citation_needed "Wikipedia:Citation needed"
[38]: https://en.wikipedia.org/w/index.php?title=Relational_model&action=edit&section=4 "Edit section: History"
[39]: https://en.wikipedia.org/wiki/Edgar_F._Codd "Edgar F. Codd"
[40]: https://en.wikipedia.org/wiki/Christopher_J._Date "Christopher J. Date"
[41]: https://en.wikipedia.org/wiki/Hugh_Darwen "Hugh Darwen"
[42]: https://en.wikipedia.org/wiki/The_Third_Manifesto "The Third Manifesto"
[43]: https://en.wikipedia.org/wiki/Object-oriented "Object-oriented"
[44]: https://en.wikipedia.org/w/index.php?title=Relational_model&action=edit&section=5 "Edit section: Controversies"
[45]: https://en.wikipedia.org/wiki/Three-valued_logic "Three-valued logic"
[46]: https://en.wikipedia.org/wiki/Null_(SQL) "Null (SQL)"
[47]: https://en.wikipedia.org/wiki/Relational_model#cite_note-4
[48]: https://en.wikipedia.org/wiki/Relational_model#cite_note-5
[49]: https://en.wikipedia.org/w/index.php?title=Relational_model&action=edit&section=6 "Edit section: Topics"
[50]: https://en.wikipedia.org/wiki/Data "Data"
[51]: https://en.wikipedia.org/wiki/Arity "Arity"
[52]: https://en.wikipedia.org/wiki/Relation_(database) "Relation (database)"
[53]: https://en.wikipedia.org/wiki/Subset "Subset"
[54]: https://en.wikipedia.org/wiki/Cartesian_product "Cartesian product"
[55]: https://en.wikipedia.org/wiki/Reasoning "Reasoning"
[56]: https://en.wikipedia.org/wiki/Predicate_logic "Predicate logic"
[57]: https://en.wikipedia.org/wiki/Evaluation "Evaluation"
[58]: https://en.wikipedia.org/wiki/Proposition "Proposition"
[59]: https://en.wikipedia.org/wiki/Null_(SQL) "Null (SQL)"
[60]: https://en.wikipedia.org/wiki/Relational_calculus "Relational calculus"
[61]: https://en.wikipedia.org/wiki/Relational_algebra "Relational algebra"
[62]: https://en.wikipedia.org/wiki/Expressive_power_(computer_science) "Expressive power (computer science)"
[63]: https://en.wikipedia.org/wiki/Information "Information"
[64]: https://en.wikipedia.org/wiki/Constraint_(database) "Constraint (database)"
[65]: https://en.wikipedia.org/wiki/Database_normalization "Database normalization"
[66]: https://en.wikipedia.org/wiki/Logical_equivalence "Logical equivalence"
[67]: https://en.wikipedia.org/wiki/Access_plan "Access plan"
[68]: https://en.wikipedia.org/wiki/DBMS "DBMS"
[69]: https://en.wikipedia.org/wiki/Performance_tuning "Performance tuning"
[70]: https://en.wikipedia.org/wiki/Data_domain "Data domain"
[71]: https://en.wikipedia.org/wiki/Data_type "Data type"
[72]: https://en.wikipedia.org/wiki/Tuple "Tuple"
[73]: https://en.wikipedia.org/wiki/Set_(mathematics) "Set (mathematics)"
[74]: https://en.wikipedia.org/wiki/Attribute_(computing) "Attribute (computing)"
[75]: https://en.wikipedia.org/wiki/Set_(mathematics) "Set (mathematics)"
[76]: https://en.wikipedia.org/wiki/Tuple "Tuple"
[77]: https://en.wikipedia.org/wiki/Edgar_F._Codd "Edgar F. Codd"
[78]: https://en.wikipedia.org/wiki/Relational_model#cite_note-codd1970-2
[79]: https://en.wikipedia.org/wiki/Edgar_F._Codd "Edgar F. Codd"
[80]: https://en.wikipedia.org/wiki/Wikipedia:Citation_needed "Wikipedia:Citation needed"
[81]: https://en.wikipedia.org/wiki/Cartesian_product "Cartesian product"
[82]: https://en.wikipedia.org/wiki/Commutative_operation "Commutative operation"
[83]: https://en.wikipedia.org/wiki/Table_(database) "Table (database)"
[84]: https://en.wikipedia.org/wiki/Row_(database) "Row (database)"
[85]: https://en.wikipedia.org/wiki/Relvar "Relvar"
[86]: https://en.wikipedia.org/wiki/Information_Principle "Information Principle"
[87]: https://en.wikipedia.org/wiki/Information "Information"
[88]: https://en.wikipedia.org/wiki/Relational_database "Relational database"
[89]: https://en.wikipedia.org/wiki/Constraint_(database) "Constraint (database)"
[90]: https://en.wikipedia.org/wiki/DBMS "DBMS"
[91]: https://en.wikipedia.org/wiki/Wikipedia:Citation_needed "Wikipedia:Citation needed"
[92]: https://en.wikipedia.org/wiki/Candidate_key "Candidate key"
[93]: https://en.wikipedia.org/wiki/Superkey "Superkey"
[94]: https://en.wikipedia.org/wiki/Foreign_key "Foreign key"
[95]: https://en.wikipedia.org/w/index.php?title=Relational_model&action=edit&section=7 "Edit section: Interpretation"
[96]: https://en.wikipedia.org/wiki/Relation_(database) "Relation (database)"
[97]: https://en.wikipedia.org/wiki/Extension_(predicate_logic) "Extension (predicate logic)"
[98]: https://en.wikipedia.org/wiki/Predicate_(logic) "Predicate (logic)"
[99]: https://en.wikipedia.org/wiki/Proposition "Proposition"
[100]: https://en.wikipedia.org/wiki/Free_variable "Free variable"
[101]: https://en.wikipedia.org/wiki/Bijection "Bijection"
[102]: https://en.wikipedia.org/wiki/Closed_world_assumption "Closed world assumption"
[103]: https://en.wikipedia.org/wiki/Relational_model#Set-theoretic_formulation "Relational model"
[104]: https://en.wikipedia.org/w/index.php?title=Relational_model&action=edit&section=8 "Edit section: Application to databases"
[105]: https://en.wikipedia.org/wiki/Data_domain "Data domain"
[106]: https://en.wikipedia.org/wiki/Column_(database) "Column (database)"
[107]: https://en.wikipedia.org/wiki/Tuple "Tuple"
[108]: https://en.wikipedia.org/wiki/Row_(database) "Row (database)"
[109]: https://en.wikipedia.org/wiki/Relation_(database) "Relation (database)"
[110]: https://en.wikipedia.org/wiki/Table_(database) "Table (database)"
[111]: https://en.wikipedia.org/wiki/Relvar "Relvar"
[112]: https://en.wikipedia.org/w/index.php?title=Relational_model&action=edit&section=9 "Edit section: SQL and the relational model"
[113]: https://en.wikipedia.org/wiki/Standardization "Standardization"
[114]: https://en.wikipedia.org/wiki/Relational_database "Relational database"
[115]: https://en.wikipedia.org/wiki/International_Organization_for_Standardization "International Organization for Standardization"
[116]: https://en.wikipedia.org/wiki/Wikipedia:Manual_of_Style/Words_to_watch#Unsupported_attributions "Wikipedia:Manual of Style/Words to watch"
[117]: https://en.wikipedia.org/wiki/Relation_(database) "Relation (database)"
[118]: https://en.wikipedia.org/wiki/View_(database) "View (database)"
[119]: https://en.wikipedia.org/wiki/Cardinality_(SQL_statements) "Cardinality (SQL statements)"
[120]: https://en.wikipedia.org/wiki/Three-valued_logic "Three-valued logic"
[121]: https://en.wikipedia.org/wiki/Truth_value "Truth value"
[122]: https://en.wikipedia.org/wiki/Law_of_excluded_middle "Law of excluded middle"
[123]: https://en.wikipedia.org/wiki/Wikipedia:Citation_needed "Wikipedia:Citation needed"
[124]: https://en.wikipedia.org/wiki/Database_normalization "Database normalization"
[125]: https://en.wikipedia.org/w/index.php?title=Relational_model&action=edit&section=10 "Edit section: Relational operations"
[126]: https://en.wikipedia.org/wiki/Database_query "Database query"
[127]: https://en.wikipedia.org/wiki/Join_(SQL) "Join (SQL)"
[128]: https://en.wikipedia.org/wiki/Cartesian_product "Cartesian product"
[129]: https://en.wikipedia.org/wiki/Query_optimizer "Query optimizer"
[130]: https://en.wikipedia.org/wiki/Relation_(database) "Relation (database)"
[131]: https://en.wikipedia.org/w/index.php?title=Relational_model&action=edit&section=11 "Edit section: Database normalization"
[132]: https://en.wikipedia.org/wiki/Relation_(database) "Relation (database)"
[133]: https://en.wikipedia.org/wiki/First_normal_form "First normal form"
[134]: https://en.wikipedia.org/wiki/Relational_model#cite_note-Normalization-6
[135]: https://en.wikipedia.org/w/index.php?title=Relational_model&action=edit&section=12 "Edit section: Examples"
[136]: https://en.wikipedia.org/w/index.php?title=Relational_model&action=edit&section=13 "Edit section: Database"
[137]: https://en.wikipedia.org/wiki/Relvar "Relvar"
[138]: https://en.wikipedia.org/wiki/Relation_(database) "Relation (database)"
[139]: https://en.wikipedia.org/wiki/Design "Design"
[140]: https://en.wikipedia.org/wiki/Candidate_key "Candidate key"
[141]: https://en.wikipedia.org/wiki/Foreign_key "Foreign key"
[142]: https://en.wikipedia.org/wiki/Candidate_key "Candidate key"
[143]: https://en.wikipedia.org/wiki/Primary_key "Primary key"
[144]: https://en.wikipedia.org/wiki/Preference "Preference"
[145]: https://en.wikipedia.org/wiki/Alternate_key "Alternate key"
[146]: https://en.wikipedia.org/wiki/Identifier "Identifier"
[147]: https://en.wikipedia.org/wiki/Tuple "Tuple"
[148]: https://en.wikipedia.org/wiki/Relation_(database) "Relation (database)"
[149]: https://en.wikipedia.org/wiki/Bag_(mathematics) "Bag (mathematics)"
[150]: https://en.wikipedia.org/wiki/Set_(mathematics) "Set (mathematics)"
[151]: https://en.wikipedia.org/w/index.php?title=Relational_model&action=edit&section=14 "Edit section: Customer relation"
[152]: https://en.wikipedia.org/wiki/DBMS "DBMS"
[153]: https://en.wikipedia.org/wiki/Database_transaction "Database transaction"
[154]: https://en.wikipedia.org/wiki/Database "Database"
[155]: https://en.wikipedia.org/wiki/Database_integrity "Database integrity"
[156]: https://en.wikipedia.org/wiki/Foreign_key "Foreign key"
[157]: https://en.wikipedia.org/wiki/Integrity_constraint "Integrity constraint"
[158]: https://en.wikipedia.org/wiki/Value_(computer_science) "Value (computer science)"
[159]: https://en.wikipedia.org/w/index.php?title=Attribute_set&action=edit&redlink=1 "Attribute set (page does not exist)"
[160]: https://en.wikipedia.org/wiki/Candidate_key "Candidate key"
[161]: https://en.wikipedia.org/wiki/Relation_(database) "Relation (database)"
[162]: https://en.wikipedia.org/wiki/Join_(SQL) "Join (SQL)"
[163]: https://en.wikipedia.org/wiki/Operation_(mathematics) "Operation (mathematics)"
[164]: https://en.wikipedia.org/wiki/Information "Information"
[165]: https://en.wikipedia.org/w/index.php?title=Restriction_condition&action=edit&redlink=1 "Restriction condition (page does not exist)"
[166]: https://en.wikipedia.org/wiki/Information_retrieval "Information retrieval"
[167]: https://en.wikipedia.org/wiki/Database_design "Database design"
[168]: https://en.wikipedia.org/wiki/Many-to-many_(data_model) "Many-to-many (data model)"
[169]: https://en.wikipedia.org/wiki/Role "Role"
[170]: https://en.wikipedia.org/w/index.php?title=One-to-many_relationship&action=edit&redlink=1 "One-to-many relationship (page does not exist)"
[171]: https://en.wikipedia.org/w/index.php?title=Relational_model&action=edit&section=15 "Edit section: Set-theoretic formulation"
[172]: https://en.wikipedia.org/wiki/Relation_(database) "Relation (database)"
[173]: https://en.wikipedia.org/wiki/Tuple "Tuple"
[174]: https://en.wikipedia.org/wiki/Partial_function "Partial function"
[175]: https://en.wikipedia.org/wiki/Projection_(relational_algebra) "Projection (relational algebra)"
[176]: https://en.wikipedia.org/wiki/Finite_set "Finite set"
[177]: https://en.wikipedia.org/wiki/Relation_(database) "Relation (database)"
[178]: https://en.wikipedia.org/wiki/First-order_logic "First-order logic"
[179]: https://en.wikipedia.org/wiki/Logical_schema "Logical schema"
[180]: https://en.wikipedia.org/wiki/Constraint_(database) "Constraint (database)"
[181]: https://en.wikipedia.org/w/index.php?title=Relational_model&action=edit&section=16 "Edit section: Key constraints and functional dependencies"
[182]: https://en.wikipedia.org/wiki/Constraint_(database) "Constraint (database)"
[183]: https://en.wikipedia.org/wiki/Superkey "Superkey"
[184]: https://en.wikipedia.org/wiki/Candidate_key "Candidate key"
[185]: https://en.wikipedia.org/wiki/Proper_subset "Proper subset"
[186]: https://en.wikipedia.org/wiki/Functional_dependency "Functional dependency"
[187]: https://en.wikipedia.org/wiki/Armstrong%27s_axioms "Armstrong's axioms"
[188]: https://en.wikipedia.org/w/index.php?title=Relational_model&action=edit&section=17 "Edit section: Algorithm to derive candidate keys from functional dependencies"
[189]: https://en.wikipedia.org/w/index.php?title=Relational_model&action=edit&section=18 "Edit section: See also"
[190]: https://en.wikipedia.org/w/index.php?title=Relational_model&action=edit&section=19 "Edit section: References"
[191]: https://en.wikipedia.org/wiki/Relational_model#cite_ref-1 "Jump up"
[192]: https://en.wikipedia.org/wiki/Relational_model#cite_ref-codd1970_2-0
[193]: https://en.wikipedia.org/wiki/Relational_model#cite_ref-codd1970_2-1
[194]: https://web.archive.org/web/20070612235326/http://www.acm.org/classics/nov95/toc.html
[195]: https://en.wikipedia.org/wiki/Communications_of_the_ACM "Communications of the ACM"
[196]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[197]: https://doi.org/10.1145%2F362384.362685
[198]: https://en.wikipedia.org/wiki/S2CID_(identifier) "S2CID (identifier)"
[199]: https://api.semanticscholar.org/CorpusID:207549016
[200]: http://www.acm.org/classics/nov95/toc.html
[201]: https://en.wikipedia.org/wiki/Relational_model#cite_ref-3 "Jump up"
[202]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[203]: https://en.wikipedia.org/wiki/Special:BookSources/978-0-201-14192-4 "Special:BookSources/978-0-201-14192-4"
[204]: https://en.wikipedia.org/wiki/Relational_model#cite_ref-4 "Jump up"
[205]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[206]: https://en.wikipedia.org/wiki/Special:BookSources/978-1-59059-746-0 "Special:BookSources/978-1-59059-746-0"
[207]: https://en.wikipedia.org/wiki/Relational_model#cite_ref-5 "Jump up"
[208]: https://archive.org/details/introductiontoda0000date
[209]: https://archive.org/details/introductiontoda0000date/page/592
[210]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[211]: https://en.wikipedia.org/wiki/Special:BookSources/978-0-321-19784-9 "Special:BookSources/978-0-321-19784-9"
[212]: https://en.wikipedia.org/wiki/Relational_model#cite_ref-Normalization_6-0 "Jump up"
[213]: https://en.wikipedia.org/w/index.php?title=Relational_model&action=edit&section=20 "Edit section: Further reading"
[214]: https://en.wikipedia.org/wiki/Christopher_J_Date "Christopher J Date"
[215]: https://en.wikipedia.org/wiki/Hugh_Darwen "Hugh Darwen"
[216]: https://en.wikipedia.org/wiki/Massachusetts "Massachusetts"
[217]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[218]: https://en.wikipedia.org/wiki/Special:BookSources/978-0-201-70928-5 "Special:BookSources/978-0-201-70928-5"
[219]: https://archive.org/details/introductiontoda0000date
[220]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[221]: https://en.wikipedia.org/wiki/Special:BookSources/978-0-321-19784-9 "Special:BookSources/978-0-321-19784-9"
[222]: https://en.wikipedia.org/w/index.php?title=Relational_model&action=edit&section=21 "Edit section: External links"
[223]: https://en.wikipedia.org/wiki/Hdl_(identifier) "Hdl (identifier)"
[224]: https://hdl.handle.net/2027.42%2F4164
[225]: http://www.thethirdmanifesto.com/
[226]: https://curlie.org/Computers/Software/Databases/Relational
[227]: https://en.wikipedia.org/wiki/Curlie "Curlie"
[228]: http://c2.com/cgi/wiki?RelationalModel
[229]: http://blogs.sun.com/bblfish/entry/why_binary_relations_beat_tuples
[230]: https://en.wikipedia.org/wiki/World_Wide_Web "World Wide Web"

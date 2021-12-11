---
downloaded:       2021-12-04
page-url:         https://en.wikiversity.org/wiki/Relation_(mathematics)
page-title:       Relation (mathematics) - Wikiversity
article-title:    Relation (mathematics) - Wikiversity
---
# Relation (mathematics) - Wikiversity

☞ This page belongs to resource collections on Logic and Inquiry.
☞ This page belongs to resource collections on [Logic][1] and [Inquiry][2].

In mathematics, a __finitary relation__ is defined by one of the formal definitions given below.

## Informal introduction\[[edit][3] | [edit source][4]\]

The definition of *relation* given in the next section formally captures a concept that is actually quite familiar from everyday life.  For example, consider the relationship, involving three roles that people might play, expressed in a statement of the form ![{\displaystyle X~{\text{suspects that}}~Y~{\text{likes}}~Z.\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/4a5e2f0a4d8ebdd47923149f7faba94fd9338145)  The facts of a concrete situation could be organized in the form of a Table like the one below:

 ![{\displaystyle {\text{Relation}}~S~:~X~{\text{suspects that}}~Y~{\text{likes}}~Z\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/097dbedc7d47c6a7973d7b89ae7ec0733eea30c0) 

![{\displaystyle {\text{Person}}~X\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/e971943516156ac7179e7a254dc7570143e279f7)

![{\displaystyle {\text{Person}}~Y\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/0577ea7a4e96e9dd0450fdac78ac0f906f8d5486)

![{\displaystyle {\text{Person}}~Z\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/67da992cb62bfe5889f0056185fa1830675de56f)

![{\displaystyle {\text{Alice}}\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/a474426d030d849e9d865cd8682e175867db2a23)

![{\displaystyle {\text{Bob}}\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/215514346ec8d047e6f2846cc0ae0e21c1a9f911)

![{\displaystyle {\text{Denise}}\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/e18ca0893180984ae9ba29b50f88db833177c274)

![{\displaystyle {\text{Charles}}\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/658017eb1079459a468c7805c057fd39b87893e7)

![{\displaystyle {\text{Alice}}\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/a474426d030d849e9d865cd8682e175867db2a23)

![{\displaystyle {\text{Bob}}\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/215514346ec8d047e6f2846cc0ae0e21c1a9f911)

![{\displaystyle {\text{Charles}}\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/658017eb1079459a468c7805c057fd39b87893e7)

![{\displaystyle {\text{Charles}}\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/658017eb1079459a468c7805c057fd39b87893e7)

![{\displaystyle {\text{Alice}}\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/a474426d030d849e9d865cd8682e175867db2a23)

![{\displaystyle {\text{Denise}}\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/e18ca0893180984ae9ba29b50f88db833177c274)

![{\displaystyle {\text{Denise}}\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/e18ca0893180984ae9ba29b50f88db833177c274)

![{\displaystyle {\text{Denise}}\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/e18ca0893180984ae9ba29b50f88db833177c274)

Each row of the Table records a fact or makes an assertion of the form ![{\displaystyle X~{\text{suspects that}}~Y~{\text{likes}}~Z.\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/4a5e2f0a4d8ebdd47923149f7faba94fd9338145)  For instance, the first row says, in effect, ![{\displaystyle {\text{Alice suspects that Bob likes Denise.}}\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/96bcde42a7452ee7a094aab54e6a402ecc42a548)  The Table represents a relation ![{\displaystyle S\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/9ebca8014cfb8a1cbd89f085a458f03bbc1c8c30) over the set ![{\displaystyle P\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/b3c0653913568d4c9335e7ce578b2a89041a2b7d) of people under discussion:

![{\displaystyle P~=~\{{\text{Alice}},{\text{Bob}},{\text{Charles}},{\text{Denise}}\}\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/707f35814547ef945ecad6aa4b97e05bab09dcfa)

The data of the Table are equivalent to the following set of ordered triples:

![{\displaystyle {\begin{smallmatrix}S&=&\{&{\text{(Alice, Bob, Denise)}},&{\text{(Charles, Alice, Bob)}},&{\text{(Charles, Charles, Alice)}},&{\text{(Denise, Denise, Denise)}}&\}\end{smallmatrix}}\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/199db921b9c18b3a9e9275c509cdfdb3d44eff06)

By a slight overuse of notation, it is usual to write ![{\displaystyle S({\text{Alice}},{\text{Bob}},{\text{Denise}})\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/8ecd212f780b6890adf9802c83863cb6d5bee577) to say the same thing as the first row of the Table.  The relation ![{\displaystyle S\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/9ebca8014cfb8a1cbd89f085a458f03bbc1c8c30) is a *triadic* or *ternary* relation, since there are *three* items involved in each row.  The relation itself is a mathematical object, defined in terms of concepts from set theory, that carries all the information from the Table in one neat package.

The Table for relation ![{\displaystyle S\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/9ebca8014cfb8a1cbd89f085a458f03bbc1c8c30) is an extremely simple example of a relational database.  The theoretical aspects of databases are the specialty of one branch of computer science, while their practical impacts have become all too familiar in our everyday lives.  Computer scientists, logicians, and mathematicians, however, tend to see different things when they look at these concrete examples and samples of the more general concept of a relation.

For one thing, databases are designed to deal with empirical data, and experience is always finite, whereas mathematics is nothing if not concerned with infinity, at the very least, potential infinity. This difference in perspective brings up a number of ideas that are usefully introduced at this point, if by no means covered in depth.

## Example 1. Divisibility\[[edit][5] | [edit source][6]\]

A more typical example of a two-place relation in mathematics is the relation of *divisibility* between two positive integers ![{\displaystyle n\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/766f836820041aaf3284d81c2b5f9d1c506f3cb2) and ![{\displaystyle m\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/e1b2d8ab15f0b9edbafa76777ed0ddcec36855ae) that is expressed in statements like ![{\displaystyle {}^{\backprime \backprime }n~{\text{divides}}~m{}^{\prime \prime }\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/1aab0456e0c3b95fc35a1c072e5fcbaa35f47374) or ![{\displaystyle {}^{\backprime \backprime }n~{\text{goes into}}~m{}^{\prime \prime }.\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/6e7b2ed296a25044b7f5ddf41d4833cf406d7a47)  This is a relation that comes up so often that a special symbol ![{\displaystyle {}^{\backprime \backprime }|{}^{\prime \prime }\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/42af6477532691c484223153eed9bb93f12a9184) is reserved to express it, allowing one to write ![{\displaystyle {}^{\backprime \backprime }n|m{}^{\prime \prime }\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/3bd7a7db6ff0cb73df9b245107c524ec49e8b4cb) for ![{\displaystyle {}^{\backprime \backprime }n~{\text{divides}}~m{}^{\prime \prime }.\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/b4af8a53c077a364bedbcd4527c2490aa3618275)

To express the binary relation of divisibility in terms of sets, we have the set ![{\displaystyle P\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/b3c0653913568d4c9335e7ce578b2a89041a2b7d) of positive integers, ![{\displaystyle P=\{1,2,3,\ldots \},\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/d01993c770fe4f3f7c2de01ce0885d9ad79d5d5f) and we have the binary relation ![{\displaystyle D\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/f572d549494f3775d2412c14081c11774bc99b48) on ![{\displaystyle P\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/b3c0653913568d4c9335e7ce578b2a89041a2b7d) such that the ordered pair ![{\displaystyle (n,m)\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/0bdafe15bcb71d6e3e88da3ea7447ed7f983c47f) is in the relation ![{\displaystyle D\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/f572d549494f3775d2412c14081c11774bc99b48) just in case ![{\displaystyle n|m.\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/1ebcb1ed482e319fe0a303b8712cef24ec02e666)  In other turns of phrase that are frequently used, one says that the number ![{\displaystyle n\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/766f836820041aaf3284d81c2b5f9d1c506f3cb2) is related by ![{\displaystyle D\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/f572d549494f3775d2412c14081c11774bc99b48) to the number ![{\displaystyle m\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/e1b2d8ab15f0b9edbafa76777ed0ddcec36855ae) just in case ![{\displaystyle n\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/766f836820041aaf3284d81c2b5f9d1c506f3cb2) is a factor of ![{\displaystyle m,\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/2520aed3281a0bbfad936439b21825726998b950) that is, just in case ![{\displaystyle n\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/766f836820041aaf3284d81c2b5f9d1c506f3cb2) divides ![{\displaystyle m\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/e1b2d8ab15f0b9edbafa76777ed0ddcec36855ae) with no remainder.  The relation ![{\displaystyle D,\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/9a3fb370a4f6b5dd675a6bfebb73301de84e841c) regarded as a set of ordered pairs, consists of all pairs of numbers ![{\displaystyle (n,m)\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/0bdafe15bcb71d6e3e88da3ea7447ed7f983c47f) such that ![{\displaystyle n\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/766f836820041aaf3284d81c2b5f9d1c506f3cb2) divides ![{\displaystyle m.\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/754bab9e0d95b22e579cacadc56b59c4c4fbdaf7)

For example, ![{\displaystyle 2\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/2b4f91481cbd47d30ce2ce1bc429b6fe3ee520bc) is a factor of ![{\displaystyle 4,\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/fb01f0d3a3c8c88909bf32bc5605638cb0ec209b) and ![{\displaystyle 6\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/41da3d8d9a775fe2e6b8e63869accbe7cc0f59e2) is a factor of ![{\displaystyle 72,\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/aa6a0e10259ac04f8a1c9739a21254028b200b26) which two facts can be written either as ![{\displaystyle 2|4\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/eca67c3de51a5d43e459dfca1483a6483acf409b) and ![{\displaystyle 6|72\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/cd6830d7f0154d24a56a5a46f9130c18bcb6d222) or as ![{\displaystyle D(2,4)\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/ae4d0183c074944b9577e8cbf867c846dbf68492) and ![{\displaystyle D(6,72).\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/5c49eeba982a712529ffd3cc7a5c8138a2fe75c4)

## Formal definitions\[[edit][7] | [edit source][8]\]

There are two definitions of ![{\displaystyle k\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/b9e7b9748ec995a3321e07ce3b729e64cd688786)\-place relations that are commonly encountered in mathematics.  In order of simplicity, the first of these definitions is as follows:

__Definition 1.__   A __relation__ ![{\displaystyle L\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/37882cf02e7ca89ce14308143da8dca3265af14a) over the sets ![{\displaystyle X_{1},\ldots ,X_{k}\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/314a5c16087ffeb693d1331d36dc9925bc745727) is a subset of their cartesian product, written ![{\displaystyle L\subseteq X_{1}\times \ldots \times X_{k}.\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/dd1b0ee4cb000a071abe3aae961dc5eed28e6c71)  Under this definition, then, a ![{\displaystyle k\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/b9e7b9748ec995a3321e07ce3b729e64cd688786)\-ary relation is simply a set of ![{\displaystyle k\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/b9e7b9748ec995a3321e07ce3b729e64cd688786)\-tuples.

The second definition makes use of an idiom that is common in mathematics, saying that “such and such is an ![{\displaystyle n\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/766f836820041aaf3284d81c2b5f9d1c506f3cb2)\-tuple” to mean that the mathematical object being defined is determined by the specification of ![{\displaystyle n\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/766f836820041aaf3284d81c2b5f9d1c506f3cb2) component mathematical objects.  In the case of a relation ![{\displaystyle L\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/37882cf02e7ca89ce14308143da8dca3265af14a) over ![{\displaystyle k\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/b9e7b9748ec995a3321e07ce3b729e64cd688786) sets, there are ![{\displaystyle k+1\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/19b36a625e6d14f614f0fef6633645f06f39fca7) things to specify, namely, the ![{\displaystyle k\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/b9e7b9748ec995a3321e07ce3b729e64cd688786) sets plus a subset of their cartesian product.  In the idiom, this is expressed by saying that ![{\displaystyle L\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/37882cf02e7ca89ce14308143da8dca3265af14a) is a ![{\displaystyle (k+1)\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/cfe461146ba64cc698441d398ddbb105c07dae81)\-tuple.

__Definition 2.__   A __relation__ ![{\displaystyle L\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/37882cf02e7ca89ce14308143da8dca3265af14a) over the sets ![{\displaystyle X_{1},\ldots ,X_{k}\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/314a5c16087ffeb693d1331d36dc9925bc745727) is a ![{\displaystyle (k+1)\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/cfe461146ba64cc698441d398ddbb105c07dae81)\-tuple ![{\displaystyle L=(X_{1},\ldots ,X_{k},\mathrm {graph} (L)),\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/b12edf6084b6ccd840e4a848fcb4f574bac7ecf1) where ![{\displaystyle \mathrm {graph} (L)\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/fad63eb0960a2684772975812c36b51c7b7c72e7) is a subset of the cartesian product ![{\displaystyle X_{1}\times \ldots \times X_{k}~\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/cafd7c1c62729e94ba5fa912e165f1cfa6428f35) called the *graph* of ![{\displaystyle L.\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/448172ce880edc95a16a60d13b88c26b1d6ebc72)

Elements of a relation are sometimes denoted by using boldface characters, for example, the constant element ![{\displaystyle \mathbf {a} =(a_{1},\ldots ,a_{k})\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/10f2b48e7fdf0f833658247e57be65a1e59eee80) or the variable element ![{\displaystyle \mathbf {x} =(x_{1},\ldots ,x_{k}).\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/746993e1fbf8e9b9c852a9e3d877f255387c8952)

A statement of the form “![{\displaystyle \mathbf {a} \!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/1d2163528592e104955c0c8a85016a0d81ac72be) is in the relation ![{\displaystyle L\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/37882cf02e7ca89ce14308143da8dca3265af14a)” is taken to mean that ![{\displaystyle \mathbf {a} \!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/1d2163528592e104955c0c8a85016a0d81ac72be) is in ![{\displaystyle L\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/37882cf02e7ca89ce14308143da8dca3265af14a) under the first definition and that ![{\displaystyle \mathbf {a} \!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/1d2163528592e104955c0c8a85016a0d81ac72be) is in ![{\displaystyle \mathrm {graph} (L)\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/fad63eb0960a2684772975812c36b51c7b7c72e7) under the second definition.

The following considerations apply under either definition:

If ![{\displaystyle L\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/37882cf02e7ca89ce14308143da8dca3265af14a) is a relation over the domains ![{\displaystyle X_{1},\ldots ,X_{k},\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/aa16b8c068b8c26ee87d2913d83034bccf65afa4) it is conventional to consider a sequence of terms called *variables*, ![{\displaystyle x_{1},\ldots ,x_{k},\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/d93058dbcebf2a69ad2f5db6e8444ad1f7adf1f7) that are said to *range over* the respective domains.

A *[boolean domain][9]* ![{\displaystyle \mathbb {B} \!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/6b139479c8d0103e8ac96970aaa2e6865c374d8f) is a generic 2-element set, say, ![{\displaystyle \mathbb {B} =\{0,1\},\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/cf4949c7cf5dd41c51208ad9ebba6ea13f510169) whose elements are interpreted as logical values, typically ![{\displaystyle 0=\mathrm {false} \!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/5ad54850632c66eaa7fe3ad2ed6cde66ce056431) and ![{\displaystyle 1=\mathrm {true} .\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/bbfa30264df127f0872b7d593dd2e706b9435864)

The *characteristic function* of the relation ![{\displaystyle L,\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/14bf2adfe083a7ebf944d5ea5976535b38e67dd3) written ![{\displaystyle f_{L}\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/4330e5d8612de32371e8d9d4dcb411d4c3ac4195) or ![{\displaystyle \chi (L),\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/c88fce506d27b892d774a9b2f2585d61dc6bb8a8) is the [boolean-valued function][10] ![{\displaystyle f_{L}:X_{1}\times \ldots \times X_{k}\to \mathbb {B} ,\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/290a76b9ff71738721c505a8202c8b53294c3bae) defined in such a way that ![{\displaystyle f_{L}(\mathbf {x} )=1\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/4187e73eed2a4ee15adf7a2697edba94e8b3afdc) just in case the ![{\displaystyle k\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/b9e7b9748ec995a3321e07ce3b729e64cd688786)\-tuple ![{\displaystyle \mathbf {x} =(x_{1},\ldots ,x_{k})\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/c4c863448a25433dacfa543a9ba1634e382c4ba6) is in the relation ![{\displaystyle L.\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/448172ce880edc95a16a60d13b88c26b1d6ebc72)  The characteristic function of a relation may also be called its *indicator function*, especially in probabilistic and statistical contexts.

It is conventional in applied mathematics, computer science, and statistics to refer to a boolean-valued function like ![{\displaystyle f_{L}\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/4330e5d8612de32371e8d9d4dcb411d4c3ac4195) as a ![{\displaystyle k\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/b9e7b9748ec995a3321e07ce3b729e64cd688786)\-place *predicate*.  From the more abstract viewpoints of formal logic and model theory, the relation ![{\displaystyle L\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/37882cf02e7ca89ce14308143da8dca3265af14a) is seen as constituting a *logical model* or a *relational structure* that serves as one of many possible interpretations of a corresponding ![{\displaystyle k\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/b9e7b9748ec995a3321e07ce3b729e64cd688786)\-place *predicate symbol*, as that term is used in *predicate calculus*.

Due to the convergence of many traditions of study, there are wide variations in the language used to describe relations.  The *extensional* approach presented in this article treats a relation as the set-theoretic *extension* of a relational concept or term.  An alternative, *intensional approach* reserves the term *relation* to the corresponding logical entity, either the *logical comprehension*, which is the totality of *intensions* or abstract *properties* that all the elements of the extensional relation have in common, or else the symbols that are taken to denote those elements and intensions.

## Example 2. Coplanarity\[[edit][11] | [edit source][12]\]

For lines ![{\displaystyle \ell \!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/34478f38cd5acf4acd4b9a3a5aa0e82c557a0afc) in three-dimensional space, there is a triadic relation picking out the triples of lines that are coplanar.  This does not reduce to the dyadic relation of coplanarity between pairs of lines.

In other words, writing ![{\displaystyle P(\ell ,m,n)\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/964c03089d514f10eef1bbb3a9bff12d107f07a8) when the lines ![{\displaystyle \ell ,m,n\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/854bce0f745c9d1a70854441efbe239ea4d0b06c) lie in a plane, and ![{\displaystyle Q(\ell ,m)\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/048f3a468da4b03cbf13e244b9c8755c4ec5baf7) for the binary relation, it is not true that ![{\displaystyle Q(\ell ,m),\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/7b9fcd97c7db8803de46f8b2b9877f838be33e0e) ![{\displaystyle Q(m,n),\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/c145a05fbe0f6300e21c5c15c63c2f8a51581abf) and ![{\displaystyle Q(n,\ell )\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/1e2a4b96f8d6f128fa566e29a45f2944d5bc2b91) together imply ![{\displaystyle P(\ell ,m,n),\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/903c4d9354d24bb95a7f8e73d448c0ea85f961fc) although the converse is certainly true:  any two of three coplanar lines are necessarily coplanar.  There are two geometrical reasons for this.

In one case, for example taking the ![{\displaystyle x\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/13b85d29899b2b2e4931388408d51f4fb086e7ec)\-axis, ![{\displaystyle y\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/d87c11b926dd5c0bb5b20c5548b08715be57619a)\-axis, and ![{\displaystyle z\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/a8d8b971113693bf55969f3fcab9409dc065f8a3)\-axis, the three lines are concurrent, that is, they intersect at a single point.  In another case, ![{\displaystyle \ell ,m,n\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/854bce0f745c9d1a70854441efbe239ea4d0b06c) can be three edges of an infinite triangular prism.

What is true is that if each pair of lines intersects, and the points of intersection are distinct, then pairwise coplanarity implies coplanarity of the triple.

## \[[edit][13] | [edit source][14]\]

Relations are classified by the number of sets in the cartesian product, in other words, the number of places or terms in the relational expression:

Relations with more than five terms are usually referred to as ![{\displaystyle k\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/b9e7b9748ec995a3321e07ce3b729e64cd688786)\-adic or ![{\displaystyle k\!}](https://wikimedia.org/api/rest_v1/media/math/render/svg/b9e7b9748ec995a3321e07ce3b729e64cd688786)\-ary, for example, a 6-adic, 6-ary, or hexadic relation.

## References\[[edit][15] | [edit source][16]\]

-   [Peirce, C.S.][17] (1870), “Description of a Notation for the Logic of Relatives, Resulting from an Amplification of the Conceptions of Boole's Calculus of Logic”, *Memoirs of the American Academy of Arts and Sciences* 9, 317–378, 1870. Reprinted, *Collected Papers* CP 3.45–149, *Chronological Edition* CE 2, 359–429.

-   Ulam, S.M., and Bednarek, A.R. (1990), “On the Theory of Relational Structures and Schemata for Parallel Computation”, pp. 477–508 in A.R. Bednarek and Françoise Ulam (eds.), *Analogies Between Analogies : The Mathematical Reports of S.M. Ulam and His Los Alamos Collaborators*, University of California Press, Berkeley, CA.

## Bibliography\[[edit][18] | [edit source][19]\]

-   Bourbaki, N. (1994), *Elements of the History of Mathematics*, John Meldrum (trans.), Springer-Verlag, Berlin, Germany.

-   Halmos, P.R. (1960), *Naive Set Theory*, D. Van Nostrand Company, Princeton, NJ.

-   Lawvere, F.W., and Rosebrugh, R. (2003), *Sets for Mathematics*, Cambridge University Press, Cambridge, UK.

-   Maddux, R.D. (2006), *Relation Algebras*, vol. 150 in Studies in Logic and the Foundations of Mathematics, Elsevier Science.

-   Mili, A., Desharnais, J., Mili, F., with Frappier, M. (1994), *Computer Program Construction*, Oxford University Press, New York, NY.

-   Minsky, M.L., and Papert, S.A. (1969/1988), *Perceptrons, An Introduction to Computational Geometry*, MIT Press, Cambridge, MA, 1969. Expanded edition, 1988.

-   [Peirce, C.S.][20] (1984), *Writings of Charles S. Peirce : A Chronological Edition, Volume 2, 1867–1871*, Peirce Edition Project (eds.), Indiana University Press, Bloomington, IN.

-   Royce, J. (1961), *The Principles of Logic*, Philosophical Library, New York, NY.

-   Tarski, A. (1956/1983), *Logic, Semantics, Metamathematics, Papers from 1923 to 1938*, J.H. Woodger (trans.), 1st edition, Oxford University Press, 1956. 2nd edition, J. Corcoran (ed.), Hackett Publishing, Indianapolis, IN, 1983.

-   Ulam, S.M. (1990), *Analogies Between Analogies : The Mathematical Reports of S.M. Ulam and His Los Alamos Collaborators*, A.R. Bednarek and Françoise Ulam (eds.), University of California Press, Berkeley, CA.

-   Venetus, P. (1984), *Logica Parva, Translation of the 1472 Edition with Introduction and Notes*, Alan R. Perreiah (trans.), Philosophia Verlag, Munich, Germany.

## Syllabus\[[edit][21] | [edit source][22]\]

### Focal nodes\[[edit][23] | [edit source][24]\]

-   [Inquiry Live][25]
-   [Logic Live][26]

### Peer nodes\[[edit][27] | [edit source][28]\]

-   [Relation @ InterSciWiki][29]
-   [Relation @ Subject Wikis][30]
-   [Relation @ Wikiversity][31]
-   [Relation @ Wikiversity Beta][32]

### Logical operators\[[edit][33] | [edit source][34]\]

### \[[edit][35] | [edit source][36]\]

### Relational concepts\[[edit][37] | [edit source][38]\]

### Information, Inquiry\[[edit][39] | [edit source][40]\]

### Related articles\[[edit][41] | [edit source][42]\]

## Document history\[[edit][43] | [edit source][44]\]

Portions of the above article were adapted from the following sources under the [GNU Free Documentation License][45], under other applicable licenses, or by permission of the copyright holders.

-   [Relation][46], [InterSciWiki][47]
-   [Relation][48], [Wikiversity][49]
-   [Relation][50], [Wikiversity Beta][51]
-   [Relation][52], [Wikipedia][53]

[1]: https://en.wikiversity.org/wiki/Logic_Live "Logic Live"
[2]: https://en.wikiversity.org/wiki/Inquiry_Live "Inquiry Live"
[3]: https://en.wikiversity.org/w/index.php?title=Relation_(mathematics)&veaction=edit&section=1 "Edit section: Informal introduction"
[4]: https://en.wikiversity.org/w/index.php?title=Relation_(mathematics)&action=edit&section=1 "Edit section: Informal introduction"
[5]: https://en.wikiversity.org/w/index.php?title=Relation_(mathematics)&veaction=edit&section=2 "Edit section: Example 1. Divisibility"
[6]: https://en.wikiversity.org/w/index.php?title=Relation_(mathematics)&action=edit&section=2 "Edit section: Example 1. Divisibility"
[7]: https://en.wikiversity.org/w/index.php?title=Relation_(mathematics)&veaction=edit&section=3 "Edit section: Formal definitions"
[8]: https://en.wikiversity.org/w/index.php?title=Relation_(mathematics)&action=edit&section=3 "Edit section: Formal definitions"
[9]: https://en.wikiversity.org/wiki/Boolean_domain "Boolean domain"
[10]: https://en.wikiversity.org/wiki/Boolean-valued_function "Boolean-valued function"
[11]: https://en.wikiversity.org/w/index.php?title=Relation_(mathematics)&veaction=edit&section=4 "Edit section: Example 2. Coplanarity"
[12]: https://en.wikiversity.org/w/index.php?title=Relation_(mathematics)&action=edit&section=4 "Edit section: Example 2. Coplanarity"
[13]: https://en.wikiversity.org/w/index.php?title=Relation_(mathematics)&veaction=edit&section=5 "Edit section: Remarks"
[14]: https://en.wikiversity.org/w/index.php?title=Relation_(mathematics)&action=edit&section=5 "Edit section: Remarks"
[15]: https://en.wikiversity.org/w/index.php?title=Relation_(mathematics)&veaction=edit&section=6 "Edit section: References"
[16]: https://en.wikiversity.org/w/index.php?title=Relation_(mathematics)&action=edit&section=6 "Edit section: References"
[17]: https://en.wikiversity.org/w/index.php?title=Charles_Sanders_Peirce&action=edit&redlink=1 "Charles Sanders Peirce (page does not exist)"
[18]: https://en.wikiversity.org/w/index.php?title=Relation_(mathematics)&veaction=edit&section=7 "Edit section: Bibliography"
[19]: https://en.wikiversity.org/w/index.php?title=Relation_(mathematics)&action=edit&section=7 "Edit section: Bibliography"
[20]: https://en.wikiversity.org/w/index.php?title=Charles_Sanders_Peirce&action=edit&redlink=1 "Charles Sanders Peirce (page does not exist)"
[21]: https://en.wikiversity.org/w/index.php?title=Relation_(mathematics)&veaction=edit&section=8 "Edit section: Syllabus"
[22]: https://en.wikiversity.org/w/index.php?title=Relation_(mathematics)&action=edit&section=8 "Edit section: Syllabus"
[23]: https://en.wikiversity.org/w/index.php?title=Relation_(mathematics)&veaction=edit&section=9 "Edit section: Focal nodes"
[24]: https://en.wikiversity.org/w/index.php?title=Relation_(mathematics)&action=edit&section=9 "Edit section: Focal nodes"
[25]: https://en.wikiversity.org/wiki/Inquiry_Live "Inquiry Live"
[26]: https://en.wikiversity.org/wiki/Logic_Live "Logic Live"
[27]: https://en.wikiversity.org/w/index.php?title=Relation_(mathematics)&veaction=edit&section=10 "Edit section: Peer nodes"
[28]: https://en.wikiversity.org/w/index.php?title=Relation_(mathematics)&action=edit&section=10 "Edit section: Peer nodes"
[29]: http://intersci.ss.uci.edu/wiki/index.php/Relation_(mathematics)
[30]: http://ref.subwiki.org/wiki/Relation_(mathematics)
[31]: https://en.wikiversity.org/wiki/Relation_(mathematics)
[32]: https://beta.wikiversity.org/wiki/Relation_(mathematics)
[33]: https://en.wikiversity.org/w/index.php?title=Relation_(mathematics)&veaction=edit&section=11 "Edit section: Logical operators"
[34]: https://en.wikiversity.org/w/index.php?title=Relation_(mathematics)&action=edit&section=11 "Edit section: Logical operators"
[35]: https://en.wikiversity.org/w/index.php?title=Relation_(mathematics)&veaction=edit&section=12 "Edit section: Related topics"
[36]: https://en.wikiversity.org/w/index.php?title=Relation_(mathematics)&action=edit&section=12 "Edit section: Related topics"
[37]: https://en.wikiversity.org/w/index.php?title=Relation_(mathematics)&veaction=edit&section=13 "Edit section: Relational concepts"
[38]: https://en.wikiversity.org/w/index.php?title=Relation_(mathematics)&action=edit&section=13 "Edit section: Relational concepts"
[39]: https://en.wikiversity.org/w/index.php?title=Relation_(mathematics)&veaction=edit&section=14 "Edit section: Information, Inquiry"
[40]: https://en.wikiversity.org/w/index.php?title=Relation_(mathematics)&action=edit&section=14 "Edit section: Information, Inquiry"
[41]: https://en.wikiversity.org/w/index.php?title=Relation_(mathematics)&veaction=edit&section=15 "Edit section: Related articles"
[42]: https://en.wikiversity.org/w/index.php?title=Relation_(mathematics)&action=edit&section=15 "Edit section: Related articles"
[43]: https://en.wikiversity.org/w/index.php?title=Relation_(mathematics)&veaction=edit&section=16 "Edit section: Document history"
[44]: https://en.wikiversity.org/w/index.php?title=Relation_(mathematics)&action=edit&section=16 "Edit section: Document history"
[45]: https://en.wikiversity.org/wiki/GNU_Free_Documentation_License "GNU Free Documentation License"
[46]: http://intersci.ss.uci.edu/wiki/index.php/Relation_(mathematics)
[47]: http://intersci.ss.uci.edu/
[48]: https://en.wikiversity.org/wiki/Relation_(mathematics)
[49]: https://en.wikiversity.org/
[50]: https://beta.wikiversity.org/wiki/Relation_(mathematics)
[51]: https://beta.wikiversity.org/
[52]: https://en.wikipedia.org/w/index.php?title=Relation_(mathematics)&oldid=73324659
[53]: https://en.wikipedia.org/

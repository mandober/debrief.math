---
downloaded:       2022-01-14
page-url:         http://www.math.hawaii.edu/~ramsey/Logic/ForAll.html
page-title:       "For All"
article-title:    "For All"
---
# "For All"

Variables in mathematics, such as x, y, a, b, c, etc., are quantified with phrases such as
"for all x", "for any z", "for every z", "there is at least one a", etc.  "For any",
"for all", "for every" all mean the same thing:  something is true for EVERY object under
discussion, WITHOUT EXCEPTION.  If there is even one exception, the "for all" is deemed false.
Here are some examples:
[Up A Level][1]  
["And"][2]  
["And" of An "Or"][3]  
[Contrapositive][4]  
"For All"  
["If and Only If"][5]  
["If..., Then..."][6]  
["Not"][7]  
["Not" of An "And"][8]  
["Not" of An "If...Then"][9]  
["Not" of An "Or"][10]  
["Or"][11]  
["Or" of An "And"][12]  
[Short Tautologies][13]  
["There exists"][14]

Variables in mathematics, such as x, y, a, b, c, etc., are quantified with phrases such as "for all x", "for any z", "for every z", "there is at least one a", etc. "For any", "for all", "for every" all mean the same thing: something is true for EVERY object under discussion, WITHOUT EXCEPTION. If there is even one exception, the "for all" is deemed false. Here are some examples:

-   For all x, x=x. This is in fact an axiom about equality (assumed without proof as being basic to how we understand equality). Without exception, every object is equal to itself.
-   For all x and for all y, if x=y, then y=x. This is another axiom about equality. If two objects are equal, it doesn't matter which is listed first in the statement of equality.
-   For all x, for all y, and for all z, if x=y and y=z, then x=z. This is the transitive law (axiom) for equality. If x and z are both equal to y, then they are equal to each other.
-   For all real numbers x, x+0=x.
-   For all real numbers x, x\*1=x.
-   For all real numbers x, there is a real number y such that x+y=0. This sentence mixes two kinds of quantification ("for all" and "there is"). With the "for all" coming first, the y that is required to exist IS ALLOWED TO BE DIFFERENT FOR EACH x. So, this statement is true because y=-x has the property that x+y=0.
-   For all real numbers x, there is a real number y such that x\*y=1. This sentence is false, because it happens to have just one exception: when x=0, x\*y=0 for all real numbers y and there is no way to get some y so that 0\*y=1.
-   For all non-zero real numbers x, there is a real number y such that x\*y=1. This sentence is true, because for non-zero x we can let y=1/x. Note that x\*(1/x)=1.
-   In a probability space, for all events A and B, P(A cup B)=P(A)+P(B)-P(A cap B). This is a theorem of Math 371.
-   For all E>0, there is some D>0, such that if |x-c| < D then |f(x)-f(c)| < E. This sentence is equivalent to the continuity of f at c.

**Unquantified Variables**

How does one read a sentence such as "x=x", which lacks any "for all" expression and lacks any "there is" phrase? Variables that lack quantification are said to be "free". Nevertheless, they are always understood as being "for all" sentences. So, "x=x" means the same as "For all x, x=x".

Suppose someone intends to show that every set is a subset of itself. Frequently, the writer will introduce a new variable (say, W) with a sentence such as "let W be a set" and then show that W is a subset of W. The writer then stops. One way to read what the writer intended is this: W is a free variable and the writer shows W is a subset of W, without restriction on W except that it is some set. So, a rule of logic allows us to introduce the "for all" phrase (because W is free) to conclude that, for all sets W, W is a subset of itself.

**"Not" applied to a "for all" sentence**

Consider a "for all" sentence of the form "for all x, P(x)" where P(x) is some sentence about x (and whose truth value might depend upon x; for different instances of x, P(x) might have different truth values). Recall that, for this to be true, it must be true of every x without exception. So, for it to be false, one needs at least one exception. **not\[for all x, P(x)\]** means the same thing as **\[there exists at least one x such that not(P(x))\]** . There might be more than one x such that not(P(x)); there might be exactly one x such that not(P(x)). Either way, the "for all x, P(x)" is false.

**Several "for all" expressions**

Consider two sentences: "for all x, for all y, x+y=y+x" and "for all y, for all x, x+y=y+x". These mean the same thing: with repeated "for all" expressions referring to distinct variables, the order of the "for all" expressions is not important. **This is NOT true for mixtures of "for all" and "there exist" expressions.**

[1]: http://www.math.hawaii.edu/~ramsey/Logic.html
[2]: http://www.math.hawaii.edu/~ramsey/Logic/And.html
[3]: http://www.math.hawaii.edu/~ramsey/Logic/AndWithOr.html
[4]: http://www.math.hawaii.edu/~ramsey/Logic/Contrapositive.html
[5]: http://www.math.hawaii.edu/~ramsey/Logic/Iff.html
[6]: http://www.math.hawaii.edu/~ramsey/Logic/IfThen.html
[7]: http://www.math.hawaii.edu/~ramsey/Logic/Not.html
[8]: http://www.math.hawaii.edu/~ramsey/Logic/NotAnd.html
[9]: http://www.math.hawaii.edu/~ramsey/Logic/NotIfThen.html
[10]: http://www.math.hawaii.edu/~ramsey/Logic/NotOr.html
[11]: http://www.math.hawaii.edu/~ramsey/Logic/Or.html
[12]: http://www.math.hawaii.edu/~ramsey/Logic/OrWithAnd.html
[13]: http://www.math.hawaii.edu/~ramsey/Logic/PandNotP.html
[14]: http://www.math.hawaii.edu/~ramsey/Logic/ThereIs.html

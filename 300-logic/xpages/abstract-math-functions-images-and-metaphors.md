---
downloaded:       2022-01-12
page-url:         https://web.archive.org/web/20080925185646/http://www.abstractmath.org/MM/MMImagesMetaphorsFunctions.htm#funcmathobj
page-title:       Abstract Math: Functions: Images and Metaphors
article-title:    Abstract Math: Functions: Images and Metaphors
---
# Abstract Math: Functions: Images and Metaphors

The Wayback Machine - https://web.archive.org/web/20080925185646/http://www.abstractmath.org:80/MM/MMImagesMetaphorsFunctions.htm
The Wayback Machine - https://web.archive.org/web/20080925185646/http://www.abstractmath.org:80/MM/MMImagesMetaphorsFunctions.htm

Posted 16 September 2008

FUNCTIONS: IMAGES AND METAPHORS

#### Contents

[Math object][1]

[Expression to evaluate][2]

[Process][3]

[Graph][4]

[Table of values][5]

[Dependency relation][6]

[Transformer][7]

[Algorithm][8]

[Relocator][9]

[Map][10]

[Point in a function space][11]

Most basic mental representation: A function is a [mathematical object][12]. 

**You must think of functions as [math objects][13] when you are taking the** [rigorous view][14]**, which happens specificially when you are trying to prove something about the function****.** 

#### **Remarks**

**These remarks are intended to raise your consciousness about the possibilities for** **functions as objects****.  (Read [this][15], too.)** The [function][16]  defined by  is an example . ([See its graph.][17])  Its value can be computed at many different numbers but it is a **single, static math object.**

¨ **As with any math object****,** **you can apply operators to the function.** You can **find its derivative**.  You can **integrate it.** **But there are plenty of functions you can’t differentiate or integrate.** 

¨ Like all math objects, functions have **properties.** **The function defined by**  is periodic with period , meaning that for any *x*, .  Another property is that it is bounded by the horizontal lines *y* \= 1 and *y =* 3. 

¨ As a math object, a function can be the element of a set, for example of a [function space][18].  As such it is convenient to think of it as a **point in the space**.  There are many different kinds of function spaces. 

Mental representation: A function is an expression (or formula) to evaluate.

**The** **formula**  **of the function** **f** **[above][19]** allows **you to compute its value at any** **x** **easily.  But** **its formula is not the function.** **And not every function has a formula., for example the word length function or the** **n****th prime function.  (There are** **programs** **that can calculate those functions, but programs are not usually called expressions or formulas.)**

Function-as-expression is the image that motivates using the [defining expression as the name of a function][20], as in  “the derivative of  is  ” .   This works well for many functions studied in calculus.

Good:  The expression can tell you properties of the function in a succinct way.  For example, you can tell by looking at the expression that  is going to be a parabola with a minimum and arms pointing upwards.  You can tell that  is defined for all real *x* and that  is not.  The expression , studied in the [zoom and chunk chapter][21], requires a bit of work to understand it, but, as I showed in that chapter, with work you can figure out quite a lot about it. 

Bad:  Some expressions are so complicated it is hard to analyze them.   The expression

  

is difficult because you can’t glance at it and see where its roots are.  (The chapter on [derivatives][22] shows a graph of this function.)  Nevertheless, it is a fifth degree polynomial, so you know that it is unbounded in both directions.

Bad: **Many functions cannot be given by expressions**, for example the [word length function][23] and the *[nth prime function][24]*.   The [finite function][25] **can** **be given by the expression**  **for**  but the function is defined for only four inputs (although of course the **expression** is defined for all real numbers) so it is **much** easier to see what it is like from the [table.][26]

**It is useful to think of calculus-type functions as defined by expressions**

**but don’t automatically look for expressions for a function in general.** 

Mental representation: A function is the process used to evaluate it at an input

### Example

When you think of the function *f* defined by , your concern may be to know how to find its value at a given *x.* There are various processes for doing this, listed below.  Method a) is what most people would use for this function.

a) You can do it in your head:  Multiply *x* by 2, then add 2 to the result.  Or, since , you could add 1 to *x*, then multiply the result by 2. 

b) You can punch buttons on your calculator:  Put in the value for *x*, multiply it by 2, then add 2 to the result.  Or you could put in the value for *x*, add 1, then multiply the result by 2.

c) You could look at a graph for the function that you created using some program, and measure the *y* value for the given *x* value.

d) You could write a program in some computer language that would compute the function.

### Example

If you were faced with the function  you would probably punch buttons on your calculator, since it is difficult to calculate sin *x* in your head for most values of *x.* But for example if , you know that , so in that case you could do it in your head. 

**The computational process is not the same thing as the function.  
There may be many ways to compute the value of a function.**

### Example

Even functions that don’t have formulas may still be computable using some process.  The *[nth prime function][27]* can be computed at *n* by finding the first prime, finding the second prime, and so on until you get to *n.* Of course this is ridiculously tedious.  You can also evaluate it on a computer, for example in Mathematica or Maple. 

### Example

A function defined by a [table][28] has a process for computing a value, too:  Look it up in the table!

### Example

Edited to here

For a real function of one variable picturing its graph is an extraordinarily useful help in understanding it.   **The** **graph** **of**  **(part of which is shown at the right) suggests properties that it might have, such as where its zeroes are.** **But its graph is not the function.** **And there are many functions whose graph you cannot draw in any reasonable way.** 

Function as a **dependency relation**. This is the metaphor behind such descriptions as “let *x* depend smoothly on *t*”. It is related to the graph point of view, but may not carry an explicit picture; indeed, an explicit picture may be impossible.

Function as **transformer,** that takes an [object][29] and turns it into another object. In this picture, the function transforms 2 into 8. This is often explicitly expressed as a “black box” interpretation, meaning that **all that matters is input and output** and not how the output is found.. This point of view is revealed by such language as “ 2 becomes 8 under *F*”.

Function as [algorithm][30] or **set of rules** that tell you how to take an input and convert it into an output. This is a [metaphor][31] related to those of function as expression and as transformer, but the actual process is implicit in the expression view and hidden in the transformer (black box) view. Spell this out

Function as **relocator**. In this version, the function  moves the point at 2 over to the location labeled 8. This is the “alibi” interpretation. It is revealed by such language as “ *F* takes 2 to 8”.

**Function as map is one of the most powerful [metaphors][32] in mathematics**.

It takes the point of view that the function  renames the point labeled 2 as 8. A clearer picture of a function as a map is given by some function that maps the unit circle onto, say, an ellipse in the plane. The ellipse is a map of the unit circle in the same way that a map of Ohio has a point corresponding to each point in the actual state of Ohio (and preserving shapes in some approximate way). The point on the map labeled “Oberlin”, for example, has been renamed “Oberlin”.

[1]: https://web.archive.org/web/20080925185646/http://www.abstractmath.org/MM/MMImagesMetaphorsFunctions.htm#_Toc193703318
[2]: https://web.archive.org/web/20080925185646/http://www.abstractmath.org/MM/MMImagesMetaphorsFunctions.htm#_Toc193703319
[3]: https://web.archive.org/web/20080925185646/http://www.abstractmath.org/MM/MMImagesMetaphorsFunctions.htm#_Toc193703320
[4]: https://web.archive.org/web/20080925185646/http://www.abstractmath.org/MM/MMImagesMetaphorsFunctions.htm#_Toc193703321
[5]: https://web.archive.org/web/20080925185646/http://www.abstractmath.org/MM/MMImagesMetaphorsFunctions.htm#_Toc193703322
[6]: https://web.archive.org/web/20080925185646/http://www.abstractmath.org/MM/MMImagesMetaphorsFunctions.htm#_Toc193703323
[7]: https://web.archive.org/web/20080925185646/http://www.abstractmath.org/MM/MMImagesMetaphorsFunctions.htm#_Toc193703324
[8]: https://web.archive.org/web/20080925185646/http://www.abstractmath.org/MM/MMImagesMetaphorsFunctions.htm#_Toc193703325
[9]: https://web.archive.org/web/20080925185646/http://www.abstractmath.org/MM/MMImagesMetaphorsFunctions.htm#_Toc193703326
[10]: https://web.archive.org/web/20080925185646/http://www.abstractmath.org/MM/MMImagesMetaphorsFunctions.htm#_Toc193703327
[11]: https://web.archive.org/web/20080925185646/http://www.abstractmath.org/MM/MMImagesMetaphorsFunctions.htm#_Toc193703328
[12]: https://web.archive.org/web/20080925185646/http://www.abstractmath.org/MM/MMMathObj.htm
[13]: https://web.archive.org/web/20080925185646/http://www.abstractmath.org/MM/MMMathObj.htm
[14]: https://web.archive.org/web/20080925185646/http://www.abstractmath.org/MM/MMImagesMetaphors.htm#rigorousview
[15]: https://web.archive.org/web/20080925185646/http://www.abstractmath.org/MM/MMFuncExamples.htm#consciousnessraising
[16]: https://web.archive.org/web/20080925185646/http://www.abstractmath.org/MM/MMFunctions.htm
[17]: https://web.archive.org/web/20080925185646/http://www.abstractmath.org/MM/MMImagesMetaphorsFunctions.htm#graph
[18]: https://web.archive.org/web/20080925185646/http://en.wikipedia.org/wiki/Function_space
[19]: https://web.archive.org/web/20080925185646/http://www.abstractmath.org/MM/MMImagesMetaphorsFunctions.htm#functionf
[20]: https://web.archive.org/web/20080925185646/http://www.abstractmath.org/MM/MMFuncName.htm#definingexpression
[21]: https://web.archive.org/web/20080925185646/http://www.abstractmath.org/MM/MMZoomChunk.htm#complicated
[22]: https://web.archive.org/web/20080925185646/http://www.abstractmath.org/MM/MMDerivatives.htmfifthdegreepolynomial
[23]: https://web.archive.org/web/20080925185646/http://www.abstractmath.org/MM/MMFunctions.htm#wordlength
[24]: https://web.archive.org/web/20080925185646/http://www.abstractmath.org/MM/MMFunctions.htm#nthprime
[25]: https://web.archive.org/web/20080925185646/http://www.abstractmath.org/MM/MMFunctions.htm#finite
[26]: https://web.archive.org/web/20080925185646/http://www.abstractmath.org/MM/MMFunctions.htm#table
[27]: https://web.archive.org/web/20080925185646/http://www.abstractmath.org/MM/MMFuncExamples.htm#nthprime
[28]: https://web.archive.org/web/20080925185646/http://www.abstractmath.org/MM/MMImagesMetaphorsFunctions.htm#tableofvalues
[29]: https://web.archive.org/web/20080925185646/http://www.abstractmath.org/MM/MMMathObj.htm
[30]: https://web.archive.org/web/20080925185646/http://www.abstractmath.org/MM/MMGlossaryA.htm#algorithm
[31]: https://web.archive.org/web/20080925185646/http://www.abstractmath.org/MM/MMImagesMetaphors.htm#metaphor
[32]: https://web.archive.org/web/20080925185646/http://www.abstractmath.org/MM/HB/hb.html#metaphor

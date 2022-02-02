---
downloaded:       2021-12-21
page-url:         https://www.eetimes.com/logic-101-part-3-reed-muller-logic/
page-title:       EETimes - Logic 101 - Part 3 - Reed-Muller Logic
article-title:    EETimes - Logic 101 - Part 3 - Reed-Muller Logic
---
# EETimes - Logic 101 - Part 3 - Reed-Muller Logic

As opposed to using conventional logic, it may be more appropriate to implement a function in a form known as Reed-Muller logic, which is based on XORs and XNORs.
**Editors Note:** This is the third in a four-part mini-series on different ways of looking at logical representations. This little scamp is abstracted from the book [Bebop to the Boolean Boogie (An Unconventional Guide to Electronics)][1] with the kind permission of the publisher. The topics in this mini-series are as follows:

[Part 1 – Assertion-Level Logic][2]  
[Part 2 – Positive vs Negative Logic][3]  
**Part 3 – Reed-Müller Logic**  
[Part 4 – Gray Codes][4]

---

Some digital functions can be difficult to optimize if they are represented in the conventional sum-of-products or product-of-sums forms, which are based on ANDs, ORs, NANDs, NORs, and NOTs. In certain cases, it may be more appropriate to implement a [function][5] in a form known as Reed-Müller logic, which is based on XORs and XNORs.

One indication as to whether a function is suitable for the Reed-Müller form of implementation is if that function's Karnaugh Map displays a checkerboard pattern of 0s and 1s. Consider a familiar two-input function as shown in *Fig 1* (note that '&' represents a logical AND, '|' a logical OR, '^' an XOR, and '!' a negation or NOT function).

  
*1\. Two-input function suitable for a Reed-Müller implementation.*

Since the above truth [table][6] is easily recognizable as being that for an XOR function, it comes as no great surprise to find that implementing it as a single XOR gate may be preferable to an implementation based on multiple AND, OR and NOT gates. A similar checkerboard pattern may apply to a three-input function (*Fig 2* ).

  
*2\. Three-input function suitable for a Reed-Müller implementation.*

As XORs are both commutative \[for example (a ^ b) = (b ^ a)\] and associative \[for example (a ^ b) ^ c = a ^ (b ^ c)\], it doesn't matter which combinations of inputs are applied to the individual gates. The checkerboard pattern for a four-input function continues the theme (*Fig 3* ).

  
*3\. Four-input function suitable for a Reed-Müller implementation.*

Larger checkerboard patterns involving groups of 0s and 1s also indicate functions suitable for a Reed-Müller implementation (*Fig 4* ).

  
*4\. Additional functions suitable for a Reed-Müller implementation.*

Once you have recognized a checkerboard pattern, there is a quick “rule of thumb” for determining the variables to be used in the Reed-Müller implementation. Select any group of 0s or 1s and identify the significant and redundant variables, and then simply XOR the significant variables together (the significant variables are those whose values are the same for all of the boxes forming the group, while the redundant variables are those whose values vary between boxes).

As all of the checkerboard patterns shown in the above illustrations include a logic 0 in the box in the upper left corner (corresponding to all of the inputs being logic 0), the resulting Reed-Müller implementations can be realized using only XORs. However, any pair of XORs may be replaced with XNORs, the only requirement being that there is an even number of XNORs.

Alternatively, if the checkerboard pattern includes a logic 1 in the box in the upper left corner, the Reed-Müller implementation must contain an odd number of XNORs. Once again, it does not matter which combinations of inputs are applied to the individual XORs and XNORs.

Although these examples provide a very limited introduction to the concept of Reed-Müller logic, checkerboard Karnaugh Map patterns are easy to recognize and appear surprisingly often. Reed-Müller implementations are often appropriate for circuits performing arithmetic or encoding functions (see also *Part 4* of this mini-series).

***Clive “Max” Maxfield** is president of [][7]*[TechBites Interactive*, a marketing consultancy firm specializing in high technology. Max is the author and co-author of a number of books, including*][8] *[][9]* [Bebop to the Boolean Boogie (An Unconventional Guide to Electronics)*,*][10] *[][11]* [The Design Warrior's Guide to FPGAs (Devices, Tools, and Flows)*, and*][12] *[][13]* [How Computers Do Math *featuring the pedagogical and phantasmagorical virtual*][14] *[][15]* [DIY Calculator*.*][16]

[*

Widely regarded as being an expert in all aspects of computing and electronics (at least by his mother), Max was once referred to as “an industry notable” and a “semiconductor design expert” by someone famous who wasn't prompted, coerced, or remunerated in any way. Max can be reached at

*

.

][17]

[1]: http://www.amazon.com/gp/product/0750675438
[2]: http://www.pldesignline.com/howto/193500546
[3]: http://www.pldesignline.com/howto/194900015
[4]: http://www.pldesignline.com/howto/196604078
[5]: http://www.pldesignline.com/encyclopedia/defineterm.jhtml?term=function&x=&y=
[6]: http://www.pldesignline.com/encyclopedia/defineterm.jhtml?term=table&x=&y=
[7]: http://www.techbites.com/
[8]: http://www.techbites.com/
[9]: http://www.amazon.com/gp/product/0750675438
[10]: http://www.amazon.com/gp/product/0750675438
[11]: http://www.amazon.com/gp/product/0750676043
[12]: http://www.amazon.com/gp/product/0750676043
[13]: http://www.amazon.com/gp/product/0471732788
[14]: http://www.amazon.com/gp/product/0471732788
[15]: http://www.diycalculator.com/
[16]: http://www.diycalculator.com/
[17]: http://www.diycalculator.com/

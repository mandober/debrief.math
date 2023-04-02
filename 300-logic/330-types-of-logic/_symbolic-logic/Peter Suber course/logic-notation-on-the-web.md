---
downloaded:       2022-06-20
page-url:         https://web.archive.org/web/19990420081726/http://www.earlham.edu/~peters/writing/logicsym.htm
article-title:    Logic Notation on the Web
---
# Logic Notation on the Web
The Wayback Machine - https://web.archive.org/web/19990420081726/http://www.earlham.edu:80/%7Epeters/writing/logicsym.htm

This is a chart of the Adobe Symbol Font:

Logicians should be satisfied if the characters with a yellow background are supported in HTML. (Symbols with a white background have long been supported by HTML or are not whole "characters".)

This hope is now realized with [HTML 4.0][1]. See Alan Wood's excellent [guide to the symbols][2] available in HTML 4.0. So now energy must be shifted to Netscape and Microsoft. When will their browsers support this advance?

It's not enough that your personal browser support HTML 4.0. Your readers' browsers must do so as well. This day may be long in coming.

Until then, you can get all the symbols in yellow above if you specify the **Symbol font** in an HTML tag. For example, this code

p <font face="Symbol">&#201;</font> q

produces this output

p É q

Your reader must have the Symbol font installed, but this is assured for nearly all Windows users. The results are iffy for Mac and UNIX users. For a helpful table showing which codes produce which symbols, see Alan Wood's [guide to the Symbol font][3].

Since most users can use one or both of the methods above, and get elegant, searchable text, it is no longer necessary to use GIFs or other image files for individual symbols. I plan to convert all my files from GIF symbols to Symbol font text symbols the next chance I get. (In the case of my logic course files, this means when I next teach the courses.)

---

> **What follows is the version of this page I had online before HTML 4.0 was announced. I no longer support or update it, but I retain it here for the minority of users for whom the methods above will not work.**

---

So far HTML does not support most of the symbols that make up standard logic notation. I'd like to see this changed. While I don't detect much of a movement for this change, here are my notes in case others wish to help.

**Relevant links**

-   One place to start is the page on [Z Notation][4] and its [proposed HTML+ extensions][5].
-   [Unicode][6] includes logic notation, but it will be some time before Unicode replaces ASCII or before HTML supports every character in Unicode.
-   HTML and Unicode standards are both set by the [International Standards Organization (ISO)][7].
-   If you get serious about this campaign, then you'll want to study the [Internet Standards Process][8].
-   The latest standard of HTML is [version 4.0][9]. It is not yet supported by mainstream browsers, but it does support a large number of [logic and mathematics symbols][10].
-   The [World Wide Web Consortium math page][11] is a good guide to efforts for putting mathematics on a web page, including some I don't list here (because they are multiplying very quickly).
-   The two most promising techniques for inserting mathematics notation into your web pages seem to be the MINSE Project and WebEQ. Both are capable of inserting images of complex mathematical equations into your web pages, and hence may be overkill if you only want a logic symbol here and there.
    -   [**The MINSE Project**][12], developed by a Canadian programmer named Ka-Ping Yee. MINSE stands for "Medium-Independent Notation for Structured Expressions". Essentially it is a macro language outside the HTML standard which renders mathematical expressions as graphics, or as text, or even as audio. Macro scripts are processed by a mediator service (a CGI script on a remote server), which is free of charge for individuals and educational institutions. It works with all web browsers, and neither the page author nor reader needs special software.
    -   [**WebEQ**][13], developed by [The Geometry Center][14]. WebEQ uses 100% pure Java to create symbols or equations for your pages. You can write the applet code yourself of use a WebEQ auxilliary program with a simpler input language to do the work for you. If you have a Java-enabled browser, see [this example][15] of the applet code and the resulting notation image. (Note that the National Science Foundation, which funds The Geometry Center, had delayed plans to withdraw funding and shut the Center down. If you would like to follow up, [read more about it.][16])
-   IBM is giving away a browser plug-in called [techexplorer][17], which renders TeX and LaTeX mark-up codes into graphic symbols.
-   For other techniques for putting mathematical notation on a web page see [Math and Hypertext][18] and [Math and HTML][19].
-   [On-line glossary of technical notation][20]. Not really relevant to this project, but interesting. If you encounter a strange symbol and want to know what it means, use this glossary. From [MathPro Press][21].

**Logic symbols already supported by HTML**

Apart from ordinary keyboard symbols sometimes used in logic, such as "**~**" for negation, "**&**" for conjunction, "**v**" for disjunction, "**-->**" for material implication, **<-->** for material equivalence, "**|**" for the Sheffer stroke, the following special characters are supported by HTML:

| Description | Symbol | HTML code |
| --- | --- | --- |
| Alternate negation sign | ¬ | &#172 |
| Raised conjunction dot | · | &#183 |
| Null set | Ø | &#216 |

**Logic symbol GIFs**

Ira Carmel and I collaborated to make the following logic symbol GIFs for use on the web. (Ira did the hard part.) Here they are, for the world to steal.

They were designed to fit nicely with a 12 point font. But remember that even if you elect to present your page with a 12 point font, your reader may override your choice with his or her browser settings. So if you use these GIFs in a text file, you might want to include a warning that they appear at their best with a 12 point font.

| Description | Symbol |
| --- | --- |
| Disjunction |  |
| Material implication |  |
| Material equivalence |  |
| Negation of material equivalence |  |
| Negation of equality |  |
| Therefore |  |
| Semantic consequence |  |
| Syntactic consequence |  |
| Existential quantifier |  |
| Universal quantifier |  |
| Set membership |  |
| Denial of set membership |  |
| Set intersection |  |
| Set union |  |
| Subset |  |
| Proper subset |  |
| One-to-one correspondence |  |
| Aleph |  |
| Gamma |  |
| Delta |  |
| Necessity |  |
| Possibility |  |

Thank you, Ira!

> For examples of files in which I use these GIFs, see nearly any of the electronic hand-outs for my courses on [Symbolic Logic][22] (elementary) or [Logical Systems][23] (advanced).

**Other Logic and Mathematics Symbol GIFs**

-   [Logical Symbols][24]. From Uwe Wiedemann. Most of his are better than most of mine (above).
-   [Mathematical icons][25]. Character-sized icons for many common symbols.
-   [Mathematical Symbols for the HTML Environment][26]. From Michael Hugh Knowles. If you give up using the real thing, these ASCII kludges are widely understood by other mathematicians. But why give up?

If you have any news or relevant links on this front, please let me know.

[1]: https://web.archive.org/web/19990420081726/http://www.w3.org/tr/wd-html40-970708/cover.html
[2]: https://web.archive.org/web/19990420081726/http://www.hclrss.demon.co.uk/ent4_frame.html
[3]: https://web.archive.org/web/19990420081726/http://www.hclrss.demon.co.uk/symbol.html
[4]: https://web.archive.org/web/19990420081726/http://www.comlab.ox.ac.uk/archive/z.html
[5]: https://web.archive.org/web/19990420081726/http://www.comlab.ox.ac.uk/archive/z/html-z.html
[6]: https://web.archive.org/web/19990420081726/http://www.stonehand.com/unicode.html
[7]: https://web.archive.org/web/19990420081726/http://www.iso.ch/
[8]: https://web.archive.org/web/19990420081726/http://www.ietf.cnri.reston.va.us/structure.html
[9]: https://web.archive.org/web/19990420081726/http://www.w3.org/tr/wd-html40-970708/cover.html
[10]: https://web.archive.org/web/19990420081726/http://www.w3.org/tr/wd-html40-970708/sgml/entities.html
[11]: https://web.archive.org/web/19990420081726/http://www.w3.org/pub/WWW/MarkUp/Math/
[12]: https://web.archive.org/web/19990420081726/http://www.lfw.org/math/top.html
[13]: https://web.archive.org/web/19990420081726/http://www.geom.umn.edu/software/WebEQ/
[14]: https://web.archive.org/web/19990420081726/http://www.geom.umn.edu/
[15]: https://web.archive.org/web/19990420081726/http://www.geom.umn.edu/software/webeq/2.0/docs/overview.html
[16]: https://web.archive.org/web/19990420081726/http://www.geom.umn.edu/admin/shutdown
[17]: https://web.archive.org/web/19990420081726/http://www.ics.raleigh.ibm.com/ics/techexp.htm
[18]: https://web.archive.org/web/19990420081726/http://match.stanford.edu/bump/mathhtml.html
[19]: https://web.archive.org/web/19990420081726/http://home1.gte.net/paulp/math-www.htm
[20]: https://web.archive.org/web/19990420081726/http://www.mathpro.com/math/notation/notation.html
[21]: https://web.archive.org/web/19990420081726/http://www.mathpro.com/math/mathpro.html
[22]: https://web.archive.org/web/19990420081726/http://www.earlham.edu/~peters/courses/log/loghome.htm
[23]: https://web.archive.org/web/19990420081726/http://www.earlham.edu/~peters/courses/logsys/lshome.htm
[24]: https://web.archive.org/web/19990420081726/http://www.uni-leipzig.de/~logik/wiedemann/sym/index.htm
[25]: https://web.archive.org/web/19990420081726/http://www.bsdi.com/antbin/list_icons?dir=appl/math/
[26]: https://web.archive.org/web/19990420081726/http://www.paias.com/symbols.htm

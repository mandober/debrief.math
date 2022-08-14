---
downloaded:       2021-12-18
page-url:         https://en.wikipedia.org/wiki/Combinational_logic
page-title:       Combinational logic - Wikipedia
article-title:    Combinational logic - Wikipedia
---
# Combinational logic - Wikipedia

Not to be confused with combinatory logic, a topic in mathematical logic.
Not to be confused with [combinatory logic][1], a topic in mathematical logic.

![Automata theory.svg](https://upload.wikimedia.org/wikipedia/commons/thumb/a/a2/Automata_theory.svg/300px-Automata_theory.svg.png)

[![About this image](https://en.wikipedia.org/w/extensions/ImageMap/resources/desc-20.png?15600)][2]

Classes of automata

(Clicking on each layer gets an article on that subject)

In [automata theory][3], __combinational logic__ (also referred to as __time-independent logic__ [\[1\]][4] or __combinatorial logic__ [\[2\]][5]) is a type of [digital logic][6] which is implemented by [Boolean circuits][7], where the output is a [pure function][8] of the present input only. This is in contrast to [sequential logic][9], in which the output depends not only on the present input but also on the history of the input. In other words, sequential logic has *[memory][10]* while combinational logic does not.

Combinational logic is used in [computer][11] circuits to perform [Boolean algebra][12] on input signals and on stored data. Practical computer circuits normally contain a mixture of combinational and sequential logic. For example, the part of an [arithmetic logic unit][13], or ALU, that does mathematical calculations is constructed using combinational logic. Other circuits used in computers, such as [half adders][14], [full adders][15], [half subtractors][16], [full subtractors][17], [multiplexers][18], [demultiplexers][19], [encoders][20] and [decoders][21] are also made by using combinational logic.

Practical design of combinational logic systems may require consideration of the finite time required for practical logical elements to react to changes in their inputs. Where an output is the result of the combination of several different paths with differing numbers of switching elements, the output may momentarily change state before settling at the final state, as the changes propagate along different paths. [\[3\]][22]

## Representation\[[edit][23]\]

Combinational logic is used to build circuits that produce specified outputs from certain inputs. The construction of combinational logic is generally done using one of two methods: a sum of products, or a product of sums. Consider the following [truth table][24] :

A

B

C

Result

[Logical equivalent][25]

F

F

F

F

![{\displaystyle \neg A\wedge \neg B\wedge \neg C}](https://wikimedia.org/api/rest_v1/media/math/render/svg/ea3366317bc241ab855ef4dde1e2b44b67752214)

F

F

T

F

![{\displaystyle \neg A\wedge \neg B\wedge C}](https://wikimedia.org/api/rest_v1/media/math/render/svg/cc0192823c4c1c6d99814fcfb81b72a3a7baf0b9)

F

T

F

F

![{\displaystyle \neg A\wedge B\wedge \neg C}](https://wikimedia.org/api/rest_v1/media/math/render/svg/9ac799918933c8c8fa113708a68c8ad241d765c1)

F

T

T

F

![{\displaystyle \neg A\wedge B\wedge C}](https://wikimedia.org/api/rest_v1/media/math/render/svg/51741aa916b1a30550ad5a4206d6edbd80cf5886)

T

F

F

T

![{\displaystyle A\wedge \neg B\wedge \neg C}](https://wikimedia.org/api/rest_v1/media/math/render/svg/cc694d5e5279bb4c0c041728840134fe5a1edb91)

T

F

T

F

![{\displaystyle A\wedge \neg B\wedge C}](https://wikimedia.org/api/rest_v1/media/math/render/svg/445c44f876bd3fe874f0e76d196e2347166542b5)

T

T

F

F

![{\displaystyle A\wedge B\wedge \neg C}](https://wikimedia.org/api/rest_v1/media/math/render/svg/873cbfc6c53f81dd3e0d5dad4e728a2191c68283)

T

T

T

T

![{\displaystyle A\wedge B\wedge C}](https://wikimedia.org/api/rest_v1/media/math/render/svg/9f25eebe152a47bfea4a87b971a41bc3a8321f6f)

  
Using sum of products, all logical statements which yield true results are summed, giving the result:

![{\displaystyle (A\wedge \neg B\wedge \neg C)\vee (A\wedge B\wedge C)\,}](https://wikimedia.org/api/rest_v1/media/math/render/svg/a35954e5732017b9304a3b96a6ec130b16cd0a11)

Using [Boolean algebra][26], the result simplifies to the following equivalent of the truth table:

![{\displaystyle A\wedge ((\neg B\wedge \neg C)\vee (B\wedge C))\,}](https://wikimedia.org/api/rest_v1/media/math/render/svg/993e10d1e050032d9c282cf6b679c0567f860612)

## Logic formula minimization\[[edit][27]\]

Minimization (simplification) of combinational logic formulas is done using the following rules based on the [laws of Boolean algebra][28]:

![{\displaystyle {\begin{aligned}(A\vee B)\wedge (A\vee C)&=A\vee (B\wedge C)\\(A\wedge B)\vee (A\wedge C)&=A\wedge (B\vee C)\end{aligned}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/c809989f20b634cf751b0b043b526f93c503b283)

![{\displaystyle {\begin{aligned}A\vee (A\wedge B)&=A\\A\wedge (A\vee B)&=A\end{aligned}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/924933f7e4e29e1402cec732b7e985e70b206b62)

![{\displaystyle {\begin{aligned}A\vee (\lnot A\wedge B)&=A\vee B\\A\wedge (\lnot A\vee B)&=A\wedge B\end{aligned}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/17389e8768fbd6911f8101844ec633f1bf75128f)

![{\displaystyle {\begin{aligned}(A\vee B)\wedge (\lnot A\vee B)&=B\\(A\wedge B)\vee (\lnot A\wedge B)&=B\end{aligned}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/75409b71a0d386ef8aa22658cc5395c376301383)

![{\displaystyle {\begin{aligned}(A\wedge B)\vee (\lnot A\wedge C)\vee (B\wedge C)&=(A\wedge B)\vee (\lnot A\wedge C)\\(A\vee B)\wedge (\lnot A\vee C)\wedge (B\vee C)&=(A\vee B)\wedge (\lnot A\vee C)\end{aligned}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/accb90f364aaefcbdbeed46e1564e0b658f1444c)

With the use of minimization (sometimes called [logic optimization][29]), a simplified logical function or circuit may be arrived upon, and the logic [combinational circuit][30] becomes smaller, and easier to analyse, use, or build.

## See also\[[edit][31]\]

-   [Sequential logic][32]
-   [Asynchronous circuit][33]
-   [Field-programmable gate array][34]
-   [Formal verification][35]
-   [Relay logic][36]
-   [Programmable logic controller][37]
-   [Ladder logic][38]

## References\[[edit][39]\]

-   Michael Predko and Myke Predko, *Digital electronics demystified*, McGraw-Hill, 2004. [ISBN][40] [0-07-144141-7][41]

## External links\[[edit][42]\]

-   [Combinational Logic & Systems Tutorial Guide][43] by D. Belton, R. Bigwood.

[1]: https://en.wikipedia.org/wiki/Combinatory_logic "Combinatory logic"
[2]: https://en.wikipedia.org/wiki/File:Automata_theory.svg "About this image"
[3]: https://en.wikipedia.org/wiki/Automata_theory "Automata theory"
[4]: https://en.wikipedia.org/wiki/Combinational_logic#cite_note-1
[5]: https://en.wikipedia.org/wiki/Combinational_logic#cite_note-2
[6]: https://en.wikipedia.org/wiki/Digital_logic "Digital logic"
[7]: https://en.wikipedia.org/wiki/Boolean_circuit "Boolean circuit"
[8]: https://en.wikipedia.org/wiki/Pure_function "Pure function"
[9]: https://en.wikipedia.org/wiki/Sequential_logic "Sequential logic"
[10]: https://en.wikipedia.org/wiki/Computer_storage "Computer storage"
[11]: https://en.wikipedia.org/wiki/Computer "Computer"
[12]: https://en.wikipedia.org/wiki/Boolean_algebra_(logic) "Boolean algebra (logic)"
[13]: https://en.wikipedia.org/wiki/Arithmetic_logic_unit "Arithmetic logic unit"
[14]: https://en.wikipedia.org/wiki/Half_adder "Half adder"
[15]: https://en.wikipedia.org/wiki/Full_adder "Full adder"
[16]: https://en.wikipedia.org/wiki/Half_subtractor "Half subtractor"
[17]: https://en.wikipedia.org/wiki/Half_subtractor "Half subtractor"
[18]: https://en.wikipedia.org/wiki/Multiplexer "Multiplexer"
[19]: https://en.wikipedia.org/wiki/Multiplexer "Multiplexer"
[20]: https://en.wikipedia.org/wiki/Simple_encoder "Simple encoder"
[21]: https://en.wikipedia.org/wiki/Binary_decoder "Binary decoder"
[22]: https://en.wikipedia.org/wiki/Combinational_logic#cite_note-3
[23]: https://en.wikipedia.org/w/index.php?title=Combinational_logic&action=edit&section=1 "Edit section: Representation"
[24]: https://en.wikipedia.org/wiki/Truth_table "Truth table"
[25]: https://en.wikipedia.org/wiki/Logical_equivalence "Logical equivalence"
[26]: https://en.wikipedia.org/wiki/Boolean_algebra_(logic) "Boolean algebra (logic)"
[27]: https://en.wikipedia.org/w/index.php?title=Combinational_logic&action=edit&section=2 "Edit section: Logic formula minimization"
[28]: https://en.wikipedia.org/wiki/Boolean_algebra#Laws "Boolean algebra"
[29]: https://en.wikipedia.org/wiki/Logic_optimization "Logic optimization"
[30]: https://en.wikipedia.org/w/index.php?title=Combinational_circuit&action=edit&redlink=1 "Combinational circuit (page does not exist)"
[31]: https://en.wikipedia.org/w/index.php?title=Combinational_logic&action=edit&section=3 "Edit section: See also"
[32]: https://en.wikipedia.org/wiki/Sequential_logic "Sequential logic"
[33]: https://en.wikipedia.org/wiki/Asynchronous_circuit "Asynchronous circuit"
[34]: https://en.wikipedia.org/wiki/Field-programmable_gate_array "Field-programmable gate array"
[35]: https://en.wikipedia.org/wiki/Formal_verification "Formal verification"
[36]: https://en.wikipedia.org/wiki/Relay_logic "Relay logic"
[37]: https://en.wikipedia.org/wiki/Programmable_logic_controller "Programmable logic controller"
[38]: https://en.wikipedia.org/wiki/Ladder_logic "Ladder logic"
[39]: https://en.wikipedia.org/w/index.php?title=Combinational_logic&action=edit&section=4 "Edit section: References"
[40]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[41]: https://en.wikipedia.org/wiki/Special:BookSources/0-07-144141-7 "Special:BookSources/0-07-144141-7"
[42]: https://en.wikipedia.org/w/index.php?title=Combinational_logic&action=edit&section=5 "Edit section: External links"
[43]: https://web.archive.org/web/20131022174334/http://www.ee.surrey.ac.uk/Projects/Labview/combindex.html

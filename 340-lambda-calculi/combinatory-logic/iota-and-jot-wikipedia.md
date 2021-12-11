---
downloaded:       2021-11-06
page-url:         https://en.wikipedia.org/wiki/Iota_and_Jot
page-title:       Iota and Jot - Wikipedia
---
# Iota and Jot

**Iota** and **Jot** (from Greek iota `ι`, Hebrew yodh `י`, the smallest letters in those alphabets) are extremely minimalistic formal systems designed to be push the minimization even further than languages such as the lambda calculus and *SK(I) combinator calculus*. In fact, λ-calculus is quite verbose in comparision with these three, especially since the SKI combinator calculus can do without the `I` primitive (instead defining it in terms of `S` and `K`).

As programming languages, both Iota and Jot would fall in the category of Turing tarpits, which are the esoteric, usually minimalistic, languages that are nevertheless Turing-complete. Both systems were created by professor of linguistics Chris Barker in 2001, and both languages use only two symbols and have just two operations. In 2002, Barker has created *Zot*, a spiritual successor to Iota with I/O facilities.

## Universal iota

Barker's *universal iota combinator*, `ι`, is definable in terms of the λ-calculus as `λf. f S K` i.e.

`ι` = `λf. f S K` = `λf. f (λf. λg. λx. f x (g x)) (λx. λy. x)`

From this, one can recover the usual SKI expressions:
- `I` =       `ιι`
- `K` =   `ι(ι(ιι))`
- `S` = `ι(ι(ι(ιι)))`

$${\displaystyle I\,=\,(\iota \iota ),\;K\,=\,(\iota (\iota (\iota \iota ))),\;S\,=\,(\iota (\iota (\iota (\iota \iota ))))}$$

Because of its minimalism, it has influenced research concerning *Chaitin's constant*.


## Iota

Iota is the [LL(1)][39] language that [prefix orders][40] trees of the aforementioned [Universal iota][41] ι combinator leafs, [consed][42] by [function application][43] ε,

iota \= "1" | "0" iota iota

so that for example 0011011 denotes ![{\displaystyle ((\iota \iota )(\iota \iota ))}](https://wikimedia.org/api/rest_v1/media/math/render/svg/cdfce7b3f0f94be08318e1e62e959f50cc13a650), whereas 0101011 denotes ![{\displaystyle (\iota (\iota (\iota \iota )))}](https://wikimedia.org/api/rest_v1/media/math/render/svg/d21d668224940edb6d20210ca46350f66f0e97eb).

## Jot\[[edit][44]\]

Jot is the [regular language][45] consisting of all sequences of 0 and 1,

jot \= "" | jot "0" | jot "1"

The semantics is given by translation to SKI expressions. The empty string denotes ![I](https://wikimedia.org/api/rest_v1/media/math/render/svg/535ea7fc4134a31cbe2251d9d3511374bc41be9f), ![{\displaystyle w0}](https://wikimedia.org/api/rest_v1/media/math/render/svg/9521886f768d7be09ef27b543601759460f3db35) denotes ![{\displaystyle (([w]S)K)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/8afbdcf95eb67026bc35920892189a1f2ce1ebc8), where ![[w]](https://wikimedia.org/api/rest_v1/media/math/render/svg/6aa63757070b686594a5aa9b2d269156974f5324) is the translation of ![w](https://wikimedia.org/api/rest_v1/media/math/render/svg/88b1e0c8e1be5ebe69d18a8010676fa42d7961e6), and ![{\displaystyle w1}](https://wikimedia.org/api/rest_v1/media/math/render/svg/168af6c5e97c8e661a812e505fa958d139ace3e8) denotes ![{\displaystyle (S(K[w]))}](https://wikimedia.org/api/rest_v1/media/math/render/svg/920a281ce7242c294e79d3a175339bf927e3eff5).

The point of the ![{\displaystyle w1}](https://wikimedia.org/api/rest_v1/media/math/render/svg/168af6c5e97c8e661a812e505fa958d139ace3e8) case is that the translation satisfies ![{\displaystyle (([w1]A)B)=([w](AB))}](https://wikimedia.org/api/rest_v1/media/math/render/svg/bb07f4b763d15e1eb28174313fdd6f1fbcb37440) for arbitrary SKI terms ![A](https://wikimedia.org/api/rest_v1/media/math/render/svg/7daff47fa58cdfd29dc333def748ff5fa4c923e3) and ![B](https://wikimedia.org/api/rest_v1/media/math/render/svg/47136aad860d145f75f3eed3022df827cee94d7a). For example,

![{\displaystyle [w11100]=(([w1110]S)K)=(((([w111]S)K)S)K)=((([w11](SK))S)K)=(([w1]((SK)S))K)=([w](((SK)S)K))=([w]K)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/8e64ef89d19972436c73058c123803d60e0e47b3)

holds for arbitrary strings ![w](https://wikimedia.org/api/rest_v1/media/math/render/svg/88b1e0c8e1be5ebe69d18a8010676fa42d7961e6). Similarly,

![{\displaystyle [w11111000]=(((((([w11111]S)K)S)K)S)K)=([w](((((SK)S)K)S)K))=([w]S)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/33344f5fc87ce807e8849ed8741f5d54288ebc3a)

holds as well. These two examples are the base cases of the translation of arbitrary SKI terms to Jot given by Barker, making Jot a natural [Gödel numbering][46] of all [algorithms][47].

Jot is connected to Iota by the fact that ![{\displaystyle [w0]=(\iota [w])}](https://wikimedia.org/api/rest_v1/media/math/render/svg/ceea30039bcccdb4b36bb821e8f65d0f40839aac) and by using the same identities on SKI terms for obtaining the basic combinators ![K](https://wikimedia.org/api/rest_v1/media/math/render/svg/2b76fce82a62ed5461908f0dc8f037de4e3686b0) and ![S](https://wikimedia.org/api/rest_v1/media/math/render/svg/4611d85173cd3b508e67077d4a1252c9c05abca2).

## Zot\[[edit][48]\]

The Zot and Positive Zot languages command [Iota][49] [computations][50], from [inputs][51] to [outputs][52] by [continuation-passing style][53], in [syntax][54] resembling [Jot][55],

zot \= pot | ""
pot \= iot | pot iot
iot \= "0" | "1"

where 1 produces the continuation ![{\displaystyle \lambda cL.L(\lambda lR.R(\lambda r.c(lr)))}](https://wikimedia.org/api/rest_v1/media/math/render/svg/0181eef5e9edaa2eabc1814491fec21f5161909d), and 0 produces the continuation ![{\displaystyle \lambda c.c\iota }](https://wikimedia.org/api/rest_v1/media/math/render/svg/7f0bbdf20816f2ddcaf7d07f675e2c32b931b5b8), and wi consumes the final input digit i by continuing through the continuation w.

## See also\[[edit][56]\]

-   [Lambda calculus][57]
-   [Combinatory logic][58]
-   [Binary combinatory logic][59]
-   [SKI combinator calculus][60]

## References\[[edit][61]\]

## External links\[[edit][62]\]

-   [Official website][63]
-   Barker, Chris. ["Iota and Jot: the simplest languages?"][64]. *The Esoteric Programming Languages Webring*. Archived from [the original][65] on 7 May 2016. Retrieved 13 August 2004.
-   [https://esolangs.org/wiki/Iota][66]
-   [https://esolangs.org/wiki/Jot][67]
-   [https://esolangs.org/wiki/Zot][68]

[1]: https://en.wikipedia.org/wiki/Programming_paradigm "Programming paradigm"
[2]: https://en.wikipedia.org/wiki/Formal_language "Formal language"
[3]: https://en.wikipedia.org/wiki/Turing_tarpit "Turing tarpit"
[4]: https://en.wikipedia.org/wiki/Esoteric_programming_language "Esoteric programming language"
[5]: https://en.wikipedia.org/wiki/Software_design "Software design"
[6]: https://en.wikipedia.org/wiki/Chris_Barker_(linguist) "Chris Barker (linguist)"
[7]: https://en.wikipedia.org/wiki/Software_developer "Software developer"
[8]: https://en.wikipedia.org/wiki/Software_release_life_cycle "Software release life cycle"
[9]: https://en.wikipedia.org/wiki/Scheme_(programming_language) "Scheme (programming language)"
[10]: https://en.wikipedia.org/wiki/JavaScript "JavaScript"
[11]: https://en.wikipedia.org/wiki/Computing_platform "Computing platform"
[12]: https://en.wikipedia.org/wiki/Web_browser "Web browser"
[13]: https://en.wikipedia.org/wiki/Software_license
[14]: https://en.wikipedia.org/wiki/Public_domain "Public domain"
[15]: http://www.nyu.edu/projects/barker
[16]: https://en.wikipedia.org/wiki/Iota_and_Jot#Zot
[17]: https://en.wikipedia.org/wiki/Formal_language "Formal language"
[18]: https://en.wikipedia.org/wiki/Computer_science
[19]: https://en.wikipedia.org/wiki/Greek_language
[20]: https://en.wikipedia.org/wiki/Iota "Iota"
[21]: https://en.wikipedia.org/wiki/Hebrew "Hebrew"
[22]: https://en.wikipedia.org/wiki/Yodh "Yodh"
[23]: https://en.wikipedia.org/wiki/Formal_system "Formal system"
[24]: https://en.wikipedia.org/wiki/Lambda_calculus
[25]: https://en.wikipedia.org/wiki/SKI_combinator_calculus "SKI combinator calculus"
[26]: https://en.wikipedia.org/wiki/Programming_language "Programming language"
[27]: https://en.wikipedia.org/wiki/Turing_tarpit "Turing tarpit"
[28]: https://en.wikipedia.org/wiki/Esoteric_programming_language
[29]: https://en.wikipedia.org/wiki/Turing-complete "Turing-complete"
[30]: https://en.wikipedia.org/wiki/Chris_Barker_(linguist) "Chris Barker (linguist)"
[31]: https://en.wikipedia.org/wiki/Iota_and_Jot#cite_note-1
[32]: https://en.wikipedia.org/w/index.php?title=Iota_and_Jot&action=edit&section=1 "Edit section: Universal iota"
[33]: https://en.wikipedia.org/wiki/Denotational_semantics "Denotational semantics"
[34]: https://en.wikipedia.org/wiki/Lambda_calculus "Lambda calculus"
[35]: https://en.wikipedia.org/wiki/SKI_combinator_calculus#SKI_expressions "SKI combinator calculus"
[36]: https://en.wikipedia.org/wiki/Chaitin%27s_constant "Chaitin's constant"
[37]: https://en.wikipedia.org/wiki/Iota_and_Jot#cite_note-2
[38]: https://en.wikipedia.org/w/index.php?title=Iota_and_Jot&action=edit&section=2 "Edit section: Iota"
[39]: https://en.wikipedia.org/wiki/LL_parser "LL parser"
[40]: https://en.wikipedia.org/wiki/Polish_notation
[41]: https://en.wikipedia.org/wiki/Iota_and_Jot#Universal_iota
[42]: https://en.wikipedia.org/wiki/Cons "Cons"
[43]: https://en.wikipedia.org/wiki/Function_application "Function application"
[44]: https://en.wikipedia.org/w/index.php?title=Iota_and_Jot&action=edit&section=3 "Edit section: Jot"
[45]: https://en.wikipedia.org/wiki/Regular_language "Regular language"
[46]: https://en.wikipedia.org/wiki/G%C3%B6del_numbering "Gödel numbering"
[47]: https://en.wikipedia.org/wiki/Algorithm "Algorithm"
[48]: https://en.wikipedia.org/w/index.php?title=Iota_and_Jot&action=edit&section=4 "Edit section: Zot"
[49]: https://en.wikipedia.org/wiki/Iota_and_Jot#Iota
[50]: https://en.wikipedia.org/wiki/Computation "Computation"
[51]: https://en.wikipedia.org/wiki/Input_(computer_science) "Input (computer science)"
[52]: https://en.wikipedia.org/wiki/Input/output "Input/output"
[53]: https://en.wikipedia.org/wiki/Continuation-passing_style "Continuation-passing style"
[54]: https://en.wikipedia.org/wiki/Syntax "Syntax"
[55]: https://en.wikipedia.org/wiki/Iota_and_Jot#Jot
[56]: https://en.wikipedia.org/w/index.php?title=Iota_and_Jot&action=edit&section=5 "Edit section: See also"
[57]: https://en.wikipedia.org/wiki/Lambda_calculus "Lambda calculus"
[58]: https://en.wikipedia.org/wiki/Combinatory_logic "Combinatory logic"
[59]: https://en.wikipedia.org/wiki/Binary_combinatory_logic "Binary combinatory logic"
[60]: https://en.wikipedia.org/wiki/SKI_calculus "SKI calculus"
[61]: https://en.wikipedia.org/w/index.php?title=Iota_and_Jot&action=edit&section=6 "Edit section: References"
[62]: https://en.wikipedia.org/w/index.php?title=Iota_and_Jot&action=edit&section=7 "Edit section: External links"
[63]: http://www.nyu.edu/projects/barker
[64]: https://web.archive.org/web/20160823182917/http://semarch.linguistics.fas.nyu.edu/barker/Iota
[65]: https://www.nyu.edu/projects/barker/Iota/
[66]: https://esolangs.org/wiki/Iota
[67]: https://esolangs.org/wiki/Jot
[68]: https://esolangs.org/wiki/Zot

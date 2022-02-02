---
downloaded:       2021-12-17
page-url:         https://en.wikipedia.org/wiki/Causal_graph
page-title:       Causal graph - Wikipedia
article-title:    Causal graph - Wikipedia
---
# Causal graph - Wikipedia

In statistics, econometrics, epidemiology, genetics and related disciplines, causal graphs (also known as path diagrams, causal Bayesian networks or  DAGs) are probabilistic graphical models used to encode assumptions about the data-generating process.
In statistics, econometrics, epidemiology, genetics and related disciplines, __causal graphs__ (also known as [path diagrams][1], causal [Bayesian networks][2] or [DAGs][3]) are [probabilistic graphical models][4] used to encode assumptions about the data-generating process.

Causal graphs can be used for communication and for inference. As communication devices, the graphs provide formal and transparent representation of the causal assumptions that researchers may wish to convey and defend. As inference tools, the graphs enable researchers to estimate effect sizes from non-experimental data,[\[1\]][5][\[2\]][6][\[3\]][7][\[4\]][8][\[5\]][9] derive [testable][10] implications of the assumptions encoded,[\[1\]][11][\[6\]][12][\[7\]][13][\[8\]][14] test for external validity,[\[9\]][15] and manage missing data[\[10\]][16] and selection bias.[\[11\]][17]

Causal graphs were first used by the geneticist [Sewall Wright][18][\[12\]][19] under the rubric "path diagrams". They were later adopted by social scientists[\[13\]][20][\[14\]][21][\[15\]][22][\[16\]][23][\[17\]][24][\[18\]][25] and, to a lesser extent, by economists.[\[19\]][26] These models were initially confined to linear equations with fixed parameters. Modern developments have extended graphical models to non-parametric analysis, and thus achieved a generality and flexibility that has transformed causal analysis in computer science, epidemiology,[\[20\]][27] and social science.[\[21\]][28]

## Construction and terminology\[[edit][29]\]

The causal graph can be drawn in the following way. Each variable in the model has a corresponding vertex or node and an arrow is drawn from a variable *X* to a variable *Y* whenever *Y* is judged to respond to changes in *X* when all other variables are being held constant. Variables connected to *Y* through direct arrows are called *parents* of *Y*, or "direct causes of *Y*," and are denoted by *Pa(Y)*.

Causal models often include "error terms" or "omitted factors" which represent all unmeasured factors that influence a variable *Y* when *Pa(Y)* are held constant. In most cases, error terms are excluded from the graph. However, if the graph author suspects that the error terms of any two variables are dependent (e.g. the two variables have an unobserved or latent common cause) then a bidirected arc is drawn between them. Thus, the presence of latent variables is taken into account through the correlations they induce between the error terms, as represented by bidirected arcs.

## Fundamental tools\[[edit][30]\]

A fundamental tool in graphical analysis is [d-separation][31], which allows researchers to determine, by inspection, whether the causal structure implies that two sets of variables are independent given a third set. In recursive models without correlated error terms (sometimes called *Markovian*), these conditional independences represent all of the model's testable implications.[\[22\]][32]

## Example\[[edit][33]\]

Suppose we wish to estimate the effect of attending an elite college on future earnings. Simply regressing earnings on college rating will not give an unbiased estimate of the target effect because elite colleges are highly selective, and students attending them are likely to have qualifications for high-earning jobs prior to attending the school. Assuming that the causal relationships are linear, this background knowledge can be expressed in the following [structural equation model][34] (SEM) specification.

__Model 1__

![{\begin{aligned}Q_{1}&=U_{1}\\C&=a\cdot Q_{1}+U_{2}\\Q_{2}&=c\cdot C+d\cdot Q_{1}+U_{3}\\S&=b\cdot C+e\cdot Q_{2}+U_{4},\end{aligned}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/33e7a6d127e29856f1458790263110b6cd87ca89)

where ![Q_{1}](https://wikimedia.org/api/rest_v1/media/math/render/svg/a8ea6463cb36d8278ff71214fb4d13127039ae53) represents the individual's qualifications prior to college, ![Q_{2}](https://wikimedia.org/api/rest_v1/media/math/render/svg/b86e8bff64d5e62fc8f45a35875e78bc9bef74a9) represents qualifications after college, ![C](https://wikimedia.org/api/rest_v1/media/math/render/svg/4fc55753007cd3c18576f7933f6f089196732029) contains attributes representing the quality of the college attended, and ![S](https://wikimedia.org/api/rest_v1/media/math/render/svg/4611d85173cd3b508e67077d4a1252c9c05abca2) the individual's salary.

[![](https://upload.wikimedia.org/wikipedia/commons/thumb/e/ea/College_notID.png/250px-College_notID.png)][35]

Figure 1: Unidentified model with latent variables (![Q_{1}](https://wikimedia.org/api/rest_v1/media/math/render/svg/a8ea6463cb36d8278ff71214fb4d13127039ae53) and ![Q_{2}](https://wikimedia.org/api/rest_v1/media/math/render/svg/b86e8bff64d5e62fc8f45a35875e78bc9bef74a9)) shown explicitly

[![](https://upload.wikimedia.org/wikipedia/commons/thumb/0/02/College_notID_proj.png/250px-College_notID_proj.png)][36]

Figure 2: Unidentified model with latent variables summarized

Figure 1 is a causal graph that represents this model specification. Each variable in the model has a corresponding node or vertex in the graph. Additionally, for each equation, arrows are drawn from the independent variables to the dependent variables. These arrows reflect the direction of causation. In some cases, we may label the arrow with its corresponding structural coefficient as in Figure 1.

If ![Q_{1}](https://wikimedia.org/api/rest_v1/media/math/render/svg/a8ea6463cb36d8278ff71214fb4d13127039ae53) and ![Q_{2}](https://wikimedia.org/api/rest_v1/media/math/render/svg/b86e8bff64d5e62fc8f45a35875e78bc9bef74a9) are unobserved or latent variables their influence on ![C](https://wikimedia.org/api/rest_v1/media/math/render/svg/4fc55753007cd3c18576f7933f6f089196732029) and ![S](https://wikimedia.org/api/rest_v1/media/math/render/svg/4611d85173cd3b508e67077d4a1252c9c05abca2) can be attributed to their error terms. By removing them, we obtain the following model specification:

__Model 2__

![{\begin{aligned}C&=U_{C}\\S&=\beta C+U_{S}\end{aligned}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/33fb4897e022c9a5c805996a4659c86fbf06a0d4)

The background information specified by Model 1 imply that the error term of ![S](https://wikimedia.org/api/rest_v1/media/math/render/svg/4611d85173cd3b508e67077d4a1252c9c05abca2), ![U_{S}](https://wikimedia.org/api/rest_v1/media/math/render/svg/5f705c0a6d2731d12bf77db90b399c3d52f9967a), is correlated with *C'*s error term, ![U_{C}](https://wikimedia.org/api/rest_v1/media/math/render/svg/fcc9fcb0ce866995b80e65e290d442ddf072441f). As a result, we add a bidirected arc between *S* and *C*, as in Figure 2.

[![](https://upload.wikimedia.org/wikipedia/commons/thumb/a/ab/College.png/250px-College.png)][37]

Figure 3: Identified model with latent variables (![Q_{1}](https://wikimedia.org/api/rest_v1/media/math/render/svg/a8ea6463cb36d8278ff71214fb4d13127039ae53) and ![Q_{2}](https://wikimedia.org/api/rest_v1/media/math/render/svg/b86e8bff64d5e62fc8f45a35875e78bc9bef74a9)) shown explicitly

[![](https://upload.wikimedia.org/wikipedia/commons/thumb/9/97/College_proj.png/250px-College_proj.png)][38]

Figure 4: Identified model with latent variables summarized

Since ![U_{S}](https://wikimedia.org/api/rest_v1/media/math/render/svg/5f705c0a6d2731d12bf77db90b399c3d52f9967a) is correlated with ![U_{C}](https://wikimedia.org/api/rest_v1/media/math/render/svg/fcc9fcb0ce866995b80e65e290d442ddf072441f) and, therefore, ![C](https://wikimedia.org/api/rest_v1/media/math/render/svg/4fc55753007cd3c18576f7933f6f089196732029), ![C](https://wikimedia.org/api/rest_v1/media/math/render/svg/4fc55753007cd3c18576f7933f6f089196732029) is [endogenous][39] and ![\beta ](https://wikimedia.org/api/rest_v1/media/math/render/svg/7ed48a5e36207156fb792fa79d29925d2f7901e8) is not identified in Model 2. However, if we include the strength of an individual's college application, ![A](https://wikimedia.org/api/rest_v1/media/math/render/svg/7daff47fa58cdfd29dc333def748ff5fa4c923e3), as shown in Figure 3, we obtain the following model:

__Model 3__

![{\begin{aligned}Q_{1}&=U_{1}\\A&=a\cdot Q_{1}+U_{2}\\C&=b\cdot A+U_{3}\\Q_{2}&=e\cdot Q_{1}+d\cdot C+U_{4}\\S&=c\cdot C+f\cdot Q_{2}+U_{5},\end{aligned}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/e35b0a051a8790d9a4ce367b6e30d652415c7e5e)

By removing the latent variables from the model specification we obtain:

__Model 4__

![{\begin{aligned}A&=a\cdot Q_{1}+U_{A}\\C&=b\cdot A+U_{C}\\S&=\beta \cdot C+U_{S},\end{aligned}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/c8bd06d2f81f8a050c469edbc1fccd87a1a69df9)

with ![U_{A}](https://wikimedia.org/api/rest_v1/media/math/render/svg/70743f7c9268ccb389a862b37fb035b199783f10) correlated with ![U_{S}](https://wikimedia.org/api/rest_v1/media/math/render/svg/5f705c0a6d2731d12bf77db90b399c3d52f9967a).

Now, ![\beta ](https://wikimedia.org/api/rest_v1/media/math/render/svg/7ed48a5e36207156fb792fa79d29925d2f7901e8) is identified and can be estimated using the regression of ![S](https://wikimedia.org/api/rest_v1/media/math/render/svg/4611d85173cd3b508e67077d4a1252c9c05abca2) on ![C](https://wikimedia.org/api/rest_v1/media/math/render/svg/4fc55753007cd3c18576f7933f6f089196732029) and ![A](https://wikimedia.org/api/rest_v1/media/math/render/svg/7daff47fa58cdfd29dc333def748ff5fa4c923e3). This can be verified using the *single-door criterion*,[\[1\]][40][\[23\]][41] a necessary and sufficient graphical condition for the identification of a structural coefficients, like ![\beta ](https://wikimedia.org/api/rest_v1/media/math/render/svg/7ed48a5e36207156fb792fa79d29925d2f7901e8), using regression.

## References\[[edit][42]\]

1.  ^ [*__a__*][43] [*__b__*][44] [*__c__*][45] [Pearl, Judea][46] (2000). [*Causality*][47]. Cambridge, MA: MIT Press.
2.  __[^][48]__ Tian, Jin; Pearl, Judea (2002). ["A general identification condition for causal effects"][49]. *Proceedings of the Eighteenth National Conference on Artificial Intelligence*. [ISBN][50] [978-0-262-51129-2][51].
3.  __[^][52]__ Shpitser, Ilya; Pearl, Judea (2008). ["Complete Identification Methods for the Causal Hierarchy"][53] (PDF). *Journal of Machine Learning Research*. __9__: 1941–1979.
4.  __[^][54]__ Huang, Y.; Valtorta, M. (2006). "Identifiability in causal bayesian networks: A sound and complete algorithm". *Proceedings of AAAI*.
5.  __[^][55]__ Bareinboim, Elias; Pearl, Judea (2012). "Causal Inference by Surrogate Experiments: z-Identifiability". *Proceedings of the Twenty-Eighth Conference on Uncertainty in Artificial Intelligence*. [arXiv][56]:[1210.4842][57]. [Bibcode][58]:[2012arXiv1210.4842B][59]. [ISBN][60] [978-0-9749039-8-9][61].
6.  __[^][62]__ Tian, Jin; Pearl, Judea (2002). "On the Testable Implications of Causal Models with Hidden Variables". *Proceedings of the Eighteenth Conference on Uncertainty in Artificial Intelligence*. pp. 519–27. [arXiv][63]:[1301.0608][64]. [Bibcode][65]:[2013arXiv1301.0608T][66]. [ISBN][67] [978-1-55860-897-9][68].
7.  __[^][69]__ Shpitser, Ilya; Pearl, Judea (2008). "Dormant Independence". *Proceedings of AAAI*.
8.  __[^][70]__ Chen, Bryant; Pearl, Judea (2014). "Testable Implications of Linear Structural Equation Models". *Proceedings of AAAI*.
9.  __[^][71]__ Bareinmboim, Elias; Pearl, Judea (2014). "External Validity: From do-calculus to Transportability across Populations". *Statistical Science*. __29__ (4): 579–595. [arXiv][72]:[1503.01603][73]. [doi][74]:[10.1214/14-sts486][75].
10.  __[^][76]__ Mohan, Karthika; Pearl, Judea; Tian, Jin (2013). "Graphical Models for Inference with Missing Data". *Advances in Neural Information Processing Systems*.
11.  __[^][77]__ Bareinboim, Elias; Tian, Jin; Pearl, Judea (2014). "Recovering from Selection Bias in Causal and Statistical Inference". *Proceedings of AAAI*.
12.  __[^][78]__ Wright, S. (1921). "Correlation and causation". *Journal of Agricultural Research*. __20__: 557–585.
13.  __[^][79]__ Blalock, H. M. (1960). ["Correlational analysis and causal inferences"][80]. *American Anthropologist*. __62__ (4): 624–631. [doi][81]:[10.1525/aa.1960.62.4.02a00060][82].
14.  __[^][83]__ Duncan, O. D. (1966). "Path analysis: Sociological examples". *American Journal of Sociology*. __72__: 1–16. [doi][84]:[10.1086/224256][85].
15.  __[^][86]__ Duncan, O. D. (1976). "Introduction to structural equation models". *American Journal of Sociology*. __82__ (3): 731–733. [doi][87]:[10.1086/226377][88].
16.  __[^][89]__ Jöreskog, K. G. (1969). "A general approach to confirmatory maximum likelihood factor analysis". *Psychometrika*. __34__ (2): 183–202. [doi][90]:[10.1007/bf02289343][91].
17.  __[^][92]__ Goldberger, A. S.; Duncan, O. D. (1973). *Structural equation models in the social sciences*. New York: Seminar Press.
18.  __[^][93]__ Goldberger, A. S. (1972). "Structural equation models in the social sciences". *Econometrica*. __40__ (6): 979–1001. [doi][94]:[10.2307/1913851][95]. [JSTOR][96] [1913851][97].
19.  __[^][98]__ White, Halbert; Chalak, Karim; Lu, Xun (2011). "Linking granger causality and the pearl causal model with settable systems". *Causality in Time Series Challenges in Machine Learning*. __5__.
20.  __[^][99]__ Rothman, Kenneth J.; Greenland, Sander; Lash, Timothy (2008). *Modern epidemiology*. Lippincott Williams & Wilkins.
21.  __[^][100]__ Morgan, S. L.; Winship, C. (2007). *Counterfactuals and causal inference: Methods and principles for social research*. New York: Cambridge University Press.
22.  __[^][101]__ Geiger, Dan; Pearl, Judea (1993). "Logical and Algorithmic Properties of Conditional Independence". *Annals of Statistics*. __21__ (4): 2001–2021. [CiteSeerX][102] [10.1.1.295.2043][103]. [doi][104]:[10.1214/aos/1176349407][105].
23.  __[^][106]__ Chen, B.; Pearl, J (2014). "Graphical Tools for Linear Structural Equation Modeling". *Technical Report*.

[1]: https://en.wikipedia.org/wiki/Path_analysis_(statistics) "Path analysis (statistics)"
[2]: https://en.wikipedia.org/wiki/Bayesian_networks "Bayesian networks"
[3]: https://en.wikipedia.org/wiki/Directed_Acyclic_Graph "Directed Acyclic Graph"
[4]: https://en.wikipedia.org/wiki/Graphical_models "Graphical models"
[5]: https://en.wikipedia.org/wiki/Causal_graph#cite_note-causality-1
[6]: https://en.wikipedia.org/wiki/Causal_graph#cite_note-2
[7]: https://en.wikipedia.org/wiki/Causal_graph#cite_note-3
[8]: https://en.wikipedia.org/wiki/Causal_graph#cite_note-4
[9]: https://en.wikipedia.org/wiki/Causal_graph#cite_note-5
[10]: https://en.wikipedia.org/wiki/Testable "Testable"
[11]: https://en.wikipedia.org/wiki/Causal_graph#cite_note-causality-1
[12]: https://en.wikipedia.org/wiki/Causal_graph#cite_note-6
[13]: https://en.wikipedia.org/wiki/Causal_graph#cite_note-7
[14]: https://en.wikipedia.org/wiki/Causal_graph#cite_note-8
[15]: https://en.wikipedia.org/wiki/Causal_graph#cite_note-9
[16]: https://en.wikipedia.org/wiki/Causal_graph#cite_note-10
[17]: https://en.wikipedia.org/wiki/Causal_graph#cite_note-11
[18]: https://en.wikipedia.org/wiki/Sewall_Wright "Sewall Wright"
[19]: https://en.wikipedia.org/wiki/Causal_graph#cite_note-12
[20]: https://en.wikipedia.org/wiki/Causal_graph#cite_note-13
[21]: https://en.wikipedia.org/wiki/Causal_graph#cite_note-14
[22]: https://en.wikipedia.org/wiki/Causal_graph#cite_note-15
[23]: https://en.wikipedia.org/wiki/Causal_graph#cite_note-16
[24]: https://en.wikipedia.org/wiki/Causal_graph#cite_note-17
[25]: https://en.wikipedia.org/wiki/Causal_graph#cite_note-18
[26]: https://en.wikipedia.org/wiki/Causal_graph#cite_note-19
[27]: https://en.wikipedia.org/wiki/Causal_graph#cite_note-20
[28]: https://en.wikipedia.org/wiki/Causal_graph#cite_note-21
[29]: https://en.wikipedia.org/w/index.php?title=Causal_graph&action=edit&section=1 "Edit section: Construction and terminology"
[30]: https://en.wikipedia.org/w/index.php?title=Causal_graph&action=edit&section=2 "Edit section: Fundamental tools"
[31]: https://en.wikipedia.org/wiki/Bayesian_network#d-separation "Bayesian network"
[32]: https://en.wikipedia.org/wiki/Causal_graph#cite_note-22
[33]: https://en.wikipedia.org/w/index.php?title=Causal_graph&action=edit&section=3 "Edit section: Example"
[34]: https://en.wikipedia.org/wiki/Structural_equation_model "Structural equation model"
[35]: https://en.wikipedia.org/wiki/File:College_notID.png
[36]: https://en.wikipedia.org/wiki/File:College_notID_proj.png
[37]: https://en.wikipedia.org/wiki/File:College.png
[38]: https://en.wikipedia.org/wiki/File:College_proj.png
[39]: https://en.wikipedia.org/wiki/Endogenous "Endogenous"
[40]: https://en.wikipedia.org/wiki/Causal_graph#cite_note-causality-1
[41]: https://en.wikipedia.org/wiki/Causal_graph#cite_note-23
[42]: https://en.wikipedia.org/w/index.php?title=Causal_graph&action=edit&section=4 "Edit section: References"
[43]: https://en.wikipedia.org/wiki/Causal_graph#cite_ref-causality_1-0
[44]: https://en.wikipedia.org/wiki/Causal_graph#cite_ref-causality_1-1
[45]: https://en.wikipedia.org/wiki/Causal_graph#cite_ref-causality_1-2
[46]: https://en.wikipedia.org/wiki/Judea_Pearl "Judea Pearl"
[47]: https://archive.org/details/causalitymodelsr0000pear
[48]: https://en.wikipedia.org/wiki/Causal_graph#cite_ref-2
[49]: https://escholarship.org/uc/item/17r754xz
[50]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[51]: https://en.wikipedia.org/wiki/Special:BookSources/978-0-262-51129-2 "Special:BookSources/978-0-262-51129-2"
[52]: https://en.wikipedia.org/wiki/Causal_graph#cite_ref-3
[53]: http://www.jmlr.org/papers/volume9/shpitser08a/shpitser08a.pdf
[54]: https://en.wikipedia.org/wiki/Causal_graph#cite_ref-4
[55]: https://en.wikipedia.org/wiki/Causal_graph#cite_ref-5
[56]: https://en.wikipedia.org/wiki/ArXiv_(identifier) "ArXiv (identifier)"
[57]: https://arxiv.org/abs/1210.4842
[58]: https://en.wikipedia.org/wiki/Bibcode_(identifier) "Bibcode (identifier)"
[59]: https://ui.adsabs.harvard.edu/abs/2012arXiv1210.4842B
[60]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[61]: https://en.wikipedia.org/wiki/Special:BookSources/978-0-9749039-8-9 "Special:BookSources/978-0-9749039-8-9"
[62]: https://en.wikipedia.org/wiki/Causal_graph#cite_ref-6
[63]: https://en.wikipedia.org/wiki/ArXiv_(identifier) "ArXiv (identifier)"
[64]: https://arxiv.org/abs/1301.0608
[65]: https://en.wikipedia.org/wiki/Bibcode_(identifier) "Bibcode (identifier)"
[66]: https://ui.adsabs.harvard.edu/abs/2013arXiv1301.0608T
[67]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[68]: https://en.wikipedia.org/wiki/Special:BookSources/978-1-55860-897-9 "Special:BookSources/978-1-55860-897-9"
[69]: https://en.wikipedia.org/wiki/Causal_graph#cite_ref-7
[70]: https://en.wikipedia.org/wiki/Causal_graph#cite_ref-8
[71]: https://en.wikipedia.org/wiki/Causal_graph#cite_ref-9
[72]: https://en.wikipedia.org/wiki/ArXiv_(identifier) "ArXiv (identifier)"
[73]: https://arxiv.org/abs/1503.01603
[74]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[75]: https://doi.org/10.1214%2F14-sts486
[76]: https://en.wikipedia.org/wiki/Causal_graph#cite_ref-10
[77]: https://en.wikipedia.org/wiki/Causal_graph#cite_ref-11
[78]: https://en.wikipedia.org/wiki/Causal_graph#cite_ref-12
[79]: https://en.wikipedia.org/wiki/Causal_graph#cite_ref-13
[80]: https://doi.org/10.1525%2Faa.1960.62.4.02a00060
[81]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[82]: https://doi.org/10.1525%2Faa.1960.62.4.02a00060
[83]: https://en.wikipedia.org/wiki/Causal_graph#cite_ref-14
[84]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[85]: https://doi.org/10.1086%2F224256
[86]: https://en.wikipedia.org/wiki/Causal_graph#cite_ref-15
[87]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[88]: https://doi.org/10.1086%2F226377
[89]: https://en.wikipedia.org/wiki/Causal_graph#cite_ref-16
[90]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[91]: https://doi.org/10.1007%2Fbf02289343
[92]: https://en.wikipedia.org/wiki/Causal_graph#cite_ref-17
[93]: https://en.wikipedia.org/wiki/Causal_graph#cite_ref-18
[94]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[95]: https://doi.org/10.2307%2F1913851
[96]: https://en.wikipedia.org/wiki/JSTOR_(identifier) "JSTOR (identifier)"
[97]: https://www.jstor.org/stable/1913851
[98]: https://en.wikipedia.org/wiki/Causal_graph#cite_ref-19
[99]: https://en.wikipedia.org/wiki/Causal_graph#cite_ref-20
[100]: https://en.wikipedia.org/wiki/Causal_graph#cite_ref-21
[101]: https://en.wikipedia.org/wiki/Causal_graph#cite_ref-22
[102]: https://en.wikipedia.org/wiki/CiteSeerX_(identifier) "CiteSeerX (identifier)"
[103]: https://citeseerx.ist.psu.edu/viewdoc/summary?doi=10.1.1.295.2043
[104]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[105]: https://doi.org/10.1214%2Faos%2F1176349407
[106]: https://en.wikipedia.org/wiki/Causal_graph#cite_ref-23

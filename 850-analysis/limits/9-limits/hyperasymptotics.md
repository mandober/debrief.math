# Hyperasymptotics

"Divergent series are the invention of the devil, and it is shameful to base on them any demonstration whatsoever." -- Niels Hendrik Abel, 1828

* "The Devil's Invention: Asymptotic, Superasymptotic and Hyperasymptotic Series", 1999, John P. Boyd
https://deepblue.lib.umich.edu/bitstream/2027.42/41670/1/10440_2004_Article_193995.pdf

**Divergent asymptotic series** are important in almost all branches of physical science and engineering.

Examples of divergent asymptotic series
- Feynman diagrams (particle physics)
- Rayleigh-Schrödinger perturbation series (quantum chemistry)
- boundary layer theory
- the derivation of soliton equations (fluid mechanics)
- numerical algorithms like the Nonlinear Galerkin method

Unfortunately, classic texts like these below are very good on the mechanics of divergent series, largely ignore two important questions.
- M. Van Dyke: "Perturbation Methods in Fluid Mechanics, 1st edition", 1964
- M. Van Dyke: "Perturbation Methods in Fluid Mechanics, 2nd edition", 1975
- A. H. Nayfeh: "Perturbation Methods", 1973 (for methods of multiple scales)
- C. M. Bender and S. A. Orszag: "Advanced Mathematical Methods for Scientists and Engineers", 1978


First important question is why do some series diverge for all nonzero `ε`, where `ε` is the *perturbation parameter*? And how can one break the *Error Barrier* when the error of an optimally-truncated series is too large to be useful?

In the next section, we begin with a brief catalogue of physics, chemistry and engineering problems where key parts of the answer lie "beyond all orders" in the standard asymptotic expansion because these features are exponentially small in `1/ε`, where `ε << 1` is the perturbation parameter. The emerging field of *exponential asymptotics* is not a branch of pure mathematics in pursuit of beauty (though some of the ideas are aesthetically charming) but a matter of bloody and unyielding engineering necessity.

We review some concepts that are already scattered in the textbooks:
- Poincaré's definition of asymptoticity
- optimal truncation and minimum error
- Carrier's Rule

Heuristics for predicting divergence:
- exponential reciprocal rule
- principle of multiple scales (by Van Dyke)
- change-of-sign argument (by Dyson)
- principle of nonuniform smallness


In later sections, we illustrate hyperasymptotic perturbation theory, which allows us to partially overcome the evils of divergence, through 3 examples:
- the Stieltjes function (Sections 4 and 5)
- a linear inhomogeneous differentiation equation (Section 6)
- a weakly nonlocal solitary wave (Section 7)

Lastly, in Section 8 we present an overview of *hyperasymptotic methods* in general. We use the *Pokrovskii-Khalatnikov-Kruskal-Segur (PKKS)* method for "above-the-barrier" *quantum scattering* (Section 14) and "resurgence" for the analysis of *Stokes' phenomenon* (Section 12) to give the flavor of these new ideas.

We warn the reader: **beyond-all-orders perturbation theory** has become sufficiently developed that it is impossible, short of a book, to even summarize all the useful strategies.

---

DEFINITION 1 (Asymptoticity). A power series is asymptotic to a function `f(ε)` if, for fixed `N` and sufficiently small `ε`


where `O()` is the usual *Landau gauge* symbol that denotes that the quantity to the left of the asymptotic equality (`∼`) is bounded in absolute value by a constant times the function inside the parentheses on the right.

```js
│       ⎲ᴺ       │
│f(ε) - ⎳ aₖ εᵏ  │ ∼ 𝐎(εᴺᐩ¹)
│       ᵏ⁼⁰       │
```

PROPOSITION 1 (Carrier's Rule). Divergent series converge faster than convergent series because they don't have to converge.

What George F. Carrier meant by this bit of apparent jabberwocky is that the leading term in a divergent series is often a very good approximation even when the 'small' parameter ε is not particularly small. In contrast, it is quite unusual for an ordinary convergent power series to be accurate when `ε ∼ O(1)`.

The vice of divergence is that for fixed ε, the error in a divergent series will reach, as more terms are added, an ε-dependent minimum. The error then increases without bound as the number of terms tends to infinity. The standard empirical strategy for achieving this minimum error is the following.

DEFINITION 2 (**Optimal Truncation Rule**). For a given `ε`, the minimum error in an asymptotic series is usually achieved by truncating the series so as to retain the smallest term in the series, discarding all terms of higher degree.

The imprecise adjective "usually" indicates that this rule is empirical, not something that has been rigorously proved to apply to all asymptotic series.

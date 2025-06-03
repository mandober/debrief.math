# Integration rules and technics :: Substitutions

- substitution
  - u-substitution (IBP-1)
  - integration by parts (IBP-2), `⎰ u dv = uv - ⎰ v du`
    - tabular method
  - 3-product substitution (IBP-3), `∫ u v dw = uvw - ∫ v w du - ∫ u w dv`


The rule of u-substitution and the integration-by-parts rule, along with the rule for the product of 3 functions, are actually closely related rules all involving substitutions.

The *u-substitution* deals with substituting a single function (single subexp) in the integrand. The u-substitution uses the variable `u`. It replaces a single function of `x` in the integrand by `u`.

The *integration by parts* rule deals with substituting 2 functions combined into a product in the integrand. IBP uses variables `u` and `v`. It replaces two functions of `x` in the integrand: one by `u` and one by `v`.

>IBP-2: `⎰ u dv = uv - ⎰ v du`

The *3-product rule* deals with substituting 3 functions combined into a product in the integrand. This rule uses variables `u`, `v` and `w`. It replaces 3 functions of `x` in the integrand: one by `u`, one by `v`, and one by `w`.

>IBP-3: `∫ u v dw = uvw - ∫ v w du - ∫ u w dv`

All 3 variants of substitution work the same, mostly differing in the number of replacements made.

- IBP-1: `∫ 8 cos(4x) dx`, let `u = 4x` ⇒ `du = 4 dx`
- IBP-1: `∫ 2x(x²+4)² dx`, let `u = x²+4` ⇒ `du = 2x dx`
- IBP-2: `∫ x cos(x) dx`, let `u = x` and `dv = cos(x) dx`
- IBP-3: `∫ x sin(x) e²ˣ dx`, let `u = x`, `v = sin(x)` and `dw = e²ˣ dx`

Evidently, we can sometimes apply either of the IBP1 and IBP2 rules, there is no cemented guideline. With IBP1, the guideline is to pick `u` to be a function (subexp) such that its derivative, `dx = du/u′`, has `u′` cencelling some leftover expression in the integrand. In fact, this is desirable with all substitutions but especially with IBP1.

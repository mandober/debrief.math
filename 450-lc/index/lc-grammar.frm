# Grammar


```hs bnf
(1)
term := var
      | ( λ var . term )
      | ( term term )
var  := x | y | z | x₁ | x¹ | x ′ | ...

(2)
𝚲 := 𝓥
   | ( λ 𝓥 . 𝚲 )
   | ( 𝚲 𝚲 )
𝓥 := x | y | z | …

(3)
exp := var | abs | app
var := a | b | …
abs := λ var . exp
app := ( abs )( exp )

(4)
exp := var
     | λ var . exp
     | ( exp )
var := chr suf
chr := a | b | …
suf := ϵ | _ | ₀ | ₁ | …
```

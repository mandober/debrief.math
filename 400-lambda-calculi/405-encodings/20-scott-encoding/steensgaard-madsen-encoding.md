# Steensgaard-Madsen encoding

Encoding of natural numbers by Jørgen Steensgaard-Madsen actually turns out to be the Scott encoding of natural numbers.

```hs
0 :=                            λs z. z
1 :=                   λs z. s (λs z. z)    = λs z. s 0
2 :=          λs z. s (λs z. s (λs z. z))   = λs z. s 1
3 := λs z. s (λs z. s (λs z. s (λs z. z)))  = λs z. s 2

3
= λs z. s (λs z. s (λs z. s (λs z. z)))
= λs z. s (λs z. s (λs z. s 0))
= λs z. s (λs z. s 1)
= λs z. s 2
```

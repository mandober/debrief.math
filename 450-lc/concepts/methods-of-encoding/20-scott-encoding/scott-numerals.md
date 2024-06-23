# Scott numerals

The Scott encoding was rediscovered several times through the history of lambda calculus, but was finally traced back to the origal author, Dana Scott, and his unpublished notes from a lecture he delivered in 1962 at the University of California, Berkeley, now cited as `A system of functional abstraction, Dana Scott, 1968`.

The Church encoding, being the first to comprehensively represent many concept from programming languages, serves as a kind of baseline upon which the other encodings are based and measured against. In fact, other encoding schemes start with the Church encoding, overwritting its parts with a more efficient representation if they discover one. The Church and Scott encoding coincide for simple data types like Booleans, but have crucial differences when it comes to non-recursive data types, starting with the natural numbers as we'll see here.


```hs
0 :=                            λs z. z
1 :=                   λs z. s (λs z. z)    = λs z. s 0
2 :=          λs z. s (λs z. s (λs z. z))   = λs z. s 1
3 := λs z. s (λs z. s (λs z. s (λs z. z)))  = λs z. s 2

3 =
= λs z. s (λs z. s (λs z. s (λs z. z)))
= λs z. s (λs z. s (λs z. s 0))
= λs z. s (λs z. s 1)
= λs z. s 2
```

Unlike Church numerals, that immitate Peano's unary representation of the naturals, prepending one successor symbol with each application, thus having the linear time complexity, `O(n)`, Scott numerals deploy a different strategy and achieve the constant time complexity, `O(1)`.

Also unlike the Church's encoding of zero which uses the `KI` combinator, thus equating 0 with the Boolean 'false' value (very appropriate), Scott encoding represents zero as the `K` combinator, `λab.a`, equating 0 with the 'true' Boolean value, which is something to keep in mind. (Both schemes encode the Booleans the same way, that is, the Scott encoding keeps the Church Booleans, so `T := λab.a`, `F := λab.b`).




Scott's successor function expects 3 args, the first of which, `n`, stands for the numeral we want to get the successor of, while the second arg, `z`, and the third arg, `s`, are switched compared to the Church's successor.

SUCCᶜʰᵘʳᶜʰ := λn s z. s (n s z)
SUCCˢᶜᵒᵗᵗ  := λn z s. s n

so far this is the same as Church's

```hs
    Z := λz s. z              (K)
    S := λn z s. s n
caseN := λn u f. n u f        (pattern matching)
```

## Scott vs Church numerals

In the Scott encoding zero is represented by the `K` combinator (as opposed to Church-encoded zero which is the `KI` combinator).

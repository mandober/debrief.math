# Lambda Calculus: Church encoding

## Pairs

True  = T: λab. a
False = F: λab. b

Pair  : λx. λy. λf. f x y
First : λp. p (λx. λy. x)
Second: λp. p (λx. λy. y)

First (Pair α β) =
First               (Pair                α β) =
(λp. p (λx. λy. x)) ((λx. λy. λf. f x y) α β) =
(λp. p (λx. λy. x)) (λf. f α β) =
(λf. f α β) (λx. λy. x) =
(λx. λy. x) α β =
(λy. α) β =
α

## List

4 different representations of lists:
- Build each list node from two pairs (to allow for empty lists)
- Build each list node from one pair
- Represent the list using the *right fold function*
- Repr list using Scott encoding that takes cases of match expression as args

### Two pairs as a list node

A nonempty list can implemented by a Church pair
- `First` contains the head
- `Second` contains the tail

However this does not give a representation of the empty list, because there is no "null" pointer. To represent null, the pair may be wrapped in another pair, giving free values:
- `First` is the null pointer (empty list)
- `Second.First` contains the head
- `Second.Second` contains the tail

Using this idea the basic list operations can be defined like this:

Nil   = pair T T
IsNil = first
Cons  = λh. λt. pair F (pair h t)
Head  = λz. First (Second z)
Tail  = λz. Second (Second z)

In a nil node second is never accessed, provided that head and tail are only applied to nonempty lists.

### One pair as a list node

Cons  = Pair
Head  = First
Tail  = Second
Nil   = F
IsNil = λl. l (λh. λt. λd. F) T

where the last definition is a special case of the general

process-list: λl. l (λh. λt. λd. head-tail-clause) nil-clause

### Represent the list using right fold

As an alternative to the encoding using Church pairs, a list can be encoded by identifying it with its right fold function. For example, a list of three elements x, y and z can be encoded by a higher-order function that when applied to a combinator c and a value n returns c x (c y (c z n)).

https://en.wikipedia.org/wiki/Church_encoding#List_encodings

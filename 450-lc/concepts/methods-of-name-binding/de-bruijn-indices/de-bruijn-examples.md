# De Bruijn indices :: Exmaples

Indexes start at 1

Exmaples
- λx.x             = λ 1
- λx.z             = λ 2            open exp (index = nob + 1 = 1+1 = 2)
- λx.λx.x          = λ λ 1
- λx.λy.x          = λ λ 2
- λx.λy.y          = λ λ 1
- λx.λy.z          = λ λ 3          open exp (index = nob + 1 = 2+1 = 3)
- (λx.x)(λy.y)     = (λ 1)(λ 1)
- (λx.x)(λy.z)     = (λ 1)(λ 2)     open exp
- (λx.λy.y x)(λy.y) = 
  (λ  λ  1 2)(λ  1)
- (λx.λy.(λy.x y) y x) (λa. a) = 
  (λ  λ  (λ  3 1) 1 2) (λ   1)

Combinators
- I:  λx. x     = (λ 1)
- K:  λx. λy. x = (λ λ 2)
- KI: λx. λy. y = (λ λ 1)
- S:  λx. λy. λz. x z (y z) = λ λ λ 3 1 (2 1)

Abs
- λz. (λy. y (λx. x)) (λx. z x)  =  λ (λ 1 (λ 1)) (λ 2 1)

App
- (λx. λy. z x (λu. u x)) (λx. w x) = λ 3 (λ 6 1) (λ 1 (λ 7 1))

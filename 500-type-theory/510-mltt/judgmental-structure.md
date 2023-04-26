# Judgmental structure
(paper: "An ok version of type theory" by Jonathan Sterling, 2020)


Formulating the judgmental structure of dependent type theory

There are many different possibilities for formulating the judgmental structure of dependent type theory, but the classic version due to Martin-Lof is still a very popular one:

>Contexts

  * __Γ context__   
    means that `Γ` is a context.

>Types

  * __Γ ⊢ A Type__   
    means that `A` is a type in context `Γ`,   
    presupposing:   
    - `Γ context`

  * __Γ ⊢ A ≡ B Type__    
    means that `A` and `B` are equal types in context `Γ`,   
    presupposing:   
    - `Γ context`    
    - `Γ ⊢ A Type`    
    - `Γ ⊢ B Type`

>Terms

  * __Γ ⊢ a : A__    
    means that `a` is an term of type `A` in context `Γ`,   
    presupposing:    
    - `Γ context`   
    - `Γ ⊢ A Type`

  * __Γ ⊢ a ≡ b : A__   
    means `a` and `b` are equal terms of type `A` in context `Γ`  
    presupposing:    
    - `Γ context`   
    - `Γ ⊢ A Type`   
    - `Γ ⊢ a : A`    
    - `Γ ⊢ b : A`    


> The meaning of presuppositions (invariants of deduction)

Each presupposition expresses a pair of invariants on a form of judgment. Using the form of judgment `Γ ⊢ a : A` as an example, these two invariants are

1. If you can derive   `Γ ⊢ a : A`   
   then you can derive `Γ ⊢ A Type`

2. If you can derive   `Γ ⊢ a : A`   
   and you can derive  `Γ ⊢ A ≡ B Type`, then you must   
   be able to derive   `Γ ⊢ a : B`

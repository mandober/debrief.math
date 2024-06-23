# A nonsystematical but easy to understand introduction into the Laws of Form by George Spencer Brown

by Matthias Kissel, Februar 2006 (All rights reserved)

https://web.archive.org/web/20070310071916/http://de.geocities.com/matthias_kissel/gdf/LoF.html

## From the beginning: marks

To illustrate the idea of *marking* I choose the example of marking parts of a written text. Supposed I want to read some passages of a text to an audience, but only the important parts. For that it's necessary to distinguish the important text from the unimportant one. For simplification, suppose that on a piece of paper (represented by a frame which corresponds to the "unwritten cross") are written exactly two paragraphs, of which the first contains all important and the second all unimportant sentences. Furthermore for an easy representation the word "IMPORTANT" shall represent the important, the word "UNIMPORTANT" the unimportant paragraph.

Thereby there are 3 possibilities to distinguish between these paragraphs:
1. mark important paragraphs one way and unimportant ones another way
2. mark only important paragraph
3. mark only unimportant paragraph

Obviously there is no need for two different kinds of marks in order to distinguish the two paragraphs from another, one of them is enough. Even if I will use only one of them I will know exactly which is the important and which is the unimportant one. But in every one of these three cases I have to decide which meaning the marks shall have. In case 1 I have marked both paragraphs, thereby I needed two different kinds of markings so that I'm able to distinguish one from the other. I have given the meaning "important" to the vertical and the meaning "unimportant" to the horizontal stroke, but I could do it in quite the opposite way! It's not the question if anybody would, but if anybody could do this, but if it's possible and it is, because it would work and that means I could clearly distinguish both paragraphs as important/unimportant even if I would, for example in case 3, mark the unimportant paragraph by a vertical stroke and would let be the important paragraph unmarked. The kind of mark is obviously not relevant.

On this stage it's only essential that I have to give a value to a mark, that I have to give an interpretation to it and if I distinguish exactly two states the mark can take two values. But this is no more a matter of the calculus itself but of it's application and will not be considered further.

Furthermore will be considered what happens if I mark twice. There are two possibilities doing this:

1. Marking the same paragraph twice

    PARAGRAPH 1 ||
    PARAGRAPH 2

2. Marking both paragraphs once

    PARAGRAPH 1 |
    PARAGRAPH 2 |


For further considerations it's important to realize that **equality** is a relation connecting *three objects*, not only the two of them which are considered as equal, because every equality has to say *in which way* (in reference to which features) two objects are equal. For example, two people can be of the same height but their hair color is different. If somebody says they are equal he has to say in reference to what property.

(Back to the marks). Now I consider if marks are equal *in their ability to distinguish different paragraphs of the same piece of paper*.

Doing this I only consider if the marks can make a distinction but not how much they distinguish the paragraphs, which means I do not consider different grades of marking. Doing this I realize: If I mark the same paragraph twice I do not distinguish it more clearly than marking it once.

Therefore:

    PARAGRAPH 1 ||
    PARAGRAPH 2

is the same as

    PARAGRAPH 1 |
    PARAGRAPH 2

therefore marking twice is the same as marking once, `|| = |`

Furthermore, if I mark both paragraphs the difference between them vanishes. Therefore,

    PARAGRAPH 1 |
    PARAGRAPH 2 |


This means marking everything is as good as marking nothing.

These are (almost) the initial equations of the primary arithmetic of the laws of form.

They arise by keeping the marks and leaving out the text. In the end it's not essential what I mark, texts or something else, only the marks matter.

But *George Spencer Brown* uses other kinds of marks, closed *curves*, for example circles, which divide the plane (the piece of paper) into exactly two totally severed parts, the *inner and the outer side*, corresponding to the distinction of two completely different states.

But doing this another complication arises. Because of this I first considered the easyer case of marking by strokes. For example the vertical stroke is a symetrical mark. It clearly divides two sides from another but they are not different in any other way. It doesn't matter if the marked text stands left or right beside the stroke.

Not so in case of a circle! It's an asymetric cleavage of the space and it's not the same if a value is corresponded to the inside or the outside. In case of a stroke I only have to decide which value it should mark, in case of a circle I have further to decide if it should mark the inner or the outer side. This is not a matter of interpretation but of the calculus itself.

The following consideration shall show that it makes a difference:

I choose the brackets ( ) to represent the mark, even they have an inner and an outer side.

1.The inside shall be marked, thereby

    (PARAGRAPH 1)
    PARAGRAPH 2


Marking twice gives

1.a:
    ((PARAGRAPH 1))
    PARAGRAPH 2

Thereby `(( )) = ( )`

1.b:
    (PARAGRAPH 1)
    (PARAGRAPH 2)

Thereby `( )( ) =`


Different from the strokes, there's no need to pay attention if the marks are standing side by side or one upon another. (( )) and ( )( ) cannot be confused. Using asymetric marks the notation becomes topological invariant.

2. Now the mark shall indicate its outside

    PARAGRAPH 1  
    (PARAGRAPH 2)

The outside of the mark is indicated, the inside is not indicated. Marking the same paragraph twice leads to

    2.a:
    PARAGRAPH 1 ( )  
    (PARAGRAPH 2)

Paragraph 1 stands as well outside the first mark, which seperates paragraph 2 from the rest of the text, as outside the second mark, which stands directly beside the paragraph 1, because both marks have the same outside.


Therefore:
I1. ( )( ) = ( ).  
Now I mark both paragraphs:
2.b:

PARAGRAPH 1  
(( )PARAGRAPH 2)

Paragraph 2 is indicated by the inner mark by standing on its outside; paragraph 1 is indicated by the outer mark. Thereby :

I2. (( ))=


Because the first mark (counted from the outside to the inside) completely separates its inner space from its outer space,paragraph 2 can only be indicated by a second mark inside the first mark.  

The comparison shows that only case 2 (the mark indicates its outside) leads to equations similar to the equations given by using strokes as marks. But even the commitment 1 is possible (Felix Lau "Die Form der Paradoxie" Kapitel 1:"Der Indikationenkalkül"), even this is consistent to the intention of marking, but would lead to a different calculus.

Another reason (additional to the intention to reach correspondence to the use of strokes) for choosing case 2 is given by considering the calculus in reference to logic.


### 2. From the End. Logik

### 2.a Logical preliminaries

To build up the logic of propositions there is need for the negation and thereby for an operator of negation (negator), and at least one *junction*, for example "or".

With these two operators, all other forms of propositions (short: forms) can be represented, for example "if-then". To represent the negator I choose `( )`. Analogous to multiplication in the numerical algebra I omit an own sign for the or-junction.

The constants `T` shall stand for "true" and `F` for "false".

Thereby:

OR:
    A1. TT = T
    A2. FT = T
    A3. TF = T
    A4. FF = F

NOT:
    A5. T = (F)
    A6. F = (T)


The constants represent the values of propositions.

Thereby for example `TF` means that of two with "or" connected propositiones the first is true and the second is false, `T ∨ F`. Then `TF = T` means, that the proposition composed out of two single propositiones is true, `T ∨ F = T`.

With these constants I could build up a "logical arithmetic", building up any long expressions out of shorter expressions by substitution or simplifying longer expressions. For example:

    T = TT = TFT = TF(F) = TF(FF) = TF(F(T)) = TF(F(FT))

      T                 | 1
    = T T               | 1 ∨ 1
    = T F T             | 1 ∨ 0 ∨ 1
    = T F (F)           | 1 ∨ 0 ∨ ¬0
    = T F (FF)          | 1 ∨ 0 ∨ ¬(0 ∨ 0)
    = T F (F(T))        | 1 ∨ 0 ∨ ¬(0 ∨ ¬1)
    = T F (F(FT))       | 1 ∨ 0 ∨ ¬(0 ∨ ¬(0 ∨ 1))



The fact that it is not usual to do so, doesn't mean that it is impossible to do so. It is possible and that means that it is possible to make calculations by using the equations `A1-A6` and thereby in fact we have an arithmetic.

Now, using variables, I can propound equations, which are propositions about this arithmetic. For example the equations `A1-A4` show, that a composited expression always has the value `T` if it contains at least one `T`; this means that `aT = T` (stricly speaking it has to be proved that this is true in general for any expressions represented by `a`, but in this quite nonsystematical introduction this shall be omitted).

    aT = T                       | a ∨ 1 = 1

Furthermore:

    aF = F   if a = F            |
    aF = T   if a = T            | a ∨ 0 = a


As a whole, `aF` has alway the same value as a itself, `aF = a`.

Using A6 by substitution of `F` by `(T)`, the equation [A5] `T = (F)` gives
`T = ((T))`.

In the same way I get `F =((F))`.

Thereby:

  a = ((a))                     | a = ¬¬a

Untill we get the following algebraic equations:

    A7. aT = T
    A8. aF = a

These equations contains even constant as variable parts and connect the algebra and the arithmetic.

    A9. a = ((a))

this equation is completely algebraical.

but the equations `A7-A9` are *not consequences* of the arithmetic, because they *cannot be derived* from the arithmetical equations. But they can be *proved*. They are *theorems* about the arithmetic.

If two expressions are equal in both values of any variable, they are equal. This is theorem 16 in the*Laws of Form*.But it's not only true in the LoF. To realize this I tabulate the values of two expressions, for example:

a  b  ((a)((a)b))   ((a) (b))
T  T      T             T
T  F      F             F
F  T      F             F
F  F      F             F

Now I consider any variable, for example a. If both expressions are equal in every row, in which a has the value T, they are equal in half of all rows. If they are even equal in every row with a = F, they are equal in the other half of all rows. Thereby the whole table is covered ! Thereby both expressions are equal in every case and there is no need to consider the values of all other variables and thereby there is no need to tabulate the values every time.  
George Spencer Brown proves this theorem especially in reference to his calculus and therefore completely different.  
Example:
( (a)( (a)b ) ) = ( (a)(b) )

1\. a = T  
( (a)( (a)b ) ) = ( (T)( (T) b) )     ( (a)(b) ) = ( (T)(b) )
        A6      = (  F (  F  b) )         A6     = (  F (b) )
        A8      = (  F (     b) )         A8     = (    (b) )
        A8      = (    (     b) )         A9     =       b
        A9      =            b
Therefore in this case ( (a)( (a)b ) ) = ( (a)(b) )

2. a = F
( (a)( (a)b ) ) = ( (F)( (F)b ) )     ( (a)(b) ) = ( (F)(b) )
        A5      = (  T (  T b ) )         A5     = (  T (b) )
        A7      = (  T (  T   ) )         A7     = (  T     )
        A6      = (  T    F     )         A6     =    F
        A3      = (  T          )
        A6      =    F 

Both expressions are equal in both values of a, therefore they are equal in general. Especially case 1 shows, that there is no need to know, what's the value of b. Both expressions equal b, therefore they are equal, no matter what's the value of b. [The same example][3] shall be considered again in section 2.b .  
Untill all this has nothing to do with the *Laws of Form* and is nothing else than ordinary logic of propositions. But now follows the connection between them and I hope it will clear up why *Laws of Form* is applicapable to the logic of propositions.  



### 2.b Logic and the Laws of Form

In general equations can be derived from other and thereby more fundamental equations. But quite opposite one can ask from which more fundamental equations given equation could be derived. This is exactly what I do now starting with A8 : aF = a .  
I ask : how do I have to manipulate the left side of this equation to get the right side, with other words : by what I have to substitute F on the left side to get the right side ?  
Answer : by nothing! In other words : if I assume F =  
then even aF = a. Thereby I have reduced aF = a to the more fundamental equation F =  
Now I can assume this new equation and see what happens, if the calculus works in this way.  
First : T = (F) , F =  
Therefore : T = ( ). Thereby the constant T get substituted by the same sign representing the negator. Thereby the difference vanishes between the object on which the operator operates and the operator itself. Thereby the new calculus gets even notional more fundamental than the previous one. It contains only one constant (instead of two of them previously), which is the same as the operator and if I undo the substitution of F by *nothing* and T by ( ), I get back the previous calculus. Thereby the new one is more fundamental in more than only one feature.

With W = ( ) and F =  
the arithmetical equations A1 up to A6 become:

1'. ( )( ) = ( )
2'.    ( ) = ( )
3'. ( )    = ( )
4'.        =

5'.    ( ) = ( )
6'.        = (( ))

Equations A2' up to A5' are trivial and only say, that every constant equals itself. As essential remain A1'and A6'. These are exactly the same equations as I1 and I2, which raised in [section 1 "Marks"][4] by choosing the outside as indicated space. This is the announced second reason for this choose.  
Using these new arithmetical equations for initials it's possible to derive longer expressions from shorter ones or to simplify composited expressions in the same way as before and thereby to build up the *primary arithmetic* the laws of Form. For example :

( ) = ( )( ) = ( ) ( (( )) ) = ( ) ( (( )( )) ) etc.

Belonging to this arithmetic it's possible to build up the primary algebra, suitable for calculations like in section 2.a.Now [the same example][5] shall be considered again :

a
b
((a)((a)b))
((a) (b))
( )
( )
( )
( )
( )
( )

1. 
a = ( )
( (a)( (a)b ) ) = ( (( )) ( (( ))b ) )     ((a)(b)) = ((())(b))
      2-mal I2  = (       (      b ) )          I2  = (    (b)) 
            I2  =                b              I2  =       b

2.
a = 
( (a)( (a)b ) ) = ( ( )( ( )b ) )          ((a)(b)) = (( )(b))
            T2  = ( ( )         )               T2  = (( )   )
            I2  =                               I2  =         


Theorem T2 (so called in LoF) arises with aW = W and W = ( ) as a( ) = ( ). Even in the new algebra both expressions are equal. Obviously in the primary algebra with its new constants calculations are much easyer and shorter as before.

On both ways, from the beginning and from the end, arise the same equations I1 and I2. Thereby bot ways to the *Laws of Form* has come together and this first introduction has come to its end.

Final words:

This reconstruction should show how *Laws of Form* could have been discovered if they weren't discovered at all and should make it more plausible why they are how they are. How **George Spencer Brown** himself truely discovered them, I don't know. Even that my reconstruction is not exact is obvious. Who wants to have a mathematical exact representation shall read *Laws of Form* itself.

---
downloaded:       2022-06-20
page-url:         https://web.archive.org/web/20000823015204/http://www.earlham.edu/~peters/writing/infapp.htm
article-title:    Peter Suber, "Infinite Sets"
---
# Peter Suber, "Infinite Sets"
-   *Proof*. We give a negative proof, and assume that the natural numbers *can* be put into one-to-one correspondence with the sets of natural numbers. Let this hypothetical pairing off be represented by the leftmost columns of the following table.
    
    <table><tbody><tr><td colspan="3" rowspan="2">The nat. nos. in 1-1<br>correspondence<br>with the sets thereof<br>(hypothetically)</td><td colspan="4">Are these nos. members of the set listed at left?</td></tr><tr><td>0</td><td>1</td><td>2</td><td>3...</td></tr><tr><td>0</td><td><img src="https://web.archive.org/web/20000823015204im_/http://www.earlham.edu/~peters/writing/2headarr.gif"></td><td>evens</td><td>yes</td><td>no</td><td>yes</td><td>no...</td></tr><tr><td>1</td><td><img src="https://web.archive.org/web/20000823015204im_/http://www.earlham.edu/~peters/writing/2headarr.gif"></td><td>odds</td><td>no</td><td><span color="ff0066"><strong>yes</strong></span></td><td>no</td><td>yes...</td></tr><tr><td>2</td><td><img src="https://web.archive.org/web/20000823015204im_/http://www.earlham.edu/~peters/writing/2headarr.gif"></td><td>squares</td><td>yes</td><td>yes</td><td>no</td><td>no...</td></tr><tr><td>...</td><td><img src="https://web.archive.org/web/20000823015204im_/http://www.earlham.edu/~peters/writing/2headarr.gif"></td><td>...</td><td>...</td><td>...</td><td>...</td><td>...</td></tr></tbody></table>
    
    In the shaded row of the table we again enumerate the natural numbers. The "yeses" and "noes" in the body of the table below them tell us whether the natural numbers in the shaded row above them are members of the sets to the left of them. For example, take the "yes" written in red. It is in the column of natural number 1, and in the row of the set of odd numbers; it says "yes" because 1 is indeed a member of the set of odd numbers. In this way, we represent every set of natural numbers (down the left column) as an infinite string of "yeses" and "noes". Conversely, we can read any string of "yeses" and "noes" as code for a particular set of natural numbers.
    
    From the "yes" in the upper left corner of the block of "yeses" and "noes", move diagonally downward and to the right, following the yellow cells. Toggle each "yes" we encounter to a "no" and *vice versa.* The resulting infinite string of "yeses" and "noes" is demonstrably different from *every* row of the infinite table, for it differs from the first row in the first term, from the second row in the second term, and so on. When we read it as set of natural numbers, the set it represents is for the same reason demonstrably different from every set yet listed on the table. But this contradicts our assumption that we had exhaustively listed and paired off all the sets of natural numbers. Therefore our assumption is false, and the natural numbers *cannot* be put into one-to-one correspondence with the sets of natural numbers.
    
    We're almost done. If the naturals and the sets of naturals cannot be put into one-to-one correspondence, then one has a larger cardinality than the other. The power set of the naturals must have the greater cardinality, for one of its proper subsets, {{0}, {1}, {2}, {3}...}, can be put into one-to-one correspondence with the naturals, 0, 1, 2, 3.... Therefore there are more sets of natural numbers than natural numbers.
    
    This technique of moving down the diagonal of a table, changing every row in some way, and thereby constructing a new item that differs from every row in some definite respect, is called *diagonalization*. It is one of Cantor's most ingenious methods for gaining leverage on infinite sets. We'll use diagonalization often.
    
    To establish [Theorem 3][1], we used a *negative proof*. In a negative proof we assume the negation of the desired conclusion and show that that assumption leads to a contradiction; then we conclude that assumptions is false, which is the same thing as to conclude that the desired conclusion is true. It is a special case of the rule of inference, called *modus tollens*, by which we infer that any statement that implies a falsehood is false. Since it is so hard to grapple with infinite sets directly, negative proofs are common in this branch of mathematics. However, the most important skeptics of Cantor's results, called *intuitionists*, refuse to use negative proofs in dealing with infinite sets —although they are willing to use negative proofs in other areas of mathematics. The issue between Cantor and the intuitionists is whether this refusal is arbitrary, or whether we should distrust negative proofs in those domains where there is no possibility of verifying our results through intuition.
    
    **Theorem 4.** The cardinality of the power set of an arbitrary set has a greater cardinality than the original arbitrary set, or |*A| > |A|.
    
    -   This is called simply *Cantor's Theorem.* It generalizes the previous theorem, in which we proved that the power set of a particular set, **N**, had a greater cardinality than the original. The present theorem is trivial for finite sets, but is fundamental for infinite sets.
    -   *Proof*. Let A be an arbitrary set of any cardinality, finite or infinite. Again we supply a negative proof, and assume that the members of A *can* be put into one-to-one correspondence with the subsets of A. Take any one of the supposed ways of pairing off the members of A with the subsets of A. Let us say that if a member of A is paired with a subset of A of which it happens to be a member, then it is *happy*; otherwise it is *sad*. Let S be the set of sad members of A. Clearly S is one of the subsets of A. Therefore S is paired off with one of the members of A, say, *x*. Is *x* happy or sad? If *x* is happy, then *x* is a member of the set to which it is paired, which is S, but that would make it sad. If *x* is sad, then *x* is *not* a member of the set to which it is paired, which is S, but that would make it happy. So if *x* is happy, then it is sad, and if it is sad, then it is happy. Our assumption implies a contradiction and is therefore false. So the members of A *cannot* be put into one-to-one correspondence with the subsets of A.
        
        But if A and *A cannot be put into one-to-one correspondence, then they cannot have the same cardinality. If so, then the larger one must be *A, for A can be put into one-to-one correspondence with a proper subset *A. For example, if the members of A are A1, A2, A3..., then they can be put into one-to-one correspondence with this subset of *A: {{A1}, {A2}, {A3}...}.
        
        Many profound consequences follow directly from Cantor's theorem. But we make the most important of them explicit in the next theorem.
        
        **Theorem 5.** If S is a set of any infinite cardinality, then its power set has a greater infinite cardinality, or |*S| > |S|.
        
        -   This follows directly from Cantor's Theorem (Theorem 4). Cantor's theorem applies equally to finite and infinite sets; this corollary focuses on the important consequence for infinite sets.
        -   If we follow the notation for finite sets, and say that a set of cardinality *a* has a power set of cardinality 2a, then this theorem asserts that 2a > *a*, for each transfinite cardinal *a*.
        -   This theorem asserts that for any infinite cardinality, there is a larger infinite cardinality, namely, the cardinality of its power set. Hence, *there is an infinite series of infinite cardinal numbers.* We will meet some of the infinite cardinals larger than **N** shortly.
        -   This theorem also implies that, for every set, there is a greater set. It follows that there is no set of all sets, or no set of everything.
            
            It follows from [Theorem 5][2] that "infinity" is not synonymous with "totality", a clarification which alone dispells many of the ancient conundrums and paradoxes surrounding the infinite.
            
            Speaking of the infinite series of infinite numbers which Cantor proved to exist, David Hilbert said (in 1910) that, "No one shall drive us from the paradise which Cantor created for us," and (in 1926), "This appears to me to be the most admirable flower of the mathematical intellect and one of the highest achievements of purely rational human activity."
            
            Now that we have proved there is an infinite series of infinite cardinals, it is well to prove that 0 truly designates the smallest of them.
            
            **Theorem 6.** No infinite set has a smaller cardinality than a denumerable set, e.g. the set of natural numbers.
            
            -   *Proof*. Let S be a set of any infinite cardinality. Clearly we may take away one of its members, call it S1, without emptying S. We may take another, S2, and another, S3, and so on, each time without emptying S. In this way we may carve out a denumerable proper subset from S, namely, {S1, S2, S3...}. But S had any infinite cardinality. Hence all infinite sets have at least one denumerable proper subset. Hence the cardinality of a denumerable set is not greater than any transfinite cardinality; or, it is the smallest transfinite cardinality.
                
                We know from the proof of [Theorem 6][3] that every infinite set has an infinite proper subset which consists of the original set minus denumerably many members. This fact has a beautiful implication. If the "largeness" of an infinite set is measured by its cardinality, then the smallest infinite set is a denumerable set or one with a cardinality of 0. But if the largeness of an infinite set is measured by the largeness of its proper subsets, then there is no smallest infinite set: they nest downward *ad infinitum* without ever losing infinite cardinality.
                
                0 designates the cardinality of the natural numbers by definition, which is demonstrably the smallest infinite cardinality ([Theorem 6][4]). This justifies the zero subscript. 1 is by definition the next greater infinite cardinality after 0, just as 2 is by definition the next greater cardinal after 1, and so on. As we will see in the [section on the *continuum hypothesis*][5] below, even though there is an infinite series of infinite cardinals ([Theorem 5][6]), it is impossible to say, in standard set theory, which one of them is 1, which one is 2, and so on.
                
                **Theorem 7.** A denumerable set plus a new member is still denumerable, or 0 + 1 = 0.
                
                -   *Proof*. If we add element A to the set of natural numbers, giving us {A, 0, 1, 2, 3...}, then the resulting set can still be put into one-to-one correspondence with the natural numbers. A would be paired with 0, 0 with 1, 1 with 2, and so on.
                -   As a corollary it follows that we may add a second member, and a third, and so on. 0 + 2 = 0, 0 + 3 = 0, 0 + *n* = 0 for every positive integer *n*.
                -   In fact we may add denumerably many new members, A, B, C... to the original denumerable set without increasing its cardinality. The enlarged set, {A, B, C..., 0, 1, 2...}, can be put into one-to-one correspondence with the natural numbers if we interlace its members thus: A, 0, B, 1, C, 2.... (See [Theorem 1][7].) Therefore, 0 + 0 = 0.
                    
                    **Theorem 8.** A denumerable set may have denumerably many members removed (in certain ways) without reducing the cardinality of the original set.
                    
                    -   *Proof*. We need only regard the given denumerable set as two denumerable sets interlaced, then 'unlace' them, then discard one of them. If {A1, A2, A3...} is the original denumerable set, then we can separate out the set of even-numbered members, {A2, A4, A6...}, from the set of odd-numbered members, {A1, A3, A5...}, each of which is denumerable. If we discard one of the resulting sets, the other one has the same cardinality as the original.
                    -   Note that this theorem only applies to the removal of *certain* denumerable subsets from a given denumerable set. For if the denumerably many members we subtracted happened to comprise the entire membership of the original denumerable set, then clearly the result would not be a denumerable set. So we cannot conclude in general that 0 - 0 = 0.
                        
                        **Theorem 9.** If we remove denumerably many members from an uncountably large set, the result will have the same cardinality as the original.
                        
                        -   *Proof*. Let U be any uncountably large set. We know from [Theorem 6][8] that U has at least one denumerable proper subset, say D. And we know from [Theorem 8][9] that we can remove denumerably many members from D, in certain ways, without reducing the cardinality of D. If we do so, then we thereby remove denumerably many members from U without reducing the cardinality of U.
                            
                            **Theorem 10.** Every infinite set can be be put into one-to-one correspondence with at least one of its proper subsets.
                            
                            -   *Proof*. Let S be a set of any infinite cardinality. If S is countable, then [Theorem 8][10] tells us that we may produce a proper subset of S without reducing S's cardinality. But if S and that proper subset have the same cardinality, then they can be put into one-to-one correspondence. If S is uncountable, then we have the same result using [Theorem 9][11] instead of [Theorem 8][12].
                            -   Together with the trivial truth that no finite set can be put into one-to-one correspondence with any of its proper subsets, this theorem establishes the important result that *all and only* infinite sets possess the property that they can be put into one-to-one correspondence with at least one of their proper subsets. It follows that this property is a *necessary and sufficient* condition for being an infinite set. It may therefore be taken as the defining condition of infinite magnitude, and its absence as the defining condition of finitude.
                                
                                **Definition**. Let us say that a *text* is a finitely long string of symbols, whose symbols are chosen from a finite set (or alphabet).
                                
                                -   For our purposes here we needn't even say that the string conforms to the rules of some grammar. When interpreted, the text may be a name, a sentence, a paragraph, a chapter, a book, or a library.
                                    
                                    **Theorem 11.** There are only countably many texts.
                                    
                                    -   *Proof*. By definition there are only finitely many symbols in the "alphabet" from which we may compose texts. List them exhaustively in any order. To the first symbol, assign the numeral "10". To the second, assign the numeral "100". To the third, assign "1000" and so on. In general, to the *n*th symbol in the alphabet we assign the numeral in which "1" is followed by *n* zeroes. Now in each text, replace the symbols with their corresponding numerals. Concatenate the numerals so that, for example, "10 100 1000 10" becomes "10100100010". We now have a method for converting every distinct text into a distinct natural number. But there are only 0 natural numbers. Therefore there are at most 0 texts.
                                        
                                        This theorem has deep consequences. We will soon prove ([Theorem 16][13]) that there are uncountably many real numbers. But by the present theorem, there are only countably many names for anything. Hence, only a countable subset of the real numbers can be named. Or conversely (by [Theorem 9][14]), *uncountably* many real numbers *cannot* be named.
                                        
                                        This theorem also means that there are at most countably many theorems in any axiom system (in which theorems are finitely long). But we know from [Theorem 3][15] that there are uncountably many sets of natural numbers. If there is at least one truth of number theory for each set of natural numbers (e.g. that some number *n* belongs to that set), then there will be uncountably many truths of number theory. Therefore, there are uncountably many more truths of number theory than there are texts. It follows that every axiom system intended to capture number theory is doomed to incompleteness.
                                        
                                        **Theorem 12.** The number of points on a finite line segment is the same as the number of points on an infinite ray.
                                        
                                        Until I can draw a GIF for this theorem, imagine a large letter "Z". Label the point at the upper left, C, that at the upper right, D, that at the lower left A. Imagine that the bottom bar continues infinitely to the right, and that point B is somewhere along it to the right of A.
                                        
                                        -   *Proof*. Let segment CD be parallel to ray AB. From point C we can draw a line through any point of AD, except D itself, and the line we draw will intersect AB somewhere; in this way we can pair any point on AD with exactly one point on AB. Conversely, from point C we can draw a line through any point of the ray AB, and the line we draw will intersect AD somewhere; in this way, we can pair any point on AB with exactly one point on AD. But this means the points on AD, minus D itself, and those on AB can be put into one-to-one correspondence. Hence they contain the same number of points.
                                            
                                            We have yet to say how many points are on AD (minus D itself) or the infinite ray AB, but we know it will be some infinite cardinality. Now since any infinite cardinal plus one equals the original infinite cardinal ([Theorem 7][16]), we may add back the point D, which we omitted above, without changing the cardinality of the set of points on the segment.
                                            
                                            **Theorem 13.** The number of points on a finite line segment is the same as the number of points on an infinite line.
                                            
                                            -   The proof is a simple variation on the proof for [Theorem 12][17]. Imagine the mirror image of the figure used in [Theorem 12][18] (a "backward Z"), with a new point, D', to the left of C, and a new point, B', to the left of A. We would then prove that two line segments (AD and AD') together contain the same number of points as the infinite line. But the two line segments together make one longer, though still finite segment. Therefore, the number of points in a finite segment equals the number of points on an infinite line.
                                                
                                                **Definition**. The number of real numbers is the same as the number of points on an infinite line; or in the jargon, the *numerical continuum* has the same cardinality as the *linear continuum*.
                                                
                                                -   Notation. Let **c** (lower-case "c" for "continuum") designate the cardinality of the continuum —or equivalently, the cardinality of the set of real numbers. Hence **c** = |**R**| by definition.
                                                    
                                                    **Theorem 14.** **c** + **c** = **c**.
                                                    
                                                    -   *Proof*. One finite line segment of arbitrary length has **c** points (Theorems [12][19] and [13][20]). A second of arbitrary length has **c** points. Together they make a longer, though still finite line segment, hence one which has **c** points.
                                                    -   Therefore we have as corollaries, 2**c** = **c**, 3**c** = **c**, and *n***c** = **c** for every positive integer *n*.
                                                        
                                                        **Theorem 15.** 0 · **c** = **c**.
                                                        
                                                        -   *Proof*. Think of an infinite line as marked off into unit segments, like a ruler. Clearly the segments could be put into one-to-one correspondence with the natural numbers. Hence there are denumerably many, or 0, such segments. But from [Theorem 13][21] we know that each segment has **c** points. But the whole line also has **c** points (by definition of **c**). Hence the whole line has as many points, **c**, as the number of segments, 0, times the number of points per segment, **c**.
                                                            
                                                            **Theorem 16.** The set of real numbers is uncountable, or |**R**| > 0.
                                                            
                                                            -   Equivalently, this theorem asserts that **c** > 0.
                                                            -   *Proof*. Again we use a negative proof. Assume that the real numbers *can* be put into one-to-one correspondence with the natural numbers. Take the set of real numbers between 0 and 1. Express terminating decimal fractions as non-terminating decimal fractions; for example, 0.5 becomes 0.4999.... Now under our assumption pair off the natural numbers with the reals between 0 and 1, thus:
                                                                
                                                                <table><tbody><tr><td>&nbsp;&nbsp;0&nbsp;&nbsp;</td><td><img src="https://web.archive.org/web/20000823015204im_/http://www.earlham.edu/~peters/writing/2headarr.gif"></td><td>&nbsp;&nbsp;0.</td><td>d</td><td>d</td><td>d</td><td>d</td><td>...</td></tr><tr><td colspan="8"></td></tr><tr><td>&nbsp;&nbsp;1&nbsp;&nbsp;</td><td><img src="https://web.archive.org/web/20000823015204im_/http://www.earlham.edu/~peters/writing/2headarr.gif"></td><td>&nbsp;&nbsp;0.</td><td>d</td><td>d</td><td>d</td><td>d</td><td>...</td></tr><tr><td colspan="8"></td></tr><tr><td>&nbsp;&nbsp;2&nbsp;&nbsp;</td><td><img src="https://web.archive.org/web/20000823015204im_/http://www.earlham.edu/~peters/writing/2headarr.gif"></td><td>&nbsp;&nbsp;0.</td><td>d</td><td>d</td><td>d</td><td>d</td><td>...</td></tr><tr><td colspan="8"></td></tr><tr><td>&nbsp;&nbsp;...&nbsp;&nbsp;</td><td><img src="https://web.archive.org/web/20000823015204im_/http://www.earlham.edu/~peters/writing/2headarr.gif"></td><td>&nbsp;&nbsp;...</td><td><br></td><td><br></td><td><br></td><td><br></td><td><br></td></tr></tbody></table>
                                                                
                                                                where d is some digit.
                                                                
                                                                Now starting with the upper left d, move diagonally down and to the right, following the yellow highlights. Change each d we encounter to some other digit, for example, incrementing it by one, and changing 9 to 0. In this way we construct a new decimal fraction that is demonstrably nowhere on our list, for it differs from the first one in the first decimal place, from the second in the second place, and so on. But this contradicts our assumption that we have exhaustively listed all the real numbers between 0 and 1. Therefore the assumption is false and the reals *cannot* be put into one-to-one correspondence with the naturals. But the reals are at least as numerous as the naturals and cannot have the smaller cardinality. Therefore, the cardinality of the set of real numbers is greater than the cardinality of the set of natural numbers.
                                                                
                                                                Now we have only to prove that the number of reals between 0 and 1 is the same as the number of all the reals. But this follows directly from [Theorem 13][22].
                                                                
                                                                **Theorem 17.** The power set of the set of natural numbers has the same cardinality as the set of real numbers, or |***N**| = |**R**| = **c**.
                                                                
                                                                -   *Proof*. We know from the proof of [Theorem 3][23] above that every set of natural numbers can be represented as a denumerable string of "yeses" and "noes". These denumerable strings, in turn, can be put into one-to-one correspondence with the denumerable strings of "1's" and "0's". These strings, in turn, can be put into one-to-one correspondence with the real numbers between 0 and 1 if we put a decimal point at the left end each denumerable string of 1's and 0's, and regard the result as a fraction in base two. (We can purge this set of numeral strings of repetitions without reducing the cardinality of the set; if you don't believe me, see the post-script below.) Finally, these real numbers between 0 and 1 can be put into one-to-one correspondence with all the reals, as we saw in [Theorem 13][24].
                                                                -   Post-script. To convert a string of 1's and 0's into a binary fraction, just tack a decimal point (or a zero and then a decimal point) onto the left end. For example, 111000... becomes 0.111000..., which equals 1/2 + 1/4 + 1/8 + 0/16 + 0/32.... Some of these fractions will equal others, for example, 0.1000... = 0.0111.... (For clarity, remember that in base 10, 0.5000... = 0.4999..., as we saw in [Theorem 16][25].) There are at most countably many such repetitions. We know this because if we take all the fractions that consist of "000..." at some point in their expansions, and cut off the trailing zeroes, we will produce distinct, finite strings of 1's and 0's. But there are at most countably many such finite strings, according to [Theorem 11][26]. Now we know from [Theorem 16][27] that there are uncountably many real numbers between 0 and 1. Hence to delete the countably many repetitions would leave us with the same uncountable cardinality we started with, according to [Theorem 9][28]. kkk
                                                                -   Remembering that |**N**| = 0 (by definition), we may use the notation introduced in [Theorem 5][29] to restate this theorem thus: **c** = 20 (2 to the power of 0, in case your browser choked on this expression).
                                                                    
                                                                    **Theorem 18.** The set of points in a square has the same cardinality as the set of points on one of its edges (namely, **c**).
                                                                    
                                                                    -   *Proof*. We know from Theorems [12][30] and [13][31] that the number of points in a finite line segment is **c**. Now we need only show that the number of points inside a square is also **c**. First, think of left and bottom edges of the square as collinear with the x and y axes of a Cartesian coordinate system. Every distinct point inside the square, therefore, has a distinct pair of real numbers to identify it; one is its position on the x axis, the other its position on the y axis. Now interlace these two numbers as we did in Theorems [1][32] and [7][33]. For example, if the x axis position is 0.125000... and the y axis position is 0.333..., then interlace these two decimal fractions digit by digit to make 0.1323530303030.... We now have a single real number, rather than a pair of real numbers, to correspond to each point inside the square. Each of these new, interlaced numbers is a real number between 0 and 1. We know from [Theorem 16][34] that there are at most **c** of these. But since they correspond to the points inside a square we also know that there are at least **c** of them. Therefore, there are exactly **c** of them.
                                                                    -   Intensively for the three years from 1871 to 1874 Cantor labored to prove this theorem false. Then he surprised himself by proving it true. "I see it, but I don't believe it," he wrote to Dedekind.
                                                                        
                                                                        **Theorem 19.** **c** · **c** = **c**.
                                                                        
                                                                        -   This theorem follows directly from [Theorem 18][35].
                                                                        -   As corollaries of this theorem, we have **c** · **c** · **c** = **c**, and **c** · **c** · **c** · ... · **c** = **c**, or in short, **c**n = **c** when *n* is any positive integer.
                                                                            
                                                                            **Theorem 20.** The set of all points in a cube has the same cardinality as the set of all points in one of its edges, namely, **c**.
                                                                            
                                                                            -   The proof is a simple variation of that for [Theorem 18][36]. In fact, it is equivalent to one of the corollaries of [Theorem 19][37]. Each point inside the cube will have three coordinates, not two. Hence we interlace three decimal fractions, not two. The rest of the proof is the same as for [Theorem 18][38].
                                                                                
                                                                                **Theorem 21.** The set of all points in an infinite plane has the same cardinality as the set of all points in a finite line segment, namely, **c**.
                                                                                
                                                                                -   *Proof*. Think of the plane as marked off into an infinite number of square cells, like graph paper. First we show that there will be denumerably many, or 0, such square cells. Pick one cell arbitrarily, and number it 0. Go to the cell above it and number that cell 1. Go one cell to the right and number it 2. Continue in this way to circle the "0" cell. The result will be a spiral that would eventually cover the plane. Yet each cell contains a natural number. Hence the cells and the natural numbers can be put into one-to-one correspondence. Second we note that each cell contains **c** points, under [Theorem 18][39]. Therefore, the number of points in the infinite plane is the number of cells, 0, times the number of points in a cell, **c** (by [Theorem 18][40]), which we know is equal to **c** (by [Theorem 15][41]).
                                                                                    
                                                                                    **Theorem 22.** 0 · 0 = 0.
                                                                                    
                                                                                    -   The proof of this theorem was already encapsulated in the proof of [Theorem 21][42] when we showed that there were denumerably many, or 0, cells in the infinite graph paper of the Euclidean plane. But another way to ascertain the number of such cells is to take the product of the 'length' of the plane (in cells) and the 'width' of the plane (in cells). But the plane is 0 cells 'high', and 0 cells 'wide'. Hence the number of cells is 0 · 0. However, we already know the number of cells (from [Theorem 21][43]) to equal 0.
                                                                                        
                                                                                        **Theorem 23.** The set of all points in infinite, 3-dimensional, Euclidean space has the same cardinality as the set of all points in a finite line segment, namely, **c**.
                                                                                        
                                                                                        -   The proof is a variation on that of [Theorem 21][44]. We divide the space into cubes, rather than the plane into squares. Our spiraling path which puts the natural numbers into one-to-one correspondence with the cubes will be more complex, but perhaps you can visualize it. The rest of the proof is the same, except that we use [Theorem 20][45] rather than [Theorem 18][46].
                                                                                            
                                                                                            **Theorem 24.** The set of all points in 0-dimensional space has the same cardinality as the set of all points in a finite line segment, namely, **c**).
                                                                                            
                                                                                            -   *Proof*. If the set of all points in 3-dimensional space is **c**3, then the set of all points in 0-dimensional space is **c**0. But under [Theorem 17][47], the latter number equals (20)0, which in turn equals 2(0 · 0), which (by [Theorem 22][48]) equals 20, which (by [Theorem 17][49]) equals **c**.
                                                                                                
                                                                                                **Definition**. The *continuum hypothesis* (CH) asserts that there is no cardinal number *a* such that 0 < *a* < **c**.
                                                                                                
                                                                                                -   Since by [Theorem 17][50], **c** = |***N**| = |**R**|, we could use any of the latter two expressions in place of **c** in stating CH.
                                                                                                -   From CH it follows that the next largest transfinite cardinal after 0 is **c**. Hence it also follows that **c** = 1. Since we already know (from [Theorem 17][51]) that 20 = **c**, CH allows us to say that 20 = 1.
                                                                                                -   The commonly heard assertion that **c** = 1 assumes CH. The widespread acceptance of the assertion by mathematicians therefore attests to the general acceptance of CH in the profession. (Without CH we have essentially no idea which Aleph corresponds to **c**, and we would know the cardinality of the naturals, integers, and rationals, but not the cardinality of the reals.)
                                                                                                -   Cantor formulated CH, and spent the last years of his career unsuccessfully trying to prove it. His failure obsessed him and caused recurring bouts of serious depression. To prove or disprove CH was the first problem on David Hilbert's famous 1900 list of important unsolved problems in mathematics.
                                                                                                -   Similarly, attempts to prove or disprove CH, or to prove it undecidable, consumed most of Kurt Gödel's 36 years at the Institute for Advanced Study. But he did produce an important partial proof. In 1938, Gödel showed that CH cannot be disproved from the axioms of Zermelo-Fraenkel (ZF) set theory, the closest thing we have to "standard" set theory. This meant that the negation of CH (notation: ~CH) could not be derived from the ZF axioms. And this in turn entailed that CH could be assumed and used in standard set theory without introducing any inconsistencies that were not already there. Gödel in effect proved that CH was as harmless as the less exotic propositions that already comprised set theory. That is the main reason why most mathematicians accept CH today.
                                                                                                -   In 1963 Paul Cohen showed that CH cannot be proved from the ZF axioms. Together, Gödel and Cohen's results show that CH is *independent* of the ZF axioms: neither it nor its negation can be derived from them. Among other things, this means that CH is *undecidable* in ZF. After Euclid's parallel postulate, CH was the first major conjecture to be proved undecidable by standard mathematics. Its independence also means that ~CH is just as consistent with standard set theory as CH itself. This has allowed set theorists to develop set theories with and without it, just as geometers can develop geometries with or without Euclid's parallel postulate. Set theory with ~CH rather than CH is usually called *Non-Cantorian* set theory.
                                                                                                    
                                                                                                    **Definition**. The *generalized continuum hypothesis* (GCH) asserts that 2a = a+1 for every positive integer *a*.
                                                                                                    
                                                                                                    -   When *a*=0, GCH yields the ordinary CH.
                                                                                                    -   GCH implies that, starting with 0, we can march through the transfinite cardinals with the power set operation, and will not skip any. It follows that for every infinite set S, if |S| = n, then |*S| = n+1, or that the only transfinite cardinals are |**N**|, |***N**|, |****N**|, |*****N**|, ....
                                                                                                        
                                                                                                        **Bibliographic note**. Most of the theorems and proofs in this crash course were discovered by Georg Cantor (1845-1918) and published in a series of monographs starting in 1870. He published two summary statements of his results in 1895 and 1897, which have been translated into English by Philip E. B. Jourdain as *Contributions to the Founding of the Theory of Transfinite Numbers*, Dover Publications, 1955. My exposition of Cantor's results is indebted to three more recent authors: Stephen Cole Kleene, *Introduction to Metamathematics*, North-Holland Pub. Co., 1952; Abraham Fraenkel, *Abstract Set Theory*, North-Holland Pub. Co., 1953; and Geoffrey Hunter, *Metalogic*, University of California Press, 1971.
                                                                                                        
                                                                                                    
                                                                                                
                                                                                            
                                                                                        
                                                                                    
                                                                                
                                                                            
                                                                        
                                                                    
                                                                
                                                            
                                                        
                                                    
                                                
                                            
                                        
                                    
                                
                            
                        
                    
                
            
        
    

[1]: https://web.archive.org/web/20000823015204/http://www.earlham.edu/~peters/writing/infapp.htm#thm3
[2]: https://web.archive.org/web/20000823015204/http://www.earlham.edu/~peters/writing/infapp.htm#thm5
[3]: https://web.archive.org/web/20000823015204/http://www.earlham.edu/~peters/writing/infapp.htm#thm6
[4]: https://web.archive.org/web/20000823015204/http://www.earlham.edu/~peters/writing/infapp.htm#thm6
[5]: https://web.archive.org/web/20000823015204/http://www.earlham.edu/~peters/writing/infapp.htm#ch
[6]: https://web.archive.org/web/20000823015204/http://www.earlham.edu/~peters/writing/infapp.htm#thm5
[7]: https://web.archive.org/web/20000823015204/http://www.earlham.edu/~peters/writing/infapp.htm#thm1
[8]: https://web.archive.org/web/20000823015204/http://www.earlham.edu/~peters/writing/infapp.htm#thm6
[9]: https://web.archive.org/web/20000823015204/http://www.earlham.edu/~peters/writing/infapp.htm#thm8
[10]: https://web.archive.org/web/20000823015204/http://www.earlham.edu/~peters/writing/infapp.htm#thm8
[11]: https://web.archive.org/web/20000823015204/http://www.earlham.edu/~peters/writing/infapp.htm#thm9
[12]: https://web.archive.org/web/20000823015204/http://www.earlham.edu/~peters/writing/infapp.htm#thm8
[13]: https://web.archive.org/web/20000823015204/http://www.earlham.edu/~peters/writing/infapp.htm#thm16
[14]: https://web.archive.org/web/20000823015204/http://www.earlham.edu/~peters/writing/infapp.htm#thm9
[15]: https://web.archive.org/web/20000823015204/http://www.earlham.edu/~peters/writing/infapp.htm#thm3
[16]: https://web.archive.org/web/20000823015204/http://www.earlham.edu/~peters/writing/infapp.htm#thm7
[17]: https://web.archive.org/web/20000823015204/http://www.earlham.edu/~peters/writing/infapp.htm#thm12
[18]: https://web.archive.org/web/20000823015204/http://www.earlham.edu/~peters/writing/infapp.htm#thm12
[19]: https://web.archive.org/web/20000823015204/http://www.earlham.edu/~peters/writing/infapp.htm#thm12
[20]: https://web.archive.org/web/20000823015204/http://www.earlham.edu/~peters/writing/infapp.htm#thm13
[21]: https://web.archive.org/web/20000823015204/http://www.earlham.edu/~peters/writing/infapp.htm#thm13
[22]: https://web.archive.org/web/20000823015204/http://www.earlham.edu/~peters/writing/infapp.htm#thm13
[23]: https://web.archive.org/web/20000823015204/http://www.earlham.edu/~peters/writing/infapp.htm#thm3
[24]: https://web.archive.org/web/20000823015204/http://www.earlham.edu/~peters/writing/infapp.htm#thm13
[25]: https://web.archive.org/web/20000823015204/http://www.earlham.edu/~peters/writing/infapp.htm#thm16
[26]: https://web.archive.org/web/20000823015204/http://www.earlham.edu/~peters/writing/infapp.htm#thm11
[27]: https://web.archive.org/web/20000823015204/http://www.earlham.edu/~peters/writing/infapp.htm#thm16
[28]: https://web.archive.org/web/20000823015204/http://www.earlham.edu/~peters/writing/infapp.htm#thm9
[29]: https://web.archive.org/web/20000823015204/http://www.earlham.edu/~peters/writing/infapp.htm#thm5
[30]: https://web.archive.org/web/20000823015204/http://www.earlham.edu/~peters/writing/infapp.htm#thm12
[31]: https://web.archive.org/web/20000823015204/http://www.earlham.edu/~peters/writing/infapp.htm#thm13
[32]: https://web.archive.org/web/20000823015204/http://www.earlham.edu/~peters/writing/infapp.htm#thm1
[33]: https://web.archive.org/web/20000823015204/http://www.earlham.edu/~peters/writing/infapp.htm#thm7
[34]: https://web.archive.org/web/20000823015204/http://www.earlham.edu/~peters/writing/infapp.htm#thm16
[35]: https://web.archive.org/web/20000823015204/http://www.earlham.edu/~peters/writing/infapp.htm#thm18
[36]: https://web.archive.org/web/20000823015204/http://www.earlham.edu/~peters/writing/infapp.htm#thm18
[37]: https://web.archive.org/web/20000823015204/http://www.earlham.edu/~peters/writing/infapp.htm#thm19
[38]: https://web.archive.org/web/20000823015204/http://www.earlham.edu/~peters/writing/infapp.htm#thm18
[39]: https://web.archive.org/web/20000823015204/http://www.earlham.edu/~peters/writing/infapp.htm#thm18
[40]: https://web.archive.org/web/20000823015204/http://www.earlham.edu/~peters/writing/infapp.htm#thm18
[41]: https://web.archive.org/web/20000823015204/http://www.earlham.edu/~peters/writing/infapp.htm#thm15
[42]: https://web.archive.org/web/20000823015204/http://www.earlham.edu/~peters/writing/infapp.htm#thm21
[43]: https://web.archive.org/web/20000823015204/http://www.earlham.edu/~peters/writing/infapp.htm#thm21
[44]: https://web.archive.org/web/20000823015204/http://www.earlham.edu/~peters/writing/infapp.htm#thm21
[45]: https://web.archive.org/web/20000823015204/http://www.earlham.edu/~peters/writing/infapp.htm#thm20
[46]: https://web.archive.org/web/20000823015204/http://www.earlham.edu/~peters/writing/infapp.htm#thm18
[47]: https://web.archive.org/web/20000823015204/http://www.earlham.edu/~peters/writing/infapp.htm#thm17
[48]: https://web.archive.org/web/20000823015204/http://www.earlham.edu/~peters/writing/infapp.htm#thm22
[49]: https://web.archive.org/web/20000823015204/http://www.earlham.edu/~peters/writing/infapp.htm#thm17
[50]: https://web.archive.org/web/20000823015204/http://www.earlham.edu/~peters/writing/infapp.htm#thm17
[51]: https://web.archive.org/web/20000823015204/http://www.earlham.edu/~peters/writing/infapp.htm#thm17

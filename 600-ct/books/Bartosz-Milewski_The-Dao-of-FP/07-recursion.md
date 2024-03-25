# 7. Recursion

7. Recursion
  - 7.1 Natural Numbers
    - Introduction Rules
    - Elimination Rules
    - In Programming
  - 7.2 Lists
    - Elimination Rule
  - 7.3 Functoriality


Recursion is a decomposition pattern that splits a single task into many steps, the number of which is potentially unbounded.

Recursion is based on suspension of disbelief. You are faced with a task that may take arbitrarily many steps. You tentatively assume that you know how to solve it. Then you ask yourself the question: how would I make the last step if I had the solution to everything but the last step.

## 7.1 Natural Numbers

In CT, an object of natural numbers ℕ does not contain numbers - since objects have no internal structure - structure is defined by arrows.

We can use an arrow from the terminal object to define one special element, and by convention we call this arrow zero, `Z : 1 -> ℕ`.

But we have to be able to define infinitely many arrows to account for the fact that, for every natural number, there is another number that is larger.

We can formalize this statement: suppose that we know how to create a natural number `n : 1 -> ℕ`, then how do we make the next step, the step that will point us to the next number, its successor.

This next step doesn't have to be any more complex than just post-composing `n` with an arrow that loops back from ℕ to ℕ. This arrow should not be the identity, because we want the successor of a number to be different from that number. A single such arrow, we'll call successor, will suffice.

The element corresponding to the successor of `n` is given by the composition:

1 -> ℕ -> ℕ

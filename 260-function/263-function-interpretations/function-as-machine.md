# Function-as-machine

1. The formal definition of a *function* relates a set of inputs to a set of outputs:

Given a set of inputs `X` and 
a set of possible outputs `Y`, 
a function is relation between these sets, 
i.e. a collection of ordered pairs `(x,y)`, 
where `x ∈ X` and `y ∈ Y`, 
that satisfies one condition: 
every element `x` in the domain `X` 
must be paired with 
exactly one element `y` in the codomain `Y`.

So, a function `f` is a set of ordered pairs. 
Since we know each element `x ∈ X` is paired 
with exactly one element `y ∈ Y`, 
we may also denote this element as `y = f(x)`, 
such that the ordered pairs are denoted by `(x, f(x))`.


2. Besides the formal definition, functions may be described in other ways, one of which is the *function machine* metaphor, or *function as a black box*:

We can view a *function as a device* that takes an object form its domain and turns it into a different object that belongs to the function's codomain.

This device can be imagined as 
a transformation machine 
with an intake and outtake funnel. 
You put an object into its input funnel, 
and if the object matches the funnel, 
the function accepts it and processes that object, 
turning it into anther object, 
which it then dispatches through its output chute.
It's like a digestive machine 
eating inputs and shitting outputs.

The function machine metaphor can be used to explain many important properties of functions and concepts involving functions. **Domain** is a set of objects that fit into the input funnel and can be processed by the function machine. **Codomain** can be thought of as a set of objects that could theoretically fit out the chute. **Range** is a set of objects that would come out the chute if you put all the elements of the domain into the funnel. **The unique pairing**: the machine should always produce an output when you put in an input. If you put in the same input multiple times, the machine should always yield the same output. In this way, each element of the domain is paired with exactly one output from the codomain. **Parameters** of a function can be viewed as dials that change the behavior of the function machine. One can use multiple function machines to illustrate the **composition** of functions. **Function inverse** is equivalent to running the machine backwards. But, had two different input elements were transformed into the same output element, the backward function machine wouldn't know which of the input elements to spit out and the inverse wouldn't be defined.

# Function application

## Function application in mathematics


In programming languages, expecially functional ones that have pure (mathematical) functions, it is said that a function is applied to an argument. This phrasing emphasizes the active role of functions, which are also first-class values in such languages, while the argument is a passive value that gets eaten by the action Jackson function. Languages with these features may also take advantage of lazy evaluation, under which the application of a function to a argument does not touch that argument at all. It is passed into the function as is, and whether it will get evaluated at all is then dictated by the need for it. Lambda calculus (which is the basis of such languages) defines many evaluation (reduction) strategies including the one we are interested here in relation to math, called *call-by-need*. For example, the constant function (which is actually a constant function maker) is usually defined in LC as `KI := λab.b`. Applying it to the first argument (it takes 2 args), does not examine the argument. The argument is completely untouched and gets passed into the function as is. If the argument is a value the effects of lazy evaluation would go unnoticed (as it is already completely evaluted), but arguments which are unevaluated expressions get passed as they are. So, since the KI function actually does not use its first argument, the argument remains unevaluted and gets discarded. This means that an argument, whose evaluation would trigger a fatal error, does nothing of the sort and the call succeeds. For example, Haskell, which is a very math orientated language, has the error condition as a value, called `undefined`. This value is the result of disasters and failures, like when a function diverges or when a division by zero occurs.

```hs
const :: a -> b -> b
const x y = x

_ = const undefined 1 -- succeeds and returns 1
```

Now, math has pure functions and the application of a function to an argument remains underdefined in math general. Math does not prescibe an evalution strategy as there probably wasn't a need for it. Function arguments are commonly unambiguous concerning the issue of thir evlaution. That is, should the argument be evaluted down to a value before being fed to the function or not? With simple arguments (args that are already values, i.e. numbers) this issue makes little difference. However, what about situations such as this:

```
f(x) = x²
f(2) = 4
f(2/0) = ?
```

Sure, in this example the division by zero would occur sooner or later, so the error is imminent, even if the evaluation only happens in the mind. But we can easily construct functions where the choice of evalution strategy would determine whether the error occurs or not.

This is a common math practice - many things are left underdefined if at all, leaving it up to the conventions, intuition and feelings to guide the evaluation process. In math texts, the author has the final verdict and is free to decide how things are to be interpreted, even if the rules set by them are restricted to a page, paragraph, a snippet, or the entire book. The phrase "we'll treat A as B only in the following expression" is not rarely encountered.

In the end, maybe it's a good thing that math leaves many details for authors to define, but still there ought to be some general rules when we stumble into an interesting snippet, so we know how to interpret it. Leave it underdefined but lay some default rules, math. (this is obviously a non-issue, but its nice to be sure we're not sweating in the wrong direction). With all the rigor it demands, it sure likes to have screws loose.

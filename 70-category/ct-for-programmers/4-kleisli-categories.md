# Kleisli Categories

Besides modeling types and pure functions, category theory has a way to model side effects or non-pure functions as a category.


## Writer in C++
<!-- #region Writer in C++ -->

For example, a function that logs that it was executed. It is not a pure function because its would fail if memoized (memoization is a quick litmus test to assert the purity of a function). In imperative languages, that would likely be implemented by mutating a global state. 

```c#
// C++
string logger;

bool negate(bool b) {
  logger += "negate called";
  return !b;
}
```

In modern programming, we try to stay away from global mutable state as much as possible, particularly in presence of concurrency. In this case, it is easy to make `negate` a pure function by passing the log explicitly, in and out. We should also make the output a pair (2-tuple), separating the regular output from the logging string:

```c#
// C++
pair<bool, string> negate(bool b, string logger) {
  return make_pair(!b, logger + "negate called.");
}
```

This function is pure, it returns the same pair every time it's called with the same arguments, and it can be memoized if necessary. However, considering the cumulative nature of the log, you'd have to memoize all possible histories that can lead to a given call. Although, the callers are free to ignore the string in the return type, they are forced to pass a string as input, which might be inconvenient. We need to separate the concerns and have a function do its thing, without dealing with logging.

```c#
// C++
pair<bool, string> negate(bool b) {
  return make_pair(!b, "negate called.");
}
```

The idea being the log gets aggregated between function calls. And for that we need a better example - a function from string to string that turns lower case into upper case characters, and a function that splits a string into a vector of strings:

```c#
// C++
string toUpper(string s) {
  string result;
  int (*toupperp)(int) = &toupper; // toupper is overloaded
  transform(begin(s), end(s), back_inserter(result), toupperp);
  
  return result;
}

vector<string> toWords(string s) {
  return words(s);
}

// The actual work is done in the auxiliary function words:
vector<string> words(string s) {
  vector<string> result{""};
  for (auto i = begin(s); i != end(s); ++i) {
  if (isspace(*i))
    result.push_back("");
  else
    result.back() += *i;
  }

  return result;
}
```

We want to modify the functions `toUpper` and `toWords` so that they piggyback a message string on top of their regular return values.

We'll decorate the return values of these functions in a generic way, by defining a template `Writer` that encapsulates a pair whose first component is a value of arbitrary type, while the second component is a string:

```c#
template<class A>
using Writer = pair<A, string>;

// decorated functions:
Writer<string> toUpper(string s) {
  string result;
  int (*toupperp)(int) = &toupper;
  transform(begin(s), end(s), back_inserter(result), toupperp);
  return make_pair(result, "toUpper ");
}

Writer<vector<string>> toWords(string s) {
  return make_pair(words(s), "toWords ");
}
```

We'd like to compose these two functions into another decorated function that uppercases a string and splits it into words, which also produces a log of those actions.

```c#
Writer<vector<string>> process(string s) {
  auto p1 = toUpper(s);
  auto p2 = toWords(p1.first);
  return make_pair(p2.first, p1.second + p2.second);
}
```

This meets our goal: the aggregation of the log is no longer the concern of the individual functions. They produce their own messages, which are then, externally, concatenated into a larger log


Writing the programs in this style would be full of repetitive code, which calls for abstraction. However, this is not the usual (value level) abstraction because we have to abstract function composition. Since composition is the essence of category theory, before we write more code, it would be beneficial to analyze the problem from the categorical point of view.

<!-- #endregion -->

## Writer Category
<!-- #region Writer Category -->

Since the decorated (embellished) functions now return a pair instead of a direct value like before, the composition no longer works due to the input/output mismatch (functions still take a single argument but return a pair).

The steps needed to re-enable composition:
1. Execute the embellished function corresponding to the first morphism.
2. Extract the first component of the result pair and pass it to the embellished function corresponding to the second morphism.
3. Concatenate the second component (the string) of the first result and the second component (the string) of the second result.
4. Return a new pair combining the first component of the final result with the concatenated string.

If we want to abstract this composition as a higher order function in C++, we have to use a template parameterized by three types corresponding to three objects in our category. It should take two embellished functions that are composable according to our rules, and return a third embellished function:

```c#
// c++
template<class A, class B, class C>
function<Writer<C>(A)> compose(function<Writer<B>(A)> m1,
function<Writer<C>(B)> m2) {
  return [m1, m2](A x) {
    auto p1 = m1(x);
    auto p2 = m2(p1.first);
  return make_pair(p2.first, p1.second + p2.second);
  };
}
```

Now we can go back to our earlier example and implement the composition of toUpper and toWords using this new template:

```c#
// c++
Writer<vector<string>> process(string s) {
  return compose<string, string, vector<string>>(toUpper, toWords)(s);
}
```

There is still a lot of noise with the passing of types to the compose template. This can be avoided as long as you have a C++14-compliant compiler that supports generalized lambda functions with return type deduction:

```c#
// c++
auto const compose = [](auto m1, auto m2) {
  return [m1, m2](auto x) {
    auto p1 = m1(x);
    auto p2 = m2(p1.first);
  return make_pair(p2.first, p1.second + p2.second);
  };
};
```

In this new definition, the implementation of process simplifies to:

```c#
// c++
Writer<vector<string>> process(string s) {
  return compose(toUpper, toWords)(s);
}
```

But we are not finished yet. We have defined composition in our new category, but what are the identity morphisms? These are not our regular identity functions! They have to be morphisms from type A back to type A, which means they are embellished functions of the form:

```c#
// c++
Writer<A> identity(A);
```

They have to behave like units with respect to composition. If you look at our definition of composition, you’ll see that an identity morphism should pass its argument without change, and only contribute an empty string to the log:

```c#
// c++
template<class A> Writer<A> identity(A x) {
  return make_pair(x, "");
}
```

You can easily convince yourself that the category we have just defined is indeed a legitimate category. In particular, our composition is trivially associative. If you follow what’s happening with the first component of each pair, it’s just a regular function composition, which is associative. The second components are being concatenated, and concatenation is also associative.

An astute reader may notice that it would be easy to generalize this construction to any monoid, not just the string monoid. We would use `mappend` inside compose and `mempty` inside identity (in place of + and ""). There really is no reason to limit ourselves to logging just strings.

A good library writer should be able to identify the bare minimum of constraints that make the library work - here the logging library’s only requirement is that the log have monoidal properties.

<!-- #endregion -->


## Writer in Haskell
<!-- #region Writer in Haskell -->

We first had normal, easily composable fns:

```hs
f :: a -> b
g :: b -> c
g . f = g $ f x
```

Then we had each fn log its name when accessed. Fns would still take original args, but they would return an extra arg for log (a `String`). Now, these fns are not composable.

In order to compose them, we'll consider unary fns that now return a pair made of any type, `a`, and a `String` (logger), i.e. `(a, String)`. We'll alias this pair as `Writer` (1). Morphisms are now fns (2) from an arbitrary type to a `Writer` type.

We'll declare the composition (3) op as an infix, called "fish". The fish, `>=>`, is a fn of 2 args, with each arg being a fn and returning a fn:
- arg1   `:: (a -> Writer b)`
- arg2   `:: (b -> Writer c)`
- result `:: (a -> Writer c)`


```hs
-- (1)
type Writer a = (a, String)

-- (2): mx :: a -> Writer b

-- (3)
(>=>) :: (a -> Writer b) -> (b -> Writer c) -> (a -> Writer c)
m1 >=> m2 = -- (4)
  \x ->
    let (y, s1) = m1 x -- (5)
        (z, s2) = m2 y -- (6)
    in  (z, s1 ++ s2)  -- (7)

-- (8)
return :: a -> Writer a
return x = (x, "")

-- (9)
upCase :: String -> Writer String
upCase s = (map toUpper s, "upCase ")

toWords :: String -> Writer [String]
toWords s = (words s, "toWords ")

-- (10)
process :: String -> Writer [String]
process = upCase >=> toWords
```

The definition of the fish infix operator (4) takes 2 args `m1` and `m2` and returns a lambda function of arg `x`.

The `let` expression allows declaring auxiliary vars. The result of `m1 x` (5), which is some type and a String, is pattern matched against the pair `(y, s1)`, so `y` is now the result of the first fn and `s1` is a logging detail.

The result of `m2 y`, where `y` was bound in the previous expr, is matched (6) against the pair `(z, s2)`. So `z` becomes the result of fn composition, while `s2` is this fn's logging string.

The overall value of the let expression (7) is specified in its `in` clause: it's a pair whose first component is `z` (the result of fn composition), while the second is the concatenation of logs i.e. strings `s1` and `s2` appended.

The identity morphism for this category is called `return` (8).

Then, we have 2 examples of embellished functions `upCase` and `toWords` (9).

Finally (10), the composition of the two functions is accomplished with
the help of the fish operator.


<!-- #endregion -->


## Kleisli Categories
<!-- #region Kleisli Categories -->

That was an example of a *Kleisli category* which is a category based on a monad.

A Kleisli category has as objects the types of the underlying programming language.

Morphisms from type 𝐴 to type 𝐵 are functions that go from 𝐴 to a type derived from 𝐵 using the particular embellishment.

Each Kleisli category defines its own way of composing such morphisms, as well as the identity morphisms with respect to that composition. (the imprecise term "embellishment" corresponds to the notion of an endofunctor in a category).



<!-- #endregion -->
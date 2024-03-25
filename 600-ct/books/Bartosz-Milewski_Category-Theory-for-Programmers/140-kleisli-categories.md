# Kleisli Categories

<!-- TOC -->

- [Writer in C++](#writer-in-c)
- [Writer Category](#writer-category)
- [Writer in Haskell](#writer-in-haskell)
- [Kleisli Category](#kleisli-category)
- [Kleisli Categories](#kleisli-categories)
    - [4.1 The Writer Category](#41-the-writer-category)
    - [4.2 Writer in Haskell](#42-writer-in-haskell)
    - [4.3 Kleisli category](#43-kleisli-category)

<!-- /TOC -->


Besides modeling types and pure functions, category theory has a way to model side effects or non-pure functions as a category.


<!-- #region Writer in C++ -->

## Writer in C++


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


<!-- #region Writer Category -->
## Writer Category

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


<!-- #region Writer in Haskell -->
## Writer in Haskell

We start from normal, easily composable, fns:

```hs
f :: a -> b
g :: b -> c
g . f = g $ f x
```

But then we need to impl the logging facility (each fn logs its name when accessed). Trying diff approaches, we settle on the one that allows us to keep the formal params of fns as they are, but we have to modify the body of each fn so that they return an extra bit of info, i.e. the log (as a String), meaning each fn will actually return a pair of original output value, `t`, and the log, `String`; so the return type is `(t, String)`, and the input type remains the same as before (`t`), so we have fns of type `t -> (t, String)`.

However, these fns now loose the ability to be composed with (`.`). To restore composition we'll have to come up with a new composition operator. It should take two functions of the type `t -> (t, String)`, f and g, and return a new one of the same type, h, which is g composed with f (g after f).

```hs
(>=>) :: (a -> (b, String))       -- f
      -> (b -> (c, String))       -- g
      ->  a -> (c, String)        -- g >=> f
```

Since our logger is always a String, we'll alias the pair `(t, String)` as the type `Writer t`. Morphisms are now fns from any arbitrary type `t` to the `Writer t` type.

```hs
type Writer t = (t, String)

(>=>) :: (a -> Writer b)       -- f
      -> (b -> Writer c)       -- g
      ->  a -> Writer c        -- g >=> f
```

The type of the fn to be returned, `a -> Writer c`, lacks parenthesis becasue parens don't make a diff for a function in the return position; it is the same whether we accept one more arg, `a`, returning the `Writer c`, or if we return a lambda that has param `a` and the body `Writer c`, as in `\a -> Writer c`.

Each Kleisli category defines own way of *composing morphisms*, including the *identity morphisms* (as a unit of that composition).

```hs
(>=>) :: (a -> Writer b)
      -> (b -> Writer c)
      -> (a -> Writer c)   -- parens here don't make a diff
ma >=> mb = \a ->
    let (b, str_b) = ma a
        (c, str_c) = mb b
    in  (c, str_b ++ str_c)

-- The identity morphism
return :: a -> Writer a
return x = (x, "")
```

The identity morphism for this category is called `return` and it just lifts a value into the Writer; i.e. it wraps (embellishes) a value.

> How about a Writer Monad parameterized by the type w of output to accumulate.



```hs
-- normal functions toUpper and words
toUpper :: String -> String
words   :: String -> [String]
-- can be composed like
h :: String -> [String]
h = words . toUpper

-- embellished functions upCase and toWords
-- must now also produce a log.
-- They cannot be composed with (.) anymore
-- but we can make a new composition operator that can handle such fns
upCase :: String -> Writer String
upCase s = (map toUpper s, "upCase ")

toWords :: String -> Writer [String]
toWords s = (words s, "toWords ")

-- composing two fns with fish op
process :: String -> Writer [String]
process = upCase >=> toWords
```


## Kleisli Category

(This was an example of a) **Kleisli category is a category based on a monad**. 

A Kleisli category has as objects the types of the underlying PL.

Morphisms from type `𝐴` to type `𝐵` are functions that go from `𝐴` to a type derived from `𝐵` using the particular embellishment.

* before: `𝐴 -> 𝐵`
* after: `𝐴 -> m 𝐵` where `m` is a pair `(𝐴, String)` of old output and log
* becoming: `𝐴 -> (𝐵, String)`


**Each Kleisli category defines its own way of composing such morphisms**, as well as the identity morphisms with respect to that composition (the term *embellishment* corresponds to the notion of an endofunctor in a category).


<!-- #endregion -->



<!-- #region Kleisli Categories -->

## Kleisli Categories

Kleisli category is a way to model side effects in category theory. For example, modelling functions that need to log (trace) their execution: each function behaves as normal, but it must log its name when called.


Since we'd like to keep its original signature, we can squeeze in the Log param by making the input and output a pair of the original param and the Log (the Log being the updated log with the current function's log status message).

We have unary fns with the sig:
    f :: a -> b

e.g. the "words" fn:
    words' :: String -> [String]

We need to transform each into a (still unary) fn with the sig:
    ((a, Log) -> (b, Log))

where Log is just an alias for the String type:
    type Log = String

Transformed, the words fn now takes and returns a pair:
    words'' :: (String, Log) -> ([String], Log))

This function is pure, it returns the same pair every time it is called with the same args, and it can be memoized. However, due to the log's cumulative nature, we'd have to memoize all the possible log histories (received as the input Log), multiplying the original output with each possible history track. Moreover, this is a bad API that forces the callers to call it with a pair.

As it is at this point, a fn also aggregates the log in addition to its original job. We need to separate concerns and relieve the fns from aggregating the logged messages by extracting that task. We do want them to produce a logging message since that message is specific for each function, but relieve them from having to append that message to the log.

This means the signature for "words" should instead be:
    words :: String -> ([String], Log))

and the fn to convert the letter case, toUpper, should have this sig:
    toUpper :: String -> (String, Log)

Now we need a decorator that will transform the return type of any unary fn, so we don't have to alter the original fns. The decorator will sneak in the log message with a fn's regular return value, so it returns a pair:
    f :: a -> (b, Log)

Additionally, we'd like to compose these decorated fns just like we composed the original fns, which cannot be now done using the usual "compose" fn due to their input/output type mismatch (they still accept the original type like they used to do, but when decorated they return a pair and not the original type).


### 4.1 The Writer Category

Our starting point is now our regular category of types and functions. We'll still consider the types as objects, but we'll redefine the notion of our MORPHISMS so that they refer to the DECORATED FUNCTIONS.

For instance, to embellish the function `isEven :: Int -> Bool`, we'd turn it into a morphism that is represented by an embellished function. The important point is that this morphism is still considered an ARROW between the objects int and bool, even though the embellished function returns a pair.

By the laws of a category, we should be able to compose this morphism with another morphism that goes from the object bool to whatever. However, we cannot do that with fns as they are because of the input/output mismatch.

Steps to compose two morphisms in this new category we are constructing:
1. Execute the embellished function corresponding to the first morphism
2. Extract the first component of the result pair and pass it to the embellished
   function corresponding to the second morphism
3. Concatenate the second component (the string) of the first result and the
   second component (the string) of the second result
4. Return a new pair combining the first component of the final result with
   the concatenated string.

To abstract this composition into a HOF: it should take two embellished functions that are composable according to our rules, and return a third embellished function.

What about the identity morphisms? These are not our regular identity fns! They have to be morphisms a -> a (from type a back to type a), which means they are embellished functions. They have to behave like units with respect to composition. In this example, identity morphism should pass its argument without change, and only contribute an empty string to the log.

It is now easy to generalize this construction to any monoid, not just the string monoid. We use `mappend` inside compose and `mempty` inside identity (in place of string concatenation operator, +, and the empty string as identity, "")


### 4.2 Writer in Haskell

Writer is parameterized type, equivalent to a pair: (a, String)
Our morphisms are fns from some type to a Writer type:
    a -> Writer b  (that is)  a -> (b, String)

We'll declare composition as an infix operator:
    (>=>) :: (a -> Writer b) -> (b -> Writer c) -> (a -> Writer c)


### 4.3 Kleisli category

Kleisli category is a category based on a monad. 

A Kleisli category wrt Haskell
* has types as objects
* morphisms $$(A \to B)$$ are functions $$(A \to \text{Writer } B)$$    
  That is, from $$A$$ to a type derived from $$A$$ using our custom decorator.
* Each Kleisli category defines:
  - its own way of composing such morphisms
  - its own identity morphisms (identity for such composition)

The imprecise term "embellishment" corresponds to the notion of an *endofunctor* in a category.


<!-- #endregion -->

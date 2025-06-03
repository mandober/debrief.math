# Variables

The iterator variable, commonly `n`, is not a paramter but an internal variable over which we have no direct influence. We can control the lower and upper bound of iteration, but then we have no control over it. It follows the prescribed mechanism in that it gets incremented every cycle, and each cycle constructs one term. We cannot all of a suddent insists that the term with index 6 (which is the 6th term with 1-based indexing) gets some other index, some other `n` value. In fact, the 6th term is in a way already constructed. It was realized with `n` instantiated to 6 and we cannot influence this aspect. Knowing this, we can see that `n` is not a parameter, although the lower and upper bound are. If sigma notation is expressed as a function, it would be a functional that accepts the arguments for lower and upper bound (although it may have defaults for them since they are most often 0 (or 1) and ∞), and another functional argument (funarg) that represents the generating function (that generates the series or a sequence).

```hs
main = do
  putStrLn $ show $ take 20 fib
  putStrLn $ show $ fib !! 5
  putStrLn $ show $ xs1
  putStrLn $ show $ ser1

fib = 0 : 1 : [ a+b | (a,b) <- zip fib (tail fib) ]

-- sequences

sek :: Double -> (Double -> Double) -> [Double]
sek j f = [ f n | n <- [j..] ]

seq10 f = take 10 $ sek 1 f
xs1 = seq10 (\x -> 1 / (2 * exp x))

-- series

series :: Double -> Double -> (Double -> Double) -> Double
series j m f = sum [ f n | n <- [j..m] ]

ser1 = series 2 10 (\x -> 1 / (1 - x))
```

When variable `x` makes appearance then the series is a power series. Variable `x` represents the input values (x-values) and it normally ranges over the real number line, `x ∈ ℝ`. The result of a series (sum) is the corresponding `y` value. When we take these two as `(x, y)` pairs, we can plot the function that represents the series in a coordinate system to get a curve. Howver, in a way, all these inputs as x-values were already fed into the function and all the corresponding y-values have already been calculated the moment we defined the function (as a generating formula for the series). So the resulting curve is already known. In that sense, although `x` seems as a variable we control, it actually is less so, since all the distinct values of `x` have already been calculated, thereby resulting in a curve. Sure, we can take some specific `x` values and explicitly evaluate the function at those values. We can then pretend the curve is not already calulated, so we can do it manually by plotting abunch of `(x, y)` coordinates obtained by explicitly evaluating the function at those `x` inputs to get the corresponding `y` outputs. We can keep doing this until we get enough points plotted to infer the shape of the curve.

Thus, `n` is an internal variable, and `x` (in power series) ranges over ℝ, which can be interpreted that all possible values of `x` have already been fed into the function since we get the graph of the function in the form of a curve as soon as we define the function (if we are doing this a graphing calculator like `desmos`).

This suggest there are no true parameters and thus arguments that these entities require, although we certainly can force some (but to what purpose?).

This is true for functions in general, at least for functions with parameters for which we know over which set they range. A function with a single parameter that ranges over reals, is in a way, determined as soon as it is defined. The graph os the function is known and determined and already plotted in some idealized, abstract, heavenly Cartesian coordinate system (somewhere, out there) as soon as we define the function. All its input x-values have been instantaneously evaluated and the corresponding y-values obtained (the moment the function is defined).

>In this sense, the function is fully determined as soon as it is defined.

We can, however, introduce proper parameters, like a parameter that would allow us to horizontally shift the curve (defined by the function) in the coordinate plane. Another parameter to shift it vertically. Another to contract and expand the curve horizontally. And another to contract and expand the curve vertically. That is 4 proper parameters that would allows us to manipulate the function and its curve. These would be true parameters, but `x` is not of that sort, although technically it is a parameter (that is matched with arguments). `x` is more constrained and - yes, continuous! - taking on all the values of the x-axis (instantaneously rather then eventually). The 4 parameters above are not *automatic* like that; each one needs to be explicitly specified as an argument to the function. In desmos, they are realized as sliders ranging over some arbitrary range, but each only provides a single value at any one time, unlike `x` args. In fact, `x` cannot be manipulated (at least not directly) at all.

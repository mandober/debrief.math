# Inverse of trig function

Inverse of a general function `f(x)` is `-f(x)`. Or maybe the inverse of a general function `y = sin(x)` is actually `x = sin(y)`?

Usually, to find the inverse of a function, we swap `x`'s and `y`'s in the equation, and then isolate `y` alone on a side.

```js
y = 2x + 3       // to find the inverse of this function
x = 2y + 3       // swap x's and y's consistently
2y = x - 3       // isolate y
y = (x - 3)/2    // done
```

In the graph plotted after a function `f(x)`, all coordiante pairs have the form `(x, y)`. In the graph of `f⁻¹(x)`, the coordiantes are swapped `(y, x)`.

- f(x) = 2x + 3
- g(x) = f⁻¹(x) = (x - 3)/2

x  | 2x+3 | (x-3)/2 | notes
---|------|---------|-----------------
-5 | -7   | -4      | 
-4 | -5   | -7/2    | 
-3 | -3   | -3      | intersection
-2 | -1   | -5/2    | 
-1 |  1   | -2      | 
 0 |  3   | -3/2    | 
 1 |  5   | -1      | 
 2 |  7   | -1/2    | 
 3 |  9   |  0      | 
 4 | 11   |  1/2    | 
 5 | 13   |  1      | 
 6 | 15   |  3/2    | 


- f: (0, 3),  (1, 5), (2, 7), …
- g: (0,⁻3⁄2), (1,-1), (2,⁻1⁄2), …

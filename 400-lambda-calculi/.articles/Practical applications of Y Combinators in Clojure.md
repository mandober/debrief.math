---
created: 2021-08-30T01:58:48 (UTC +02:00)
tags: []
source: https://web.archive.org/web/20201112042344/http://www.viksit.com/tags/clojure/practical-applications-y-combinator-clojure/
author: 
---

# Practical applications of Y Combinators in Clojure

> ## Excerpt
> Practical applications of Y or fixed point combinators in Clojure

---
When the term _Y Combinator_ is mentioned in most technology circles today, the image it usually conjures up is of the well known startup incubator with their orange logo and a list of famous funded companies. There’s a very interesting reason they chose this name, and their FAQ page [1][1] gives some context on why they did so,

> The Y combinator is one of the coolest ideas in computer science. It’s also a metaphor for what we do. It’s a program that runs programs; we’re a company that helps start companies.

Which of course begs the question –  why are Y Combinators so cool and are there any real reasons to know about them?

This post aims to provide insight into some practical applications of Y Combinators, and I highly recommend reading some of the following resources on the topic that do a great job in articulating the theory behind them. [2][2] [3][3] [4][4]

## A gentle introduction

Let’s assume we want to write a recursive function that does something useful, but with a catch – we don’t want to invoke this recursive function _**directly**_ from within itself. Why would we want to do this? Multiple reasons might force us to – perhaps we’d like to avoid stack overflows, or perhaps there are other deeper reasons which are out of the scope of this post. [5][5] [6][6]. Irrespective – how then would we go about doing so?

In other words, the problem we’re trying to solve is to “introduce a self reference to the function, without a **direct** self reference”.

Before diving into the programming aspects, let’s consider this in a purely mathematical form. A recursive function can be defined partly by itself. So, in the case of the Fibonacci series,

  
![\text{Fib}(0)=0\text{ as base case 1,}](https://web.archive.org/web/20201112042344im_/http://s0.wp.com/latex.php?latex=%5Ctext%7BFib%7D%280%29%3D0%5Ctext%7B+as+base+case+1%2C%7D&bg=ffffff&fg=000&s=0 "\text{Fib}(0)=0\text{ as base case 1,}")  
![\text{Fib}(1)=1\text{ as base case 2,}](https://web.archive.org/web/20201112042344im_/http://s0.wp.com/latex.php?latex=%5Ctext%7BFib%7D%281%29%3D1%5Ctext%7B+as+base+case+2%2C%7D&bg=ffffff&fg=000&s=0 "\text{Fib}(1)=1\text{ as base case 2,}")  
![\text{For all integers }n>1,~\text{ Fib}(n):=\text{Fib}(n-1) + \text{Fib}(n-2).](https://web.archive.org/web/20201112042344im_/http://s0.wp.com/latex.php?latex=%5Ctext%7BFor+all+integers+%7Dn%3E1%2C%7E%5Ctext%7B+Fib%7D%28n%29%3A%3D%5Ctext%7BFib%7D%28n-1%29+%2B+%5Ctext%7BFib%7D%28n-2%29.&bg=ffffff&fg=000&s=0 "\text{For all integers }n>1,~\text{ Fib}(n):=\text{Fib}(n-1) + \text{Fib}(n-2).")

Now, how would we give such a recursive function an input, such that its output is the same as its input? For example, in the following function,

![\text{F}(x) = x * x](https://web.archive.org/web/20201112042344im_/http://s0.wp.com/latex.php?latex=%5Ctext%7BF%7D%28x%29+%3D+x+%2A+x&bg=ffffff&fg=000&s=0 "\text{F}(x) = x * x")

there are two inputs: 0 and 1, for which the function’s output is the same as the input provided to it. This is defined as the **fixed-point** of this function.

If we can now find a fixed-point _p_ of _F_ such that _F(p)_ is equivalent to _p_, we can use _F(p)_ or _p_ interchangeably _(_since they are the same thing_)_ as the “recursive” function without direct self-reference [7][7].

It turns out that for any generic λ-expression _f_ , ![(\lambda x. f(x x))(\lambda x. f(x x))](https://web.archive.org/web/20201112042344im_/http://s0.wp.com/latex.php?latex=%28%5Clambda+x.+f%28x+x%29%29%28%5Clambda+x.+f%28x+x%29%29&bg=ffffff&fg=000&s=0 "(\lambda x. f(x x))(\lambda x. f(x x))") is a fixed-point of _f_ [8][8].

Given this, we can build a function that returns a fixed-point for any function _f_ by taking the function in as an argument:

![\lambda f. (\lambda x. f(x x))(\lambda x. f(x x))](https://web.archive.org/web/20201112042344im_/http://s0.wp.com/latex.php?latex=%5Clambda+f.+%28%5Clambda+x.+f%28x+x%29%29%28%5Clambda+x.+f%28x+x%29%29&bg=ffffff&fg=000&s=0 "\lambda f. (\lambda x. f(x x))(\lambda x. f(x x))")

This is known as the fixed point or Y combinator. Therefore, for any function _f_, _Y(f)_ is a fixed-point of _f._ That is, _f(Y(f))_ is equivalent to _Y(f)._

## A real world example

So far so good. But how is this useful and why should you know about it? Let’s examine the case of a Clojure function that gives us the sum of a sequence of numbers [9][9].

;; An example of a recursive function to sum a sequence of numbers
(defn sum-seq \[x\]
 (if (empty? x)
  0
  (+ (first x) (sum-seq (rest x))))) ;; invokes itself

;; (sum-seq \[1 9\])
;; => 10

As we can see, this function invokes itself  at the very last line, which is the kind of behavior we’re trying to avoid. How would we write this without a direct self reference? One way to think about this is to express it as a sequence of function calls that starts by being given a function, and returns to us not the result itself, but a sequence of “next” functions to compute the sum of that sequence. Here’s an example,

;; Function that returns the next function to compute the sum of a sequence of numbers
(defn sum-seq-fn-gen \[func\]
  (fn \[s\]
    (if (empty? s)
      0
      (+ (first s) (func (rest s))))))

;; user> ((sum-seq-fn-gen nil) \[\])
;;  0

;;  user> ((sum-seq-fn-gen (sum-seq-fn-generator nil)) \[9\])
;;  9

;;  user> ((sum-seq-fn-gen (sum-seq-fn-gen (sum-seq-fn-gen nil))) \[1 9\])
;;  10

This looks like it works. But as we can see, in order to get the sum for a two element vector, we needed to invoke this function thrice – clearly not a great use of our editing skills or time. How would we make this simpler? By simply finding the fixed point for this function, we could achieve what we set out to do! [10][10]. Let’s start by writing a fixed point combinator.

;; Y combinator
(defn Y \[m\] ;;  λf
  ((fn \[future\] ;; λx
     (future future)) ;; f(x x)
   (fn \[future\] ;; λx
     (m (fn \[arg\]
          ((future future) arg)))))) ;; f(x x)

If we were to pass the sum-seq-gen function to this Y combinator we just wrote above, life becomes much simpler.

;; user> ((Y sum-seq-fn-gen) \[1 2 3\])
;; 6

;; user> ((Y sum-seq-fn-gen) (range 0 1000))
;; 499500

So far so good. But the real power of a combinator isn’t just that it allows us to just write non-direct-reference recursive functions. It is that it allows us to create very useful wrappers around our functions, which can allow us to achieve all sorts of cool things without ever needing to rewrite our original function. As an example, let’s consider the use case of needing to log every internal function call that’s going on in the sum-seq-fn function. In the regular programming model, we would need to add these log lines to the sum-seq-fn itself, which is a huge overhead. But by using combinators, we can just define a LoggingY that will do this for us.

;; A logging fixed point combinator
(defn LoggingY \[r\]
  ((fn \[f\]
     (do
       (prn "Logging call: " f)
       (f f)))
   (fn \[f\]
     (do
       (prn "Logging within second f: " f)
       (r (fn \[x\]
            (do
              (prn "logging within third fn: " x)
              ((f f) x))))))))

viksit.explorations> ((LoggingY sum-seq-fn-gen) \[1 2 3\])

"Logging call: " #<explorations$LoggingY$fn\_\_14921 viksit.explorations$LoggingY$fn\_\_14921@1ed99bdc>
"Logging within second f: " #<explorations$LoggingY$fn\_\_14921 viksit.explorations$LoggingY$fn\_\_14921@1ed99bdc>
"logging within third fn: " (2 3)
"Logging within second f: " #<explorations$LoggingY$fn\_\_14921 viksit.explorations$LoggingY$fn\_\_14921@1ed99bdc>
"logging within third fn: " (3)
"Logging within second f: " #<explorations$LoggingY$fn\_\_14921 viksit.explorations$LoggingY$fn\_\_14921@1ed99bdc>
"logging within third fn: " ()
"Logging within second f: " #<explorations$LoggingY$fn\_\_14921 viksit.explorations$LoggingY$fn\_\_14921@1ed99bdc>
6

Without having to change the original function, we’ve just added some deep instrumentation into our function.

## A memoization example

Let’s consider a slightly more non trivial example. What if we wanted to make a recursive function more efficient by introducing memoization? Could we write a generic non-recursive function and then apply an equally generic combinator to memoize it? Absolutely!

For this exercise, let’s define a more generic fixed point U combinator [11][11], which applies an “abstract” function myapply on to the function f. We can use the freedom of choosing myapply, for example, to _transparently_ interpose memoization.

;;  U = λh.(h h)
;; Generic U combinator
(defn U \[f\]
  (f f))

;; More generic function that can take an application function
(defn UM \[myapply f\]
  (defn g \[v\]
    (fn \[args\]
      (myapply (f v) args)))
  (f g))

;; A non recursive function that gives us the nth fibonacci number
(defn fib-nr \[f\]
  (fn \[n\]
    (if (< n 2) 1
        (+ ((f f) (- n 1))
           ((f f) (- n 2))))))

We can now create a combinator ready [12][12] function that returns an anonymous function that will cache a function’s arguments and results for it.

(defn make-memoizer \[\]
  (let \[application-cache (atom {})\]
    (fn \[function & args\]
        (if-let \[e (find @application-cache args)\]
          (val e)
          (let \[result (apply function args)\]
            (swap! application-cache assoc args result)
            result)))))

;; Time taken to fetch the 38th fibonacci number
viksit.explorations> (time ((U fib-nr) 38))
"Elapsed time: 9700.194 msecs"
63245986

;; Time taken to fetch the same, but with memoization (!)
viksit.explorations> (time ((UM (make-memoizer) fib-nr) 38))
"Elapsed time: 0.153 msecs"
63245986

As we can see, by never having to modify the original function, we’ve been able to use a variety of specific or generic combinators to provide wrappers that can help in making programs more optimal, easier to debug and ultimately, fine-tune.

---

[1]: https://web.archive.org/web/20201112042344/http://www.viksit.com/tags/clojure/practical-applications-y-combinator-clojure/#fn-364-1
[2]: https://web.archive.org/web/20201112042344/http://www.viksit.com/tags/clojure/practical-applications-y-combinator-clojure/#fn-364-2
[3]: https://web.archive.org/web/20201112042344/http://www.viksit.com/tags/clojure/practical-applications-y-combinator-clojure/#fn-364-3
[4]: https://web.archive.org/web/20201112042344/http://www.viksit.com/tags/clojure/practical-applications-y-combinator-clojure/#fn-364-4
[5]: https://web.archive.org/web/20201112042344/http://www.viksit.com/tags/clojure/practical-applications-y-combinator-clojure/#fn-364-5
[6]: https://web.archive.org/web/20201112042344/http://www.viksit.com/tags/clojure/practical-applications-y-combinator-clojure/#fn-364-6
[7]: https://web.archive.org/web/20201112042344/http://www.viksit.com/tags/clojure/practical-applications-y-combinator-clojure/#fn-364-7
[8]: https://web.archive.org/web/20201112042344/http://www.viksit.com/tags/clojure/practical-applications-y-combinator-clojure/#fn-364-8
[9]: https://web.archive.org/web/20201112042344/http://www.viksit.com/tags/clojure/practical-applications-y-combinator-clojure/#fn-364-9
[10]: https://web.archive.org/web/20201112042344/http://www.viksit.com/tags/clojure/practical-applications-y-combinator-clojure/#fn-364-10
[11]: https://web.archive.org/web/20201112042344/http://www.viksit.com/tags/clojure/practical-applications-y-combinator-clojure/#fn-364-11
[12]: https://web.archive.org/web/20201112042344/http://www.viksit.com/tags/clojure/practical-applications-y-combinator-clojure/#fn-364-12

# Piecewise function

https://en.wikipedia.org/wiki/Piecewise_function

A **piecewise function definition** (also called a piecewise-defined function, sometimes even shortened to piecewise function), is a function defined by multiple equations, where each equation covers a distinct part of the domain. It is often also required that the equations are pairwise disjoint, together forming a partition of the domain.

Actually, a piecewise definition is merely a style of expressing the function, rather than a characteristic of the function itself. This style is very popular in FP, where it is also called *definition by cases*. Since FP cherishes referential transparency, function's pieces are actually equations, each covering a particular case (where the cases are usually determined by the data ctors of the subject data type). The equations must together cover the entire domain - they must be non-overlapping and exhaustive, covering all the cases.

A distinct, but related notion is that of a property that holds piecewise for a function, used when the domain can be divided into intervals on which the property holds. Unlike the notion of a piecewise function definition, this is actually a property of the function itself; a piecewise linear function (which also happens to be continuous) is an example.

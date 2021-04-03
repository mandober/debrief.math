# Lambda lifting

https://en.wikipedia.org/wiki/Lambda_lifting

Lambda lifting is a meta-process that restructures a computer program so that functions are defined independently of each other in a global scope.

An (individual) *"lift" transforms a local function into a global function*.

Lambda lifting is a two step process:
- eliminating free variables in the function by adding parameters
- moving functions from a restricted scope to broader or global scope

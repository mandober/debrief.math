# Neutrosophic Logic

http://fs.unm.edu/neutrosophy.htm

Neutrosophic logic (NL) is a general framework for unification of many existing logics, such as intuitionistic logic, fuzzy logic (especially intuitionistic fuzzy logic), paraconsistent logic.

The main idea of NL is to characterize each logical statement in a *3D Neutrosophic Space*, where the different dimensions represent truth (T), falsehood (F) and indeterminacy (I) of the statement under consideration.

where, T, I, F are real subsets of the interval $$(0, 1)$$ and they are not necessarily dependent on each other (they don't necessarily have a connection).

For software engineering proposals the unit interval $$[0,1]$$ is used.

For single valued Neutrosophic logic, the sum of the components, $$T+I+F = S$$:
  - $$0\le S\le 1$$ when all components are dependent on each other
  - $$0\le S\le 2$$ when two are dependent on each other, the remaining one is independent from them
  - $$0\le S\le 3$$ when all components are independent from each other

When 2 or 3 components are independent, one leaves room for:
- incomplete information, $$S < 1$$
- paraconsistent and contradictory information, $$S > 1$$
- complete information, $$S = 1$$

When all 3 components are dependent, one leaves room for:
- incomplete information, $$S<1$$
- complete information, $$S=1$$

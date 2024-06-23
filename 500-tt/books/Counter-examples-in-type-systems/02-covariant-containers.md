# Covariant containers

https://counterexamples.org/general-covariance.html

If there is a *subtyping relation* between two types, say if every `Car` is a `Vehicle`, then it is natural to extend this subtyping to container types, to say that a List[Car] is also a List[Vehicle].

However, this is only sound for immutable `List` types. If `List` is *mutable*, then a List[Vehicle] is something into which I can insert a `Bus`. If every List[Car] is automatically a List[Vehicle], then you can end up with buses in your list of cars.

This problem occurs with arrays in Java:

```java
class Vehicle {}
class Car extends Vehicle {}
class Bus extends Vehicle {}
public class App {
  public static void main(String[] args) {
    Car[] c = { new Car() };
    Vehicle[] v = c;
    v[0] = new Bus(); // crashes with ArrayStoreException
  }
}
```

**Variance** is about how subtyping of type parameters affects subtyping of the whole type.

The solution is to keep track of variance - there are two approaches:

1. *Use-site variance* is used in Java (for types other than arrays): a `List<Car>` can never be converted to a `List<Vehicle>`, but can be converted to a `List<? extends Vehicle>`. The elements of a `List<? extends Vehicle>` are known to be `Vehicles`, but an arbitrary Vehicle cannot be inserted into such a list. Each use of List specifies how the parameter is allowed to vary.

2. *Declaration-site variance* is used in Scala (although use-site variance is also available). This means that the List type can be defined as List[+T] if immutable, making every List[Car] automatically a List[Vehicle]. However, if List is mutable, it must be defined as List[T], which disables these conversions.

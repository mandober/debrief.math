# Sets, maps, composition

Before giving a precise definition of category, we should become familiar with one example, *the category of finite sets and maps*.

An *object* in this category is a finite set or collection.

A *map* `f` in this category consists of 3 things:
1. set `A`, called the *domain of the map*
2. set `B`, called the *codomain of the map*
3. *rule* assigning to each element `a ∈ A` an element `b ∈ B` denoted and determined by `f(a) = b`


```dot {engine="circo"}
digraph {
A -> B [color=cornflowerblue, label="f  "];
B -> C [color=cornflowerblue];
A -> C [color=crimson];
A -> A [style=dotted]
}
```

```dot {engine="circo"}
digraph g {
  node [shape=plaintext];
  A1 -> B1;
  A2 -> B2;
  A3 -> B3;

  A1 -> A2 [label=f];
  A2 -> A3 [label=g];
  B2 -> B3 [label="g'"];
  B1 -> B3 [label="(g o f)'" tailport=s headport=s];

  { rank=same; A1 A2 A3 }
  { rank=same; B1 B2 B3 } 
}
```


```dot {engine="circo"}
digraph G {
  subgraph clusterC {
    label="Category"
    subgraph clusterCInitial {
      label="Initial"
      style="rounded"
      "" [shape="plaintext"]
    }
    subgraph clusterCX {
      label="X"
      style="rounded"
      "x1" [shape="point"]
      "x2" [shape="point"]
      "x1" -> "x1" [label="1X"]
      "x2" -> "x2" [label="1X"]
      "x1" -> "x2" [label="1X"]
      "x2" -> "x1" [label="1X"]
    }
    subgraph clusterCTerminal {
      label="Terminal"
      style="rounded"
      "t" [shape="point"]
      "t" -> "t" [label="1Terminal"]
    }
    "" -> "x1" [label="initial"]
    "" -> "x2" [label="initial"]
    "" -> "t" [label="initial / terminal"]
    "" -> "" [label="1Initial"]
    "x1" -> "t" [label="terminal"]
    "x2" -> "t" [label="terminal"]
  }
}
```

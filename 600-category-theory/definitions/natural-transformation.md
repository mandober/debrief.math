# natural transformations

# natural transformation

A natural transformation `α : F -> G` 
between functors `F : C -> D` and `G : C -> D`

```
F b     αᵃ      G b
● --------------> ●
↑                 ↑
|                 |
|F f           G f|
|                 |
|                 |
● --------------> ●
F a     αᵇ      G a
```

# composition of natural transformations

```
F c ○ --------------> ● G c
    ↑       αᶜ        ↑
    |                 |
    |F g           G g|
    |                 |
    |                 |
F b ○ --------------> ● G b
    ↑       αᵃ        ↑
    |                 |
    |F f           G f|
    |                 |
    |       αᵇ        |
F a ○ --------------> ● G a
```

# composition of natural transformations

- categories: C, D, E
- category C
  - objects in C: a,b,c
  - arrows in C: f, g
- functors: F, G, H
  - F,G,H : C -> D
- NTs: α, β
  - α : F -> G
  - β : G -> H
- category D
  - objects in D: F a, F b, F c
  - arrows in D: F f, F g
- category E
  - objects in E: F a, F b, F c
  - arrows in E: F f, F g


```
        F c                  G c               H c
● c         ● ──────────────> ●───────────────> ●
↑           ↑       αᶜ        ↑        βᶜ       ↑
│           │                 │                 │
│           │                 │                 │
│g      F g │             G g │             H g │
│           │                 │                 │
│           │                 │                 │
● b     F b ● ──────────────> ● G b ──────────> ● H b
↑           ↑       αᵇ        ↑        βᵇ       ↑
│           │                 │                 │
│           │                 │                 │
│f      F f │             G f │             H f │
│           │                 │                 │
│           │       αᵃ        │        βᵃ       │
● a      F a ● ─────────────> ● ──────────────> ● H a
                              G a
```


# comp natural transformations

⟍ ⟋ ─ │

```

         a ● ───────────────────────→ ● b                   
          ⟋⟍                         ⟋⟍                     
        ⟋    ⟍                     ⟋    ⟍                   
      ⟋        ⟍                 ⟋        ⟍                 
    ⟋            ⟍             ⟋            ⟍               
  ⟋                ● Ga      ⟋                ● Gb          
● Fa               │        ● Fb              │             
│                  │        │                 │             
│                  │        │                 │             
│                  │        │                 │             
│                  │        │                 │             
│                  │        │                 │             
│                  ●                                        
│              .                                           
│          .                                                
│      .                                                    
│  .                                                         
●                                                           










                  a
                  ●
                ⟋ | ⟍
              ⟋   |   ⟍
          F ⟋     |f    ⟍ G
          ⟋       |       ⟍
        ⟋         |         ⟍
      ↙           |           ↘
F a ● ----------- ↓ ----αₐ----→ ● G a
    |             ●             |
    |           ⟋   ⟍           |
    |         ⟋       ⟍         |
    |     F ⟋           ⟍ G     |
F f |     ⟋               ⟍     | G f
    |   ⟋                   ⟍   |
    ↓ ↙                       ↘ ↓
    ● ---------- αᵦ -------→ ●
  F b                G b
```


```
            a
           /|\
          / | \
       F /  |  \ G
        /   |f  \
       /    |    \
      ↙     |     ↘
  F a -------αₐ----→ G a
    |       ↓       |
    |     / b \     |
    |  F /     \ G  |
F f |   /       \   | G f
    |  /         \  |
    ↓ /           \ ↓
     ↙-------αᵦ----→↘
  F b              G b
```



# comp natural transformations

```
            a
           /|\
          / | \
       F /  |  \ G
        /   |f  \
       /    |    \
      ↙     |     ↘
  F a -------αₐ----→ G a
    |       ↓       |
    |     / b \     |
    |  F /     \ G  |
F f |   /       \   | G f
    |  /         \  |
    ↓ /           \ ↓
     ↙-------αᵦ----→↘
  F b              G b
```

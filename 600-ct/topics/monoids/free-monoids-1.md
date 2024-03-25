# Free monoid

https://www.youtube.com/watch?v=1v_BfQPeOeU

"Free", when it qualifies an (algebraic) structure, means the structure is free of any a additional knowledge, any additional constraints, or any additional functions or axioms that must be satisfied. It is the most generic instance of an algebra. It can do everything that the algebra says you can do with this structure (this algebra), but no more.

Free objects (e.g. Free applicatives, free monoids)
- without constraints, but not without cost
- an object free of relations
- the most generic instance of an algebra
- does exactly what the definition says and nothing more

## Monoid

A monoid can be defined as a class (like in Haskell) or as a record (like in Agda).

```hs
-- as a record
data Monoid a = Monoid
  { mempty  :: a
  , mappend :: a -> a -> a
  }

-- as a class
class Monoid a where
  mempty  :: a
  mappend :: a -> a -> a
```

## Free monoid

To define a free monoid, we need to satisfy the `Monoid` class and be able to lift (data construct) the (underlying) type into it.

```hs
-- opaque type to make a monoid out of
data M a

-- lifting any (underlying) type into it
-- (lift is bascially the data ctor for M)
lift :: a -> M a

-- making the type a Monoid instance
instance Monoid (M a) where
  mempty  :: M a
  mappend :: M a -> M a -> M a
```

We define the type `M` as `data M a` to mean that we have some type `M` that we want to make a (free) monoid out of, but we don't know anything about `M`.

A simple way to make a monoid out of `M` is to turn everything into data ctors:

```hs
data M a = MEmpty | MAppend (M a) (M a) | MLift a

-- or, as GADT
data M a where
  MEmpty  :: M a
  MAppend :: M a -> M a -> M a
  MLift   :: a -> M a

-- and then we make it a Monoid instance
instance Monoid (M a) where
  mempty  = MEmpty
  mappend = MAppend
```

The `M` data type should look very familiar; if we rename the data ctors we get:

```hs
data Tree a = Empty | Node (Tree a) (Tree a) | Leaf a
```

This type is like an abstract syntax for monoidal operations: `Empty` acts as identity, and `Node` is an (associative) binary operation, with `Leaf` being the values. This tree type suggests that the binop is commutative, and since we don't need commutativity, we can slim the type down further, making it a list.

```hs
data M a = Empty | Cons a (M a)
```

List is a free monoid (and String also).

To be a free monoid, there are two important sides of it: one is that we can construct it, that we can construct some kind of monoid expression because that is what it represents. We can define the class of Free Monoids and try to prove it is inhabited.

```hs
class FreeMonoid m where
  define :: (forall b. Monoid b => (a -> b) -> b) -> m a
  interpret :: Monoid b => (a -> b) -> m a -> b

instance FreeMonoid [] where
  define :: (forall b. Monoid b => (a -> b) -> b) -> [a]
  --          f :: (a ->  b)  ->  b
  --          f :: (a -> [a]) -> [a]
  --     return ::  a -> [a]
  define f = f return

  interpret :: Monoid b => (a -> b) -> [a] -> b
  -- interpret = concat . map
  interpret = foldMap
  -- we can flatten [b] to `b` cos `b` is a monoid:
  -- []          -->> mempty (value of b)
  -- [b₀, b₁, …] -->> b₀ <> b₁ <> …

expr :: a -> a -> (Monoid b => (a -> b) -> b)
expr x y = \ lift -> lift x <> lift y <> lift y <> mempty

list :: a -> a -> [a]
list x y = define $ expr x y


iso :: (FreeMonoid m, FreeMonoid n) => m a -> n a
iso ma = define $ flip interpret ma
```

Practical uses
- define exps in the lang of algebra
- which can be interpreted in many ways
- using Free Applicative we can do static analysis
- which is not possible with Free Monad as structure is not statically known, at least not without evaluating it first, due to data dependency

In general, free monads cannot be used for static analysis because of the data dependency - we have to evaluate it. However, static analysis is possible with free applicatives, although we loose dynamic dependencies, because the structure of applicatives is known at compile time.

An example of exp language:

```hs
data ReadResource a where
  ReadFile :: FilePath -> ReadResource String
  ReadEnv  :: String   -> ReadResource String

-- | Ap is the free Applicative
type Resource a = Ap ReadResource a

loadFile = liftAp . ReadFile
loadEnv  = liftAp . ReadEnv

data Res = Res Int Int Int

resource :: Resource Res
resource = Res <$> (read <$> loadFile "fst.txt")
               <*> (read <$> loadFile "snd.txt")
               <*> (read <$> loadEnv "BASH_VERSION")

run :: Resource a -> IO a
run = runAp exec
  where
  exec :: ReadResource a -> IO a
  exec (ReadFile f) = readFile f
  exec (ReadEnv  e) = getEnv e
```

## Analyse

It's almost like a static analysis of a program. Using `Const` allows to pull out some of the values without running it. We'd have resources (files, envars) on a standby before we run the computation. Running it actually interprets the information (i.e. resources).

```hs
files :: Resource a -> [FilePath]
files prg = getConst $ runAp inputFiles prg
  where
  inputFiles :: ReadResource a -> Const [FilePath] a
  inputFiles (ReadFile f) = Const [f]
  inputFiles _            = Const []

envars :: Resource a -> [String]
envars prg = getConst $ runAp envVars prg
  where
  envVars :: ReadResource a -> Const [String] a
  envVars (ReadEnv e) = Const [e]
  envVars _           = Const []
```

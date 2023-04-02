# Comonads

## Flipping arrows
http://blog.ezyang.com/2010/07/flipping-arrows-in-coburger-king/
Edward Kmett in 2010 (in comments)

The definition of a Monad in Haskell is a bit muddled by the properties of Hask as a category having arbitrary exponentials.

If you instead consider `(=<<) :: (a -> m b) -> (m a -> m b)` rather then (`>>=`), then you can view it as mapping a Kleisli arrow, `a -> m b` onto an arrow `m a -> m b`. The dual notion `extract :: (w b -> a) -> (w b -> w a)` is then really obtained by reversing those arrows.

But what about `>>=`? By flipping the arguments, we've broken one of those arrows in half, and muddled the existence of the mapping in exchange for a slightly more pipelined style, provided the monad in question is a monad over Hask, rather than some arbitrary Category. However, this notion (and parameter order) does not generalize.

Slides are available here: http://comonad.com/haskell/Comonads_1.pdf


# Comonads by Bartosz Milewski 2007
https://bartoszmilewski.com/2017/01/02/comonads/


# Comonads @nlab
http://nlab-pages.s3.us-east-2.amazonaws.com/nlab/show/comonad



# Comonads @Wikipedia
https://en.wikipedia.org/wiki/Comonad
https://en.wikipedia.org/wiki/Monad_(category_theory) <redirect>

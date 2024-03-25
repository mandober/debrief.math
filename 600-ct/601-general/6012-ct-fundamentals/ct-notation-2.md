# Notation

- categories
  - a category `𝒞` (Math Script)
  - opposite category `𝒞ᴼᴾ`
  - generic categories: `𝒞`, `𝒟`, `ℰ`, `ℱ`, `𝒢`, `ℋ`
  - specific categories: `𝗦𝗲𝘁` `𝗚𝗿𝗽` `𝗖𝗮𝘁`
  - specific categories: `𝖲𝖾𝗍` `𝖦𝗋𝗉` `𝖢𝖺𝗍`

- sets:
  - A B C D
  - P = ⟨a,b⟩
  - ⟨a,b⟩
  - π₁(a,b) = a
  - π₂⟨a,b⟩ = b
- relations:
  - ℛ = { ⟨a,b⟩ | a ∈ A. b ∈ B }
  - relational composition `ℛ ⨟ 𝒯 ⨟ 𝒮`
  - trasposed `ℛᵀ`
- functions:
  - f : a -> b
- composition
  - g ∘ f = f;g = f⨾g
  - alternativelly, with reversed fn notation
    x :           a
    f :      b <- a
    g : c <- b
    - - - - - - - -
    y : c
    - - - - - - - -
    ==>     f ⨠ g ≡ g ∘ f
    ==> x ⨠ f ⨠ g ≡ (g ∘ f) x
    ==> x ⨠ f ⨠ g
    ==> x ⨠ f ⨠ g ⨠ y
    ==> (x :: a) ⨠ f ⨠ g ⨠ (y :: c)

    cps⁰ ~~> g ∘ f
    alt⁰ ~~>     f >> g
    alt¹ ~~> x & f & g
    alt² ~~>     f ≫ g
    alt³ ~~>     f ⨠ g

`༒`
⁕ ㆔

  * Braille pattern dots
    - BRAILLE PATTERN BLANK 0x2800 ⟩⠀⟨
    - dots as bracket-levels a la Principia Mathematica
    - 6-dot braille cells
        1 4
        2 5
        3 6
    - BRAILLE PATTERN DOTS-123456, `⠿`
    + ones `⠩` ⠁⠂⠄⠈⠐⠠
    + `⠩` ⠁ ⠃ ⠇ ⠏ ⠟ ⠿
    + `⠩` ⠄⠠⠤ ⠰⠆⠶ ⠦⠴ ⠸⠇⠿
    - `⠩` ⠁⠃⠉⠙⠑⠋⠛⠓⠊⠚⠈⠘    (uppers)
    - `⠩` ⠄⠅⠇⠍⠝⠕⠏⠟⠗⠎⠞⠌⠜   (left)
    - `⠩` ⠤⠥⠧⠭⠽⠵⠯⠿⠷⠮⠾⠬⠼   
    - `⠩` ⠠⠡⠣⠩⠹⠱⠫⠻⠳⠪⠺⠨⠸   (right)
    - `⠩` ⠂⠆⠒⠲⠢⠖⠶⠦⠔⠴⠐⠰    (downers)


      `◌⠀◌`  ⠁  ⠃  ⠉  ⠙  ⠑  ⠋  ⠛  ⠓  ⠊  ⠚  ⠈  ⠘
      ⠄  ⠅  ⠇  ⠍  ⠝  ⠕  ⠏  ⠟  ⠗  ⠎  ⠞  ⠌  ⠜
      ⠤  ⠥  ⠧  ⠭  ⠽  ⠵  ⠯  ⠿  ⠷  ⠮  ⠾  ⠬  ⠼
      ⠠  ⠡  ⠣  ⠩  ⠹  ⠱  ⠫  ⠻  ⠳  ⠪  ⠺  ⠨  ⠸
      ⠂  ⠆  ⠒  ⠲  ⠢  ⠖  ⠶  ⠦  ⠔  ⠴  ⠐  ⠰

* Braille pattern dots - Google Search
https://www.google.com/search?q=Braille+pattern+dots&oq=Braille+pattern+dots&aqs=chrome..69i57.168j0j7&sourceid=chrome&ie=UTF-8

* Braille - Wikipedia
https://en.wikipedia.org/wiki/Braille

* Unified English Braille - Wikipedia
https://en.wikipedia.org/wiki/Unified_English_Braille

* Braille pattern dots-0 - Wikipedia
https://en.wikipedia.org/wiki/Braille_pattern_dots-0

* Braille pattern dots-1235 - Wikipedia
https://en.wikipedia.org/wiki/Braille_pattern_dots-1235

* Braille ASCII - Wikipedia
https://en.wikipedia.org/wiki/Braille_ASCII

* Braille pattern dots-1 - Wikipedia
https://en.wikipedia.org/wiki/Braille_pattern_dots-1



    - 8-dot braille cells (like 6-dot + 4th row for 7th and 8th cells)
       6-dot:      8-dot:
        1 4         1 4
        2 5         2 5
        3 6         3 6
                    7 8
        ⠁           ⠁
        ⠿           ⣿


      - ⣿ ⣶
      - BRAILLE PATTERN DOTS-12345678, `⣿`
      - BRAILLE PATTERN DOTS-235678, `⣶`

      - The BRAILLE PATTERN DOTS-0 `⠀` (blank Braille pattern)
        is a 6-dot or 8-dot braille cell with no dots raised.
        U+2800 or Braille ASCII as space.
      - The BRAILLE PATTERN DOTS-1 `⠁` 
        is a 6-dot or 8-dot braille cell with the top left dot raised.
        U+2801 or Braille ASCII as "A"


  * `(c <- a) <- (c <- b) <- (b <- a)` ≅ `(a -> b) -> (b -> c) -> (a -> c)`


  - inverse function: `f⁻¹`, f ∘ f⁻¹
  - piping: `f;g` = `f ⨠ g` (z notation) = `g ∘ f`
  - `f ⨟ g = g ∘ f` = \ x → g(f(x))
  - ⟨f,g⟩ . <f,g> . [f,g]
- objects: a b c d
- morphisms: f g h p q
- arrow f : a → b
- arrow g : b → c
- ∀ a b ∈ 𝒞. hom(a,b)
- type `a ⦂ τ` (z notation)
- f ⨠ g (z notation)
- f ⦁ g (z notation)
- f ⨡ g (z notation)
- f ⩥ g (z notation)
- f ⦂⦂ a → b 

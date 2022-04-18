---
downloaded:       2021-12-31
page-url:         https://github.com/emillon/blog.emillon.org/blob/master/posts/2011-11-28-unicode-math-greek-symbols-you-name-it.mdwn
page-title:       blog.emillon.org/2011-11-28-unicode-math-greek-symbols-you-name-it.mdwn at master · emillon/blog.emillon.org
article-title:    blog.emillon.org/2011-11-28-unicode-math-greek-symbols-you-name-it.mdwn at master · emillon/blog.emillon.org
---
# blog.emillon.org/2011-11-28-unicode-math-greek-symbols-you-name-it.mdwn at master · emillon/blog.emillon.org

My blog, written using Hakyll. Contribute to emillon/blog.emillon.org development by creating an account on GitHub.
title

author

tags

Unicode : Math, greek, symbols - you name it !

Etienne Millon

linux

## EBCDIC, ASCII & the power of legacy

… and no, that's not a movie title.

As you know, all your computer knows about is numbers, yet when you type on a keyboard, a character appears on your screen. This is thanks to character encodings.

There are several norms that defines how characters (ie, glyphs) are encoded into numbers. Besides dinosaurs such as [EBCDIC][1], the "classic" way of encoding is [ASCII][2] -- that is what most modern[1][3] operating systems use internally.

The problem with ASCII is that it maps every character to a single byte with [MSB][4] reset, meaning that you can have a maximum of 128 glyphs. It's "good enough" for English (hey, the A stands for American) but terrible for international characters. This is even worse considering that 32 of them are control characters, ie mostly legacy. Did you ever need to interpret `DC2`, `SI` or `GS` in a program ?

The eighth bit being "reserved" can be used to support "extended characters". Several vendors (including Microsoft) used the concept of "code pages" to use extra glyphs in the 128-255 range. For example, Latin-1 was used in western europe to display accentuated characters.

If all your data comes from one part of the world, it works fine, but with the following limitations if you need to handle international data :

-   it becomes necessary to have metadata specifying which codepage has to be used.
-   you have to choose exactly one codepage per document.

In other words, a more extensible system is needed. Hopefully, this system exists and is called…

## Unicode

Unicode separates two notions :

-   what is a character. Unicode include a large collection of glyph names. For example, version 6.0 includes 109449 characters.
-   how a character is encoded as bytes. More precisely, this is the role of encodings such as [UTF-8][5]. Usually, they are compatible with ASCII (the byte representation coincides on characters 0-127).

What's nice is that it's easy to enter Unicode under X11. The last two sections explain how you can configure your system to type (for example) √, β and ✈ !

## Configure a compose key

A "compose" key, or `Multi_key` under X11, will begin a character compose sequence. For example, when I type `<Multi_key> <s> <q>`, a square root (U+221A √) is entered.

To configure a compose key, you can use [xmodmap(1)][6]. Put the following into `~/.Xmodmap` to make your right control key act as a `Multi_key` :

```
keysym Control_R = Multi_key
```

Unfortunately, this file is not loaded automatically, so you have to run `xmodmap ~/.Xmodmap` when opening a X session (this can be done automatically if you put in in your `~/.xsession`, for example).

## Define a .XCompose mapping

The second part is to define mappings between key sequences and unicode codepoints. This is the role of the `~/.XCompose` file.

As described in [xcompose(5)][7], a line looks like :

```
<Multi_key> <ampersand> <p> <l> <a> <n> <e>     : "✈"   U2708     # AIRPLANE
```

ie, a key sequence, a colon, a string and a character name. The comment does not hurt, as usual.

To start your own list of bindings, I suggest [kragen's repository][8], which includes an excellent set. And if you need to find a specific unicode character, the [unicode][9] script is very useful !

**TL;DR:** Spread the word, ♥ Unicode ☺

1.  Yes, that excludes AS/400. [↩][10]
    

[1]: https://en.wikipedia.org/wiki/EBCDIC
[2]: https://en.wikipedia.org/wiki/ASCII
[3]: https://github.com/emillon/blog.emillon.org/blob/master/posts/2011-11-28-unicode-math-greek-symbols-you-name-it.mdwn#user-content-fn-1-5a98cacf24681a9f798c885e166fafd8
[4]: https://en.wikipedia.org/wiki/Most_significant_bit
[5]: https://en.wikipedia.org/wiki/UTF-8
[6]: http://manpages.debian.org/cgi-bin/man.cgi?query=xmodmap&sektion=1
[7]: http://manpages.ubuntu.com/manpages/precise/en/man5/XCompose.5.html
[8]: https://github.com/kragen/xcompose
[9]: http://kassiopeia.juls.savba.sk/~garabik/software/unicode/
[10]: https://github.com/emillon/blog.emillon.org/blob/master/posts/2011-11-28-unicode-math-greek-symbols-you-name-it.mdwn#user-content-fnref-1-5a98cacf24681a9f798c885e166fafd8

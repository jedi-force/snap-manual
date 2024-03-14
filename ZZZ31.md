---
title: 31 Special Forms

layout: home
has_children: false
has_toc: true
nav_order: 32
---


![](/snap-manual/assets/images/image736.png){width="2.4993055555555554in"
height="0.27847222222222223in"}![](/snap-manual/assets/images/image737.png){width="2.402083333333333in"
height="1.4270833333333333in"}The primitive if else block has two
C-shaped command slots and chooses one or the other depending on a
Boolean test. Because Scratch doesn't emphasize functional programming,
it lacks a corresponding reporter block to choose between two
expressions. Snap*!* has one, but we could write our own:

![](/snap-manual/assets/images/image738.png){width="4.291666666666667in"
height="0.8486111111111111in"}![](/snap-manual/assets/images/image739.png){width="3.818985126859143in"
height="0.27433070866141734in"}Our block works for these simple
examples, but if we try to use it in writing a recursive operator, it'll
fail:

The problem is that when any block is called, all of its inputs are
computed (evaluated) before the block itself runs. The block itself
knows only the values of its inputs, not what expressions were used to
compute them. In particular, all of the inputs to our if then else block
are evaluated ﬁrst thing. That means that even in the base case,
factorial will try to call itself recursively, causing an infinite loop.
We need our if then else block to be able to select only one of the two
alternatives to be evaluated.

We have a mechanism to allow that: declare the then and else inputs to
be of type Reporter rather than type Any. Then, when calling the block,
those inputs will be enclosed in a ring so that the expressions
themselves, rather than their values, become the inputs:

![](/snap-manual/assets/images/image740.png){width="1.1145833333333333in"
height="0.6979166666666666in"}![](/snap-manual/assets/images/image741.png){width="4.520833333333333in"
height="1.0229166666666667in"}![](/snap-manual/assets/images/image742.png){width="2.6173611111111112in"
height="1.5104166666666667in"}

In this version, the program works, with no infinite loop. But we've
paid a heavy price: this reporter-if is no longer as intuitively obvious
as the Scratch command-if. You have to know about procedures as data,
about rings, and about a trick to get a constant value in a ringed slot.
(The id block implements the identity function, which reports its
input.[^6] We need it because rings take only reporters as input, not
numbers.) What we'd like is a reporter-if that *behaves* like this one,
delaying the evaluation of its inputs, but *looks* like our ﬁrst
version, which was easy to use except that it didn't work.

Such blocks are indeed possible. A block that seems to take a simple
expression as input, but delays the evaluation of that input by wrapping
an "invisible ring" around it (and, if necessary, an id-like
transformation of constant data into constant functions) is called a
*special form*. To turn our if block into a special form, we edit the
block's prototype, declaring the inputs yes and no to be of type "Any
(unevaluated)" instead of type Reporter. The script for the block is
still that of the second version, including the use of call to evaluate
either yes or no but not both. But the slots appear as white Any-type
rectangles, not Reporter-type rings, and the factorial block will look
like our ﬁrst attempt.

In a special form's prototype, the unevaluated input slot(s) are
indicated by a lambda (λ) next to the input name, just as if they were
declared as Procedure type. They *are* Procedure type, really; they're
just disguised to the user of the block.

Special forms trade off implementor sophistication for user
sophistication. That is, you have to understand all about procedures as
data to make sense of the special form implementation of my if then
else. But any experienced Scratch programmer can *use* my if then else
without thinking at all about how it works internally.

### Special Forms in Scratch

Special forms are actually not a new invention in Snap*!*. Many of
Scratch's conditional and looping blocks are really special forms. The
hexagonal input slot in the if block is a straightforward Boolean value,
because the value can be computed once, before the if block makes its
decision about whether or not to run its action input. But the forever
if, repeat until, and wait until blocks' inputs can't be Booleans; they
have to be of type "Boolean (unevaluated)," so that Scratch can evaluate
them over and over again. Since Scratch doesn't have custom C‑shaped
blocks, it can afford to handwave away the distinction between evaluated
and unevaluated Booleans, but Snap*!* can't. The pedagogic value of
special forms is proven by the fact that no Scratcher ever notices that
there's anything strange about the way in which the hexagonal inputs in
the Control blocks are evaluated.

Also, the C-shaped slot familiar to Scratch users is an unevaluated
procedure type; you don't have to use a ring to keep the commands in the
C-slot from being run before the C-shaped block is run. Those commands
themselves, not the result of running them, are the input to the
C-shaped Control block. (This is taken for granted by Scratch users,
especially because Scratchers don't think of the contents of a C-slot as
an input at all.) This is why it makes sense that "C‑shaped" is on the
fourth row of types in the long form input dialog, with other
unevaluated types.

 Object Oriented Programming with Sprites

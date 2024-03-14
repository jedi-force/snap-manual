---
title: 50 Continuation Passing Style

layout: home
has_children: false
has_toc: true
nav_order: 51
---


Like all programming languages, Snap*!* evaluates compositions of nested
reporters from the inside out. For example, in the expression
![](/snap-manual/assets/images/image884.png){width="1.3125in"
height="0.22916666666666666in"}Snap*!* first adds 4 and 5, then
multiplies 3 by that sum. This often means that the order in which the
operations are done is backwards from the order in which they appear in
the expression: When reading the above expression you say "times" before
you say "plus." In English, instead of saying "three times four plus
five," which actually makes the order of operations ambiguous, you could
say, "take the sum of four and five, and then take the product of three
and that sum." This sounds more awkward, but it has the virtue of
putting the operations in the order in which they're actually performed.

![](/snap-manual/assets/images/image885.png){width="3.1875in"
height="0.3541666666666667in"}That may seem like overkill in a simple
expression, but suppose you're trying to convey the expression

to a friend over the phone. If you say "factorial of three times
factorial of two plus two plus five" you might mean any of these:

![](/snap-manual/assets/images/image886.png){width="3.1875in"
height="1.71875in"}![](/snap-manual/assets/images/image894.png){width="7.490277777777778in"
height="3.622916666666667in"}Wouldn't it be better to say, "Add two and
two, take the factorial of that, add five to that, multiply three by
that, and take the factorial of the result"? We can do a similar
reordering of an expression if we first define versions of all the
reporters that take their continuation as an explicit input. In the
following picture, notice that the new blocks are *commands*, not
reporters.

![](/snap-manual/assets/images/image904.png){width="4.052777777777778in"
height="1.6354166666666667in"}We can check that these blocks give the
results we want:

![](/snap-manual/assets/images/image908.png){width="5.533333333333333in"
height="2.3180555555555555in"}The original expression can now be
represented as

![](/snap-manual/assets/images/image909.png){width="2.1930555555555555in"
height="1.0527777777777778in"}If you read this top to bottom, don't you
get "Add two and two, take the factorial of that, add five to that,
multiply three by that, and take the factorial of the result"? Just what
we wanted! This way of working, in which every block is a command that
takes a continuation as one of its inputs, is called
*continuation-passing style (CPS).* Okay, it looks horrible, but it has
subtle virtues. One of them is that each script is just one block long
(with the rest of the work buried in the continuation given to that one
block), so each block doesn't have to remember what else to do---in the
vocabulary of this section, the (implicit) continuation of each block is
empty. Instead of the usual picture of recursion, with a bunch of little
people all waiting for each other, with CPS what happens is that each
little person hands off the problem to the next one and goes to the
beach, so there's only one active little person at a time. In this
example, we start with Alfred, an add specialist, who computes the value
4 and then hands off the rest of the problem to Francine, a factorial
specialist. She computes the value 24, then hands the problem off to
Anne, another add specialist, who computes 29. And so on, until finally
Sam, a say specialist, says the value 2.107757298379527×10^132^, which
is a very large number!

Go back to the definitions of these blocks. The ones, such as add, that
correspond to primitive reporters are simple; they just call the
reporter and then call their continuation with its result. But the
definition of factorial is more interesting. It doesn't just call our
original factorial reporter and send the result to its continuation. CPS
is used inside factorial too! It says, "See if my input is zero. Send
the (true or false) result to if. If the result is true, then call my
continuation with the value 1. Otherwise, subtract 1 from my input. Send
the result of that to factorial, with a continuation that multiplies the
smaller number's factorial by my original input. Finally, call my
continuation with the product." You can use CPS to unwind even the most
complicated branched recursions.

By the way, I cheated a bit above. The if/else block should also use
CPS; it should take one true/false input and *two continuations.* It
will go to one or the other continuation depending on the value of its
input. But in fact the C-shaped blocks (or E-shaped, like if/else) are
really using CPS in the first place, because they implicitly wrap rings
around the sub-scripts within their branches. See if you can make an
explicitly CPS if/else block.

Call/Run w/Continuation

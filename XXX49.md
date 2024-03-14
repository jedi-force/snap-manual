                ---
                title: 49 Date and Time

                layout: home
                has_children: false
                has_toc: true
                nav_order: 50
                ---


![](/snap-manual/assets/images/image872.png){width="5.305555555555555in"
height="0.3194444444444444in"}The current block in the Sensing palette
can be used to find out the current date or time. Each call to this
block reports one component of the date or time, so you will probably
combine several calls, like this:

![](/snap-manual/assets/images/image873.png){width="5.305555555555555in"
height="0.3194444444444444in"}for Americans, or like this:

for Europeans.

 Continuations
=============

Blocks are usually used within a script. The *continuation* of a block
within a particular script is the part of the computation that remains
to be completed after the block does its job. A continuation can be
represented as a ringed script. Continuations are always part of the
interpretation of any program in any language, but usually these
continuations are implicit in the data structures of the language
interpreter or compiler. Making continuations explicit is an advanced
but versatile programming technique that allows users to create control
structures such as nonlocal exit and multithreading.

![](/snap-manual/assets/images/image874.png){width="1.40625in"
height="1.5416666666666667in"}In the simplest case, the continuation of
a command block may just be the part of the script after the block. For
example, in the script

![](/snap-manual/assets/images/image875.png){width="1.59375in"
height="0.7083333333333334in"}the continuation of the move 100 steps
block is

![](/snap-manual/assets/images/image876.png){width="1.4784722222222222in"
height="0.8020833333333334in"}But some situations are more complicated.
For example, what is the continuation of move 100 steps in the following
script?

![](/snap-manual/assets/images/image877.png){width="1.6666666666666667in"
height="1.0729166666666667in"}That's a trick question; the move block is
run four times, and it has a different continuation each time. The first
time, its continuation is

Note that there is no repeat 3 block in the actual script, but the
continuation has to represent the fact that there are three more times
through the loop to go. The fourth time, the continuation is just

![](/snap-manual/assets/images/image878.png){width="1.59375in"
height="0.29791666666666666in"}What counts is not what's physically
below the block in the script, but what computational work remains to be
done.

(This is a situation in which visible code may be a little misleading.
We have to put a repeat 3 block in the *picture* of the continuation,
but the actual continuation is made from the evaluator's internal
bookkeeping of where it's up to in a script. So it's really the original
script plus some extra information. But the pictures here do correctly
represent what work the process still has left to do.)\
![](/snap-manual/assets/images/image879.png){width="1.4791666666666667in"
height="1.25in"}When a block is used inside a custom block, its
continuation may include parts of more than one script. For example, if
we make a custom square block

and then use that block in a script:

![](/snap-manual/assets/images/image880.png){width="0.7291666666666666in"
height="0.59375in"}then the continuation of the first use of move 100
steps is

![](/snap-manual/assets/images/image881.png){width="1.6666666666666667in"
height="1.2604166666666667in"}in which part comes from inside the square
block and part comes from the call to square. Nevertheless, ordinarily
when we *display* a continuation we show only the part within the
current script.

![](/snap-manual/assets/images/image882.png){width="2.1875in"
height="0.5729166666666666in"}The continuation of a command block, as
we've seen, is a simple script with no input slots. But the continuation
of a *reporter* block has to do something with the value reported by the
block, so it takes that value as input. For example, in the script

the continuation of the 3+4 block is

![](/snap-manual/assets/images/image883.png){width="3.5729166666666665in"
height="0.5729166666666666in"}Of course the name result in that picture
is arbitrary; any name could be used, or no name at all by using the
empty-slot notation for input substitution.

Continuation Passing Style

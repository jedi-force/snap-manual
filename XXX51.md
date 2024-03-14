                ---
                title: 51 Call/Run w/Continuation

                layout: home
                has_children: false
                has_toc: true
                nav_order: 52
                ---


To use explicit continuation passing style, we had to define special
versions of all the reporters, add and so on. Snap*!* provides a
primitive mechanism for capturing continuations when we need to, without
using continuation passing throughout a project.

Here's the classic example. We want to write a recursive block that
takes a list of numbers as input, and reports the product of all the
numbers:

![](/snap-manual/assets/images/image910.png){width="3.8958333333333335in"
height="1.9375in"}![](/snap-manual/assets/images/image911.png){width="3.8958333333333335in"
height="1.3416666666666666in"}But we can improve the efficiency of this
block, in the case of a list that includes a zero; as soon as we see the
zero, we know that the entire product is zero.

But this is not as efficient as it might seem. Consider, as an example,
the list 1,2,3,0,4,5. We find the zero on the third recursive call (the
fourth call altogether), as the first item of the sublist 0,4,5. What is
the continuation of the report 0 block? It's

![](/snap-manual/assets/images/image912.png){width="4.333333333333333in"
height="0.4166666666666667in"}Even though we already know that result is
zero, we're going to do three unnecessary multiplications while
unwinding the recursive calls.

![](/snap-manual/assets/images/image913.png){width="4.038194444444445in"
height="1.9256944444444444in"}![](/snap-manual/assets/images/image914.png){width="3.9451388888888888in"
height="1.0979166666666667in"}We can improve upon this by capturing the
continuation of the top-level call to product:

![](/snap-manual/assets/images/image915.png){width="2.7083333333333335in"
height="0.2916666666666667in"}The
![](/snap-manual/assets/images/image916.png){width="1.59125in"
height="0.18611111111111112in"} block takes as its input a one-input
script, as shown in the product example. It calls that script with *the
continuation of the* call-with-continuation *block itself* as its input.
In this case, that continuation is

![](/snap-manual/assets/images/image917.png){width="4.40625in"
height="1.15625in"}reporting to whichever script called product. If the
input list doesn't include a zero, then nothing is ever done with that
continuation, and this version works just like the original product. But
if the input list is 1,2,3,0,4,5, then three recursive calls are made,
the zero is seen, and product-helper *runs the continuation,* with an
input of 0. The continuation immediately reports that 0 to the caller of
product, *without* unwinding all the recursive calls and without the
unnecessary multiplications.

![](/snap-manual/assets/images/image918.png){width="4.385416666666667in"
height="0.5104166666666666in"}I could have written product a little more
simply using a Reporter ring instead of a Command ring:

but it's customary to use a script to represent the input to
call** **w/continuation because very often that input takes the form

so that the continuation is saved permanently and can be called from
anywhere in the project. That's why the input slot in call
w/continuation has a Command ring rather than a Reporter ring.

First class continuations are an experimental feature in Snap*!* and
there are many known limitations in it. One is that the display of
reporter continuations shows only the single block in which the call
w/continuation is an input.

###  Nonlocal exit

![](/snap-manual/assets/images/image919.png){width="6.268055555555556in"
height="1.125in"}Many programming languages have a break command that
can be used inside a looping construct such as repeat to end the
repetition early. Using first class continuations, we can generalize
this mechanism to allow nonlocal exit even within a block called from
inside a loop, or through several levels of nested loops:

![](/snap-manual/assets/images/image923.png){width="1.8541666666666667in"
height="2.6534722222222222in"}The upvar break has as its value a
continuation that can be called from anywhere in the program to jump
immediately to whatever comes after the catch block in its script.
Here's an example with two nested invocations of catch, with the upvar
renamed in the outer one:

As shown, this will say 1, then 2, then 3, then exit both nested catches
and think "Hmm." If in the run block the variable break is used instead
of outer, then the script will say 1, 2, 3, and "Hello!" before thinking
"Hmm."

![](/snap-manual/assets/images/image924.png){width="4.354166666666667in"
height="1.4708333333333334in"}There are corresponding catch and throw
blocks for reporters. The catch block is a reporter that takes an
expression as input instead of a C-shaped slot. But the throw block is a
command; it doesn't report a value to its own continuation, but instead
reports a value (which it takes as an additional input, in addition to
the catch tag) to *the corresponding catch block*'s continuation:

Without the throw, the inner call reports 5, the + block reports 8, so
the catch block reports 8, and the × block reports 80. With the throw,
the inner call doesn't report at all, and neither does the + block. The
throw block's input of 20 becomes the value reported by the catch block,
and the × block multiplies 10 and 20.\
**Creating a Thread System**

Snap*!* can be running several scripts at once, within a single sprite
and across many sprites. If you only have one computer, how can it do
many things at once? The answer is that only one is actually running at
any moment, but Snap*!* switches its attention from one script to
another frequently. At the bottom of every looping block (repeat, repeat
until, forever), there is an implicit "yield" command, which remembers
where the current script is up to, and switches to some other script,
each in turn. At the end of every script is an implicit "end thread"
command (a *thread* is the technical term for the process of running a
script), which switches to another script without remembering the old
one.

![](/snap-manual/assets/images/image928.png){width="2.9479166666666665in"
height="4.254166666666666in"}![](/snap-manual/assets/images/image929.png){width="6.5569444444444445in"
height="2.770138888888889in"}Since this all happens automatically, there
is generally no need for the user to think about threads. But, just to
show that this, too, is not magic, here is an implementation of a simple
thread system. It uses a global variable named tasks that initially
contains an empty list. Each use of the C-shaped thread block adds a
continuation (the ringed script) to the list. The yield block uses run
w/continuation to create a continuation for a partly done thread, adds
it to the task list, and then runs the first waiting task. The
end** **thread block (which is automatically added at the end of every
thread's script by the thread block) just runs the next waiting task.

Here is a sample script using the thread system. One thread says
numbers; the other says letters. The number thread yields after every
prime number, while the letter thread yields after every vowel. So the
sequence of speech balloons is
1,2,a,3,b,c,d,e,4,5,f,g,h,i,6,7,j,k,l,m,n,o,8,9,10,11,
p,q,r,s,t,u,12,13,v,w,x,y,z,14,15,16,17,18,...30.

If we wanted this to behave exactly like Snap*!*'s own threads, we'd
define new versions of repeat and so on that run yield after each
repetition.

 Metaprogramming
===============

The scripts and custom blocks that make up a program can be examined or
created by the program itself.

![](/snap-manual/assets/images/image935.png){width="7.4945702099737534in" height="2.0380686789151357in"}Reading a block

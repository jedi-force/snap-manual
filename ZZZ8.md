                ---
                title: 8. Chapter 8:  The Outside World

                layout: home
                has_children: true
                has_toc: false
                nav_order: 9
                ---


![](/snap-manual/assets/images/image148.png){width="1.6201388888888888in"
height="0.25in"}The facilities discussed so far are fine for projects
that take place entirely on your computer's screen. But you may want to
write programs that interact with physical devices (sensors or robots)
or with the World Wide Web. For these purposes Snap*!* provides a single
primitive block:

This might not seem like enough, but in fact it can be used to build the
desired capabilities.

The World Wide Web
------------------

The input to the url block is the URL (Uniform Resource Locator) of a
web page. The block reports the body of the Web server's response (minus
HTTP header), *without interpretation.* This means that in most cases
the response is a description of the page in HTML (HyperText Markup
Language) notation. Often, especially for commercial web sites, the
actual information you're trying to find on the page is actually at
another URL included in the reported HTML. The Web page is typically a
very long text string, and so the primitive split block is useful to get
the text in a manageable form, namely, as a list of lines:

![](/snap-manual/assets/images/image871.png){width="6.520833333333333in"
height="4.277777777777778in"}

The second input to split is the character to be used to separate the
text string into a list of lines, or one of a set of common cases (such
as line, which separates on carriage return and/or newline characters.

This might be a good place for a reminder that list-view watchers scroll
through only 100 items at a time. The downarrow near the bottom right
corner of the speech balloon in the picture presents a menu of
hundred-item ranges. (This may seem unnecessary, since the scroll bar
should allow for any number of items, but doing it this way makes
Snap*!* much faster.) In table view, the entire list is included.

If you include a protocol name in the input to the url block (such as
http:// or https://), that protocol will be used. If not, the block
first tries HTTPS and then, if that fails, HTTP.

A security restriction in JavaScript limits the ability of one web site
to initiate communication with another site. There is an official
workaround for this limitation called the CORS protocol (Cross-Origin
Resource Sharing), but the target site has to allow snap.berkeley.edu
explicitly, and of course most don't. To get around this problem, you
can use third-party sites ("cors proxies") that are not limited by
JavaScript and that forward your requests.

Hardware Devices
----------------

Another JavaScript security restriction prevents Snap*!* from having
direct access to devices connected to your computer, such as sensors and
robots. (Mobile devices such as smartphones may also have useful devices
built in, such as accelerometers and GPS receivers.) The url block is
also used to interface Snap*!* with these external capabilities.

The idea is that you run a separate program that both interfaces with
the device and provides a local HTTP server that Snap*!* can use to make
requests to the device. *Unlike* Snap*!* *itself, these programs have
access to anything on your computer, so you have to trust the author of
the software!* Our web site, snap.berkeley.edu, provides links to
drivers for several devices, including, at this writing, the Lego NXT,
Finch, Hummingbird, and Parallax S2 robots; the Nintendo Wiimote and
Leap Motion sensors, the Arduino microcomputer, and Super-Awesome
Sylvia's Water Color Bot. The same server technique can be used for
access to third party software libraries, such as the speech synthesis
package linked on our web site.

Most of these packages require some expertise to install; the links are
to source code repositories. This situation will improve with time.

Date and Time
-------------

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
--------------------------

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
-----------------------

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
------------------------------------------------------------------------------------------------------------------

The definition of block takes a custom block (in a ring, since it's the
block itself that's the input, not the result of calling the block) as
input and reports the block's definition, i.e., its inputs and body, in
the form of a ring with named inputs corresponding to the block's input
names, so that those input names are bound in the body.

![](/snap-manual/assets/images/image939.png){width="7.4in"
height="2.51in"}The split by blocks block takes any expression or script
as input (ringed) and reports a list representing a *syntax tree* for
the script or expression, in which the first item is a block with no
inputs and the remaining items are the input values, which may
themselves be syntax trees.

![](/snap-manual/assets/images/image943.png){width="7.496969597550306in"
height="2.079861111111111in"}Using split by blocks to select custom
blocks whose definitions contain another block gives us this debugging
aid:

Note in passing the my blocks block, which reports a list of all visible
blocks, primitive and custom. (There's also a my categories block, which
reports a list of the names of the palette categories.) Also note
custom? of block, which reports True if its input is a custom block.

Writing a block
---------------

![](/snap-manual/assets/images/image947.png){width="6.071211723534558in"
height="2.209722222222222in"}The inverse function to split by blocks is
provided by the join block, which when given a syntax tree as input
reports the corresponding expression or script.

Here we are taking the definition of square, modifying the repetition
count (to 6), modifying the turning angle (to 60), using join to turn
the result back into a ringed definition, and using the define block to
create a new hexagon block.

The define block has three "input" slots. The quotation marks are there
because the first slot is an upvar, i.e., a way for define to provide
information to its caller, rather than the other way around. In this
case, the value of block is the new block itself (the hexagon block, in
this example). The second slot is where you give the *label* for the new
block. In this example, the label is "hexagon \_" in which the
underscore represents an input slot. So, here are a few examples of
block labels:

set pen \_ to \_

for \_ = \_ to \_ \_

ask \_ and wait

\_ of \_

Note that the underscores are separated from the block text by spaces.
Note in the case of the for block's label that the upvar (the i) and the
C-slot both count as inputs. Note also that the label is not meant to be
a unique symbol that represents only this block. For example,
![](/snap-manual/assets/images/image628.png){width="0.8611111111111112in"
height="0.19444444444444445in"} and ![A picture containing text, hitting
Description automatically
generated](/snap-manual/assets/images/image376.png){width="1.15in"
height="0.19in"} both have the label

\_ of \_. The label does not give the input slots names (that's done in
the body, coming next) or types (that's done in the set \_ of block \_
to \_ block, coming in two paragraphs).

The third slot is for the *definition* of the new block. This is a
(ringed) script whose input names (formal parameters) will become the
formal parameters of the new block. And the script is its script.

So far we know the block's label, parameters, and script. There are
other things to specify about the block, and one purpose of the block
upvar is to allow that. In the example on the previous page, there are
four

![](/snap-manual/assets/images/image951.png){width="2.83in"
height="0.97in"}set \_ of block \_ to \_ blocks, reproduced below for
your convenience:

The category of the block can be set to any primitive or custom
category. The default is other. The type is command, reporter, or
predicate. Command is the default, so this setting is redundant, but we
want to show all the choices in the set block. The scope is either
global or sprite, with global as the default. The last input to set
slots is a list of length less than or equal to the number of
underscores in the label. Each item of the list is a type name, like the
ones in the is (5) a (number)? block. If there is only one input, you
can use just the name instead of putting it in a list. An empty or
missing list item means type Any.

![](/snap-manual/assets/images/image952.png){width="4.31in"
height="0.83in"}It\'s very important that these set blocks appear in the
same script as the define that creates the block, because the block
upvar is local to that script. You can't later say, for example,

because the copy of the hexagon block in this instruction counts as
"using" it.

![](/snap-manual/assets/images/image953.png){width="2.6in"
height="0.32in"}The of block reporter is useful to copy attributes from
one block to another, as we copied the definition of square, modified
it, and used it to define hexagon. Some of the values this block reports
are a little unfriendly:

"1"? Yes, this block reports *numbers* instead of names for category,
type, and scope. The reason is that maybe someday we'll have
translations to other languages for custom category names, as we already
do for the built-in categories, types, and scopes; if you translate a
program using this block to another language, the numeric outputs won't
change, simplifying comparisons in your code. The set block accepts
these numbers as an alternative to the names.

![](/snap-manual/assets/images/image954.png){width="3.379861111111111in"
height="0.3798611111111111in"}![](/snap-manual/assets/images/image955.png){width="1.02in"
height="0.25in"}There are a few more attributes of a block, less
commonly used.

![](/snap-manual/assets/images/image956.png){width="3.5194444444444444in"
height="0.6194444444444445in"}![](/snap-manual/assets/images/image957.png){width="1.9314370078740157in"
height="0.6102252843394576in"}![](/snap-manual/assets/images/image961.png){width="3.2909722222222224in"
height="0.6097222222222223in"}![](/snap-manual/assets/images/image962.png){width="2.35in"
height="2.56in"}![](/snap-manual/assets/images/image963.png){width="1.6694444444444445in"
height="0.25in"}The list input is just like the one for set slots except
for default values instead of types. Now for a block with a menu input:

![](/snap-manual/assets/images/image964.png){width="4.169444444444444in"
height="1.2694444444444444in"}We passed too quickly over how the script
turned the square block into a hexagon block:

![](/snap-manual/assets/images/image965.png){width="6.677272528433946in"
height="3.6666666666666665in"}Those replace item blocks aren't very
elegant. I had to look at foo by hand to figure out where the numbers I
wanted to change are. This situation can be improved with a little
programming:

Exercise for the reader: Implement this:![Graphical user interface
Description automatically
generated](/snap-manual/assets/images/image971.png){width="3.11in"
height="0.57in"}

![](/snap-manual/assets/images/image972.png){width="7.501514654418198in"
height="2.109722222222222in"}Returning to the define block, there's
another reason for the block upvar: It's helpful in defining a recursive
procedure using define. For a procedure to call itself, it needs a name
for itself. But in the definition input to the define block, define
itself hasn't been called yet, so the new block isn't in the palette
yet. So you do this:

Yes, you put block in the define, but it gets changed into this script
in the resulting definition. You could use this script directly in a
simple case like this, but in a complicated case with a recursive call
inside a ring inside the one giving the block definition, this script
always means the innermost ring. But the upvar means the outer
![](/snap-manual/assets/images/image978.png){width="7.5in"
height="0.5354166666666667in"}![](/snap-manual/assets/images/image979.png){width="4.809722222222222in"
height="0.4in"}![](/snap-manual/assets/images/image980.png){width="4.809722222222222in"
height="1.4895833333333333in"}ring:

It's analogous to using explicit formal parameters when you nest calls
to higher order functions.

![](/snap-manual/assets/images/image981.png){width="5.76875in" height="3.879861111111111in"}Macros
---------------------------------------------------------------------------------------------

Users of languages in the C family have learned to think of macros as
entirely about text strings, with no relation to the syntax of the
language. So you can do things like

\#define foo baz)

with the result that you can only use the foo macro after an open
parenthesis.

In the Lisp family of languages we have a different tradition, in which
macros are syntactically just like procedure calls, except that the
"procedure" is a macro, with different evaluation rules from ordinary
procedures. Two things make a macro different: its input expressions are
not evaluated, so a macro can establish its own syntax (but still
delimited by parentheses, in Lisp, or still one block, in Snap*!* ); and
the result of a macro call is a new expression that is evaluated *as if
it appeared in the caller* of the macro, with access to the caller's
variables and, implicitly, its continuation.

Snap*!* has long had the first part of this, the ability to make inputs
unevaluated. In version 8.0 we add the ability to run code in the
context of another procedure, just as we can run code in the context of
another sprite, using the same mechanism: the of block. In the example
on the previous page, the if \_ report \_ caller block runs a report
block, but not in its own context; it causes *the fizzbuzz block* to
report "fizz" or "buzz" as appropriate. (Yes, we know that the rules
implemented here are simplified compared to the real game.) It doesn't
just report out of the entire toplevel script; you can see that map is
able to prepend "The answer is" to each reported value.

This macro capability isn't fully implemented. First, we shouldn't have
to use the calling script as an explicit input to the macro. In a later
release, this will be fixed; when defining a block you'll be able to say
that it's a macro, and it will automatically get its caller's context as
an invisible input. Second, there is a possibility of confusion between
the variables of the macro and the variables of its caller. (What if the
macro wanted to refer to a variable value in its caller?) The one
substantial feature of Scheme that we don't yet implement is *hygienic
macros,* which make it possible to keep the two namespaces separate.

User Interface Elements

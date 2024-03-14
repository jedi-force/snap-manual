                ---
                title: 6  Predicates and Conditional Evaluation

                layout: home
                has_children: false
                has_toc: true
                nav_order: 7
                ---


![](/snap-manual/assets/images/image82.png){width="0.6666666666666666in"
height="0.1875in"}![](/snap-manual/assets/images/image83.png){width="1.2083333333333333in"
height="0.1875in"}Most reporters report either a number, like , or a
text string, like . A *predicate* is a special kind of reporter that
always reports true or false. Predicates have a hexagonal shape:

![](/snap-manual/assets/images/image84.png){width="1.9479166666666667in"
height="0.2604166666666667in"}![](/snap-manual/assets/images/image85.png){width="1.0729166666666667in"
height="0.15625in"}The special shape is a reminder that predicates don't
generally make sense in an input slot of blocks that are expecting a
number or text. You wouldn't say , although (as you can see from the
picture) Snap*!* lets you do it if you really want. Instead, you
normally use predicates in special hexagonal input slots like this one:

![](/snap-manual/assets/images/image86.png){width="0.6666666666666666in"
height="0.5694444444444444in"}The C-shaped if block runs its input
script if (and only if) the expression in its hexagonal input reports
true.

![](/snap-manual/assets/images/image87.png){width="1.59375in"
height="0.6145833333333334in"}A really useful block in animations runs
its input script *repeatedly* until a predicate is satisfied:

![](/snap-manual/assets/images/image88.png){width="2.2819444444444446in"
height="1.46875in"}![](/snap-manual/assets/images/image89.png){width="2.2916666666666665in"
height="0.84375in"}If, while working on a project, you want to omit
temporarily some commands in a script, but you don't want to forget
where they belong, you can say

Sometimes you want to take the same action whether some condition is
true or false, but with a different input value. For this purpose you
can use the *reporter* if block:

![](/snap-manual/assets/images/image90.png){width="4.208333333333333in"
height="0.3854166666666667in"}The technical term for a true or false
value is a "Boolean" value; it has a capital B because it's named after
a person, George Boole, who developed the mathematical theory of Boolean
values. Don't get confused; a hexagonal block is a *predicate,* but the
value it reports is a *Boolean.*

Another quibble about vocabulary: Many programming languages reserve the
name "procedure" for Commands (that carry out an action) and use the
name "function" for Reporters and Predicates. In this manual, a
*procedure* is any computational capability, including those that report
values and those that don't. Commands, Reporters, and Predicates are all
procedures. The words "a Procedure type" are shorthand for "Command
type, Reporter type, or Predicate type."

![](/snap-manual/assets/images/image91.png){width="1.375in"
height="0.24305555555555555in"}![](/snap-manual/assets/images/image92.png){width="1.375in"
height="0.24305555555555555in"}If you want to put a *constant* Boolean
value in a hexagonal slot instead of a predicate-based expression, hover
the mouse over the block and click on the control that appears:

Variables
---------

![](/snap-manual/assets/images/image93.png){width="1.5833333333333333in"
height="1.4166666666666667in"}Try this script:

![](/snap-manual/assets/images/image94.png){width="1.8854166666666667in"
height="1.4375in"}The input to the move block is an orange oval. To get
it there, drag the orange oval that's part of the for block:

The orange oval is a *variable:* a symbol that represents a value. (I
took this screenshot before changing the second number input to the for
block from the default 10 to 200, and before dragging in a turn block.)
For runs its script input repeatedly, just like repeat, but before each
repetition it sets the variable i to a number starting with its first
numeric input, adding 1 for each repetition, until it reaches the second
numeric input. In this case, there will be 200 repetitions, first with
i=1, then with i=2, then 3, and so on until i=200 for the final
repetition. The result is that each move draws a longer and longer line
segment, and that's why the picture you see is a kind of spiral. (If you
try again with a turn of 90 degrees instead of 92, you'll see why this
picture is called a "squiral.")

![](/snap-manual/assets/images/image95.png){width="3.1875in"
height="1.5in"}The variable i is created by the for block, and it can
only be used in the script inside the block's C-slot. (By the way, if
you don't like the name i, you can change it by clicking on the orange
oval without dragging it, which will pop up a dialog window in which you
can enter a different name:

"I" isn't a very descriptive name; you might prefer "length" to indicate
its purpose in the script. "I" is traditional because mathematicians
tend to use letters between i and n to represent integer values, but in
programming languages we don't have to restrict ourselves to
single-letter variable names.)

###  Global Variables

You can create variables "by hand" that aren't limited to being used
within a single block. At the top of the Variables palette, click the
"Make a variable" button:

![](/snap-manual/assets/images/image96.png){width="3.1875in"
height="1.84375in"}![](/snap-manual/assets/images/image97.png){width="2.0520833333333335in"
height="2.2708333333333335in"}This will bring up a dialog window in
which you can give your variable a name:

The dialog also gives you a choice to make the variable available to all
sprites (which is almost always what you want) or to make it visible
only in the current sprite. You'd do that if you're going to give
several sprites individual variables *with the same name,* so that you
can share a script between sprites (by dragging it from the current
sprite's scripting area to the picture of another sprite in the sprite
corral), and the different sprites will do slightly different things
when running that script because each has a different value for that
variable name.

![](/snap-manual/assets/images/image98.png){width="1.6583333333333334in"
height="2.2916666666666665in"}If you give your variable the name "name"
then the Variables palette will look like this:

![](/snap-manual/assets/images/image99.png){width="1.0416666666666667in"
height="0.40625in"}There's now a "Delete a variable" button, and there's
an orange oval with the variable name in it, just like the orange oval
in the for block. You can drag the variable into any script in the
scripting area. Next to the oval is a checkbox, initially checked. When
it's checked, you'll also see a *variable watcher* on the stage:

When you give the variable a value, the orange box in its watcher will
display the value.

![](/snap-manual/assets/images/image100.png){width="1.9270833333333333in"
height="0.4791666666666667in"}How *do* you give it a value? You use the
set block:

Note that you *don't* drag the variable's oval into the set block! You
click on the downarrow in the first input slot, and you get a menu of
all the available variable names.

If you do choose "For this sprite only" when creating a variable, its
block in the palette looks like this:

![Macintosh
HD:Users:bh:Desktop:local-var.png](/snap-manual/assets/images/image101.png){width="0.6583333333333333in"
height="0.14166666666666666in"} The *location*-pin icon is a bit of a
pun on a sprite-*local* variable. It's shown only in the palette.

### Script Variables

![](/snap-manual/assets/images/image102.png){width="5.503472222222222in"
height="2.3125in"}In the name example above, our project is going to
carry on an interaction with the user, and we want to remember their
name throughout the project. That's a good example of a situation in
which a *global* variable (the kind you make with the "Make a variable"
button) is appropriate. Another common example is a variable called
"score" in a game project. But sometimes you only need a variable
temporarily, during the running of a particular script. In that case you
can use the script variables block to make the variable:

As in the for block, you can click on an orange oval in the script
variables block without dragging to change its name. You can also make
more than one temporary variable by clicking on the right arrow at the
end of the block to add another variable oval:

### ![](/snap-manual/assets/images/image106.png){width="2.0833333333333335in" height="0.3020833333333333in"}Renaming variables

There are several reasons why you might want to change the name of a
variable:

1.  It has a default name, such as the "a" in script variables or the
    "i" in for.

2.  It conflicts with another name, such as a global variable, that you
    want to use in the same script.

3.  You just decide a different name would be more self-documenting.

In the first and third case, you probably want to change the name
everywhere it appears in that script, or even in all scripts. In the
second case, if you've already used both variables in the script before
realizing that they have the same name, you'll want to look at each
instance separately to decide which ones to rename. Both of these
operations are possible by right-clicking or control-clicking on a
variable oval.

![](/snap-manual/assets/images/image107.png){width="1.613888888888889in"
height="1.507638888888889in"}![](/snap-manual/assets/images/image108.png){width="2.826388888888889in"
height="1.2569444444444444in"}![](/snap-manual/assets/images/image109.png){width="1.3819444444444444in"
height="0.7430555555555556in"}If you right-click on an orange oval in a
context in which the variable is *used,* then you are able to rename
just that one orange oval:

![](/snap-manual/assets/images/image110.png){width="1.7083333333333333in"
height="0.8333333333333334in"}![](/snap-manual/assets/images/image111.png){width="1.4930555555555556in"
height="0.7430555555555556in"}If you right-click on the place where the
variable is *defined* (a script variables block, the orange oval for a
global variable in the Variables palette, or an orange oval that's built
into a block such as the "i" in for), then you are given two renaming
options, "rename" and "rename all." If you choose "rename," then the
name is changed only in that one orange oval, as in the previous case:

![](/snap-manual/assets/images/image112.png){width="1.4930555555555556in"
height="0.7430555555555556in"}![](/snap-manual/assets/images/image113.png){width="1.7083333333333333in"
height="0.8333333333333334in"}But if you choose "rename all," then the
name will be changed throughout the scope of the variable (the script
for a script variable, or everywhere for a global variable):

### Transient variables

![](/snap-manual/assets/images/image114.png){width="1.2916666666666667in"
height="1.0555555555555556in"}So far we've talked about variables with
numeric values, or with short text strings such as someone's name. But
there's no limit to the amount of information you can put in a variable;
in Chapter IV you'll see how to use *lists* to collect many values in
one data structure, and in Chapter VIII you'll see how to read
information from web sites. When you use these capabilities, your
project may take up a lot of memory in the computer. If you get close to
the amount of memory available to Snap*!*, then it may become impossible
to save your project. (Extra space is needed temporarily to convert from
Snap*!* 's internal representation to the form in which projects are
exported or saved.) If your program reads a lot of data from the outside
world that will still be available when you use it next, you might want
to have values containing a lot of data removed from memory before
saving the project. To do this, right-click or control-click on the
orange oval in the Variables palette, to see this menu:

You already know about the rename options, and help... displays a help
screen about variables in general. Here we're interested in the check
box next to transient. If you check it, this variable's value will not
be saved when you save your project. Of course, you'll have to ensure
that when your project is loaded, it recreates the needed value and sets
the variable to it.

Debugging
---------

Snap*!* provides several tools to help you debug a program. They center
around the idea of *pausing* the running of a script partway through, so
that you can examine the values of variables.

### The pause button

![](/snap-manual/assets/images/image115.png){width="0.2916666666666667in"
height="0.16666666666666666in"}![](/snap-manual/assets/images/image116.png){width="0.2916666666666667in"
height="0.16666666666666666in"}The simplest way to pause a program is
manually, by clicking the pause button in the top right corner of the
window. While the program is paused, you can run other scripts by
clicking on them, show variables on stage with the checkbox next to the
variable in the Variables palette or with the show variable block, and
do all the other things you can generally do, including modifying the
paused scripts by adding or removing blocks. The button changes shape to
and clicking it again resumes the paused scripts.

### Breakpoints: the pause all block

![](/snap-manual/assets/images/image117.png){width="0.8194444444444444in"
height="0.2152777777777778in"}The pause button is great if your program
seems to be in an infinite loop, but more often you'll want to set a
*breakpoint,* a particular point in a script at which you want to pause.
The block, near the bottom of the Control palette, can be inserted in a
script to pause when it is run. So, for example, if your program is
getting an error message in a particular block, you could use pause all
just before that block to look at the values of variables just before
the error happens.

![](/snap-manual/assets/images/image118.png){width="1.8833333333333333in"
height="0.9111111111111111in"}The pause all block turns bright cyan
while paused. Also, during the pause, you can right-click on a running
script and the menu that appears will give you the option to show
watchers for temporary variables of the script:

But what if the block with the error is run many times in a loop, and it
only errors when a particular condition is true---say, the value of some
variable is negative, which shouldn't ever happen. In the iteration
library (see page 25 for more about how to use libraries) is a
breakpoint block that lets you set a *conditional* breakpoint, and
automatically display the relevant variables before pausing. Here's a
sample use of it:

![](/snap-manual/assets/images/image119.png){width="1.1944444444444444in"
height="1.3333333333333333in"}(In this contrived example, variable zot
comes from outside the script but is relevant to its behavior.) When you
continue (with the pause button), the temporary variable watchers are
removed by this breakpoint block before resuming the script. The
breakpoint block isn't magic; you could alternatively just put a pause
all inside an if.[^2]

### Visible stepping

![](/snap-manual/assets/images/image121.png){width="0.2916666666666667in"
height="0.16666666666666666in"}![](/snap-manual/assets/images/image122.png){width="0.5456342957130359in"
height="0.1527777777777778in"}![](/snap-manual/assets/images/image123.png){width="0.2916666666666667in"
height="0.16666666666666666in"}Sometimes you're not exactly sure where
the error is, or you don't understand how the program got there. To
understand better, you'd like to watch the program as it runs, at human
speed rather than at computer speed. You can do this by clicking the
*visible stepping button* ( ), before running a script or while the
script is paused. The button will light up ( ) and a speed control
slider will appear in the toolbar. When you start or continue the
script, its blocks and input slots will light up cyan one at a time:

![](/snap-manual/assets/images/image124.png){width="7.498611111111111in"
height="1.15in"}In this simple example, the inputs to the blocks are
constant values, but if an input were a more complicated expression
involving several reporter blocks, each of those would light up as they
are called. Note that the input to a block is evaluated before the block
itself is called, so, for example, the 100 lights up before the move.

![](/snap-manual/assets/images/image134.png){width="0.2916666666666667in"
height="0.16666666666666666in"}The speed of stepping is controlled by
the slider. If you move the slider all the way to the left, the speed is
zero, the pause button turns into a step button , and the script takes a
single step each time you push it. The name for this is *single
stepping.*

If several scripts that are visible in the scripting area are running at
the same time, all of them are stepped in parallel. However, consider
the case of two repeat loops with different numbers of blocks. While not
stepping, each script goes through a complete cycle of its loop in each
display cycle, despite the difference in the length of a cycle. In order
to ensure that the visible result of a program on the stage is the same
when stepped as when not stepped, the shorter script will wait at the
bottom of its loop for the longer script to catch up.

When we talk about custom blocks in Chapter III, we'll have more to say
about visible stepping as it affects those blocks.

Etcetera
--------

This manual doesn't explain every block in detail. There are many more
motion blocks, sound blocks, costume and graphics effects blocks, and so
on. You can learn what they all do by experimentation, and also by
reading the "help screens" that you can get by right-clicking or
control-clicking a block and selecting "help..." from the menu that
appears. If you forget what palette (color) a block is, but you remember
at least part of its name, type control-F and enter the name in the text
block that appears in the palette area.

Here are the primitive blocks that don't exist in Scratch:

![](/snap-manual/assets/images/image135.png){width="1.25in"
height="0.22916666666666666in"}![](/snap-manual/assets/images/image136.png){width="1.0520833333333333in"
height="0.22916666666666666in"} reports a new costume consisting of
everything that's drawn on the stage by any sprite. Right-clicking the
block in the scripting area gives the option to change it to if vector
logging is enabled. See page 116.

![](/snap-manual/assets/images/image137.png){width="2.0833333333333335in"
height="0.375in"}Print characters in the given point size on the stage,
at the sprite's position and in its direction. The sprite moves to the
end of the text. (That's not always what you want, but you can save the
sprite's position before using it, and sometimes you need to know how
big the text turned out to be, in turtle steps.) If the pen is down, the
text will be underlined.

![](/snap-manual/assets/images/image138.png){width="1.2006944444444445in"
height="0.5138888888888888in"}Takes a sprite as input. Like stamp except
that the costume is stamped onto the selected sprite instead of onto the
stage. (Does nothing if the current sprite doesn't overlap the chosen
sprite.)

![](/snap-manual/assets/images/image139.png){width="1.1916666666666667in"
height="0.3388888888888889in"}Takes a sprite as input. Erases from that
sprite's costume the area that overlaps with the current sprite's
costume. (Does not affect the costume in the chosen sprite's wardrobe,
only the copy currently visible.)

![](/snap-manual/assets/images/image140.png){width="0.5298611111111111in"
height="0.5in"}![](/snap-manual/assets/images/image141.png){width="0.9895833333333334in"
height="0.25972222222222224in"}![Icon Description automatically
generated](/snap-manual/assets/images/image142.png){width="1.3298611111111112in"
height="0.42986111111111114in"} See page 6. See page 17.

![](/snap-manual/assets/images/image143.png){width="1.71in"
height="0.23in"}Reporter version of the if/else primitive command block.
Only one of the two branches is evaluated, depending on the value of the
first input.

![](/snap-manual/assets/images/image144.png){width="1.83in"
height="0.61in"}Looping block like repeat but with an index variable.

![](/snap-manual/assets/images/image145.png){width="1.3798611111111112in"
height="0.28958333333333336in"}Declare local variables in a script.

![](/snap-manual/assets/images/image146.png){width="0.86in"
height="0.19in"}![](/snap-manual/assets/images/image147.png){width="0.72in"
height="0.2in"}![](/snap-manual/assets/images/image148.png){width="1.17in"
height="0.18in"} See page 91.

![](/snap-manual/assets/images/image149.png){width="2.738611111111111in"
height="0.2116819772528434in"}Constant true or false value. See page 12.

![](/snap-manual/assets/images/image153.png){width="2.13in" height="0.18in"}
Create a primitive using JavaScript. (This block is disabled by default;
the user must check "Javascript extensions" in the setting menu *each
time* a project is loaded.)

![](/snap-manual/assets/images/image154.png){width="1.6305555555555555in"
height="1.5756944444444445in"}The at block lets you examine the screen
pixel directly behind the rotation center of a sprite, the mouse, or an
arbitrary (x,y) coordinate pair dropped onto the second menu slot. The
first five items of the left menu let you examine the color visible at
the position. (The "RGBA" option reports a list.) The "sprites" option
reports a list of all sprites, including this one, any point of which
overlaps this sprite's rotation center (behind or in front). This is a
hyperblock with respect to its second input.

![](/snap-manual/assets/images/image158.png){width="1.6862992125984253in"
height="1.852853237095363in"}![](/snap-manual/assets/images/image162.png){width="2.4458333333333333in"
height="1.3263888888888888in"}![](/snap-manual/assets/images/image163.png){width="2.3555555555555556in"
height="0.3888888888888889in"} Checks the data type of a value.

![](/snap-manual/assets/images/image164.png){width="3.398297244094488in"
height="1.065152012248469in"}

![](/snap-manual/assets/images/image166.png){width="2.504166666666667in"
height="2.23125in"}Turn the text into a list, using the second input as
the delimiter between items. The default delimiter, indicated by the
brown dot in the input slot, is a single space character. "Letter" puts
each character of the text in its own list item. "Word" puts each word
in an item. (Words are separated by any number of consecutive space,
tab, carriage return, or newline characters.) "Line" is a newline
character (0xa); "tab" is a tab character (0x9); "cr" is a carriage
return (0xd). "Csv" and "json" split formatted text into lists of lists;
see page 54. "Blocks" takes a script as the first input, reporting a
list structure representing the structure of the script. See Chapter XI.

![](/snap-manual/assets/images/image170.png){width="1.479861111111111in"
height="0.18958333333333333in"}For lists, reports true only if its two
input values are the very same list, so changing an item in one of them
is visible in the other. (For =, lists that look the same are the same.)
For text strings, uses case-sensitive comparison, unlike =, which is
case-independent.

![](/snap-manual/assets/images/image171.png){width="2.867929790026247in"
height="0.18958333333333333in"}These *hidden* blocks can be found with
the relabel option of any dyadic arithmetic block. They're hidden partly
because writing them in Snap*!* is a good, pretty easy programming
exercise. Note: the two inputs to atan2 are Δ*x* and Δ*y* in that order,
because we measure angles clockwise from north. Max and min are
*variadic;* by clicking the arrowhead, you can provide additional
inputs.

![Logo Description automatically generated with medium
confidence](/snap-manual/assets/images/image177.png){width="0.63in"
height="0.19in"} ![A picture containing text, monitor, screenshot
Description automatically
generated](/snap-manual/assets/images/image178.png){width="0.63in"
height="0.19in"} ![Logo Description automatically
generated](/snap-manual/assets/images/image179.png){width="0.63in"
height="0.19in"} Similarly, these hidden predicates can be found by
relabeling the relational predicates.

![](/snap-manual/assets/images/image180.png){width="5.449558180227472in"
height="0.6166666666666667in"}**Metaprogramming (see Chapter** **XI. ,
page** **101)**

These blocks support *metaprogramming,* which means manipulating blocks
and scripts as data. This is not the same as manipulating procedures
(see Chapter VI. ), which are what the blocks *mean;* in metaprogramming
the actual blocks, what you see on the screen, are the data. This
capability is new in version 8.0.

**First class list blocks (see Chapter IV, page** **46):**

![](/snap-manual/assets/images/image190.png){width="7.616666666666666in"
height="2.183333333333333in"}

**\
**![](/snap-manual/assets/images/image224.png){width="0.83in"
height="0.21in"} ![](/snap-manual/assets/images/image225.png){width="1.43in"
height="0.21in"} **report the sprite or mouse position as a two-item
vector (x,y).**

![](/snap-manual/assets/images/image226.png){width="5.9944444444444445in"
height="0.325in"}**First class procedure blocks (see Chapter VI, page**
**65):**

![](/snap-manual/assets/images/image240.png){width="5.330555555555556in"
height="0.3451388888888889in"}![](/snap-manual/assets/images/image246.png){width="4.361111111111111in"
height="0.325in"}**First class continuation blocks (see Chapter X,
page** **93):**

**First class sprite, costume, and sound blocks (see Chapter VII, page**
**73):**

![](/snap-manual/assets/images/image250.png){width="5.88125in"
height="2.1479166666666667in"}

**Scenes:**

![](/snap-manual/assets/images/image280.png){width="2.38in"
height="1.32in"}The major new feature of version 7.0 is *scenes:* A
project can include within it sub-projects, called scenes, each with its
own stage, sprites, scripts, and so on. This block makes another scene
active, replacing the current one.

Nothing is automatically shared between scenes: no sprites, no blocks,
no variables. But the old scene can send a message to the new one, to
start it running, with optional payload as in broadcast (page 23).

![](/snap-manual/assets/images/image281.png){width="2.54in"
height="0.31in"}![](/snap-manual/assets/images/image282.png){width="3.129861111111111in"
height="0.5236111111111111in"}**In particular, you can say**

> **if the new scene expects to be started with a green flag signal.**

**\
These aren't new blocks but they have a new feature:**

These accept two-item (x,y) lists as input, and have extended menus
(also including other sprites):

![](/snap-manual/assets/images/image286.png){width="7.483252405949257in"
height="1.1298611111111112in"}"Center" means the center of the stage,
the point at (0,0). "Direction" is in the point in direction sense, the
direction that would leave this sprite pointing toward another sprite,
the mouse, or the center. "Ray length" is the distance from the center
of this sprite to the nearest point on the other sprite, in the current
direction.

![](/snap-manual/assets/images/image296.png){width="2.571527777777778in"
height="1.41875in"}The stop block has two extra menu choices. Stop this
block is used inside the definition of a custom block to stop just this
invocation of this custom block and continue the script that called it.
Stop all but this script is good at the end of a game to stop all the
game pieces from moving around, but keep running this script to provide
the user's final score. The last two menu choices add a tab at the
bottom of the block because the current script can continue after it.

![](/snap-manual/assets/images/image300.png){width="2.4125in"
height="1.0659722222222223in"}The new "pen trails" option is true if the
sprite is touching any drawn or stamped ink on the stage. Also, touching
will not detect hidden sprites, but a hidden sprite can use it to detect
visible sprites.

![](/snap-manual/assets/images/image304.png){width="1.0597222222222222in"
height="0.2798611111111111in"}![](/snap-manual/assets/images/image305.png){width="2.433333333333333in"
height="0.3in"}The video block has a snap option that takes a snapshot
and reports it as a costume. It is hyperized with
![](/snap-manual/assets/images/image306.png){width="1.0520833333333333in"
height="0.28125in"}respect to its second input.

![](/snap-manual/assets/images/image307.png){width="1.4166666666666667in"
height="3.3319444444444444in"}The "neg" option is a monadic negation
operator, equivalent to . "lg" is log~2~. "id" is the identity function,
which reports its input. "sign" reports 1 for positive input, 0 for zero
input, or -1 for negative input.

![](/snap-manual/assets/images/image311.png){width="3.286111111111111in"
height="0.5513888888888889in"}

![](/snap-manual/assets/images/image313.png){width="3.7604166666666665in"
height="1.214646762904637in"}

![](/snap-manual/assets/images/image325.png){width="2.213888888888889in"
height="1.6604166666666667in"}Extended mouse interaction events, sensing
clicking, dragging, hovering, etc. The "stopped" option triggers when
all scripts are stopped, as with the stop button; it is useful for
robots whose hardware interface must be told to turn off motors. A when
I am stopped script can run only for a limited time.

![](/snap-manual/assets/images/image329.png){width="2.879861111111111in"
height="1.717186132983377in"}

Extended broadcast: Click the right arrowhead to direct the message to a
single sprite or the stage. Click again to add any value as a payload to
the message.

![](/snap-manual/assets/images/image341.png){width="3.7784722222222222in"
height="1.8090277777777777in"}![](/snap-manual/assets/images/image351.png){width="1.8194444444444444in"
height="0.9597222222222223in"}Extended when I receive: Click the right
arrowhead to expose a script variable (click on it to change its name,
like any script variable) that will be set to the data of a matching
broadcast. If the first input is set to "any message," then the data
variable will be set to the message, if no payload is included with the
broadcast, or to a two-item list containing the message and the payload.

![A picture containing text, clipart Description automatically
generated](/snap-manual/assets/images/image355.png){width="1.68in"
height="0.38in"} If the input is set to "any key," then a right
arrowhead appears:

> ![](/snap-manual/assets/images/image356.png){width="2.25in"
> height="0.41944444444444445in"}![](/snap-manual/assets/images/image357.png){width="1.8194444444444444in"
> height="0.3798611111111111in"}and if you click it, a script variable
> key is created whose value is the key that was pressed. (If the key is
> one that' represented in the input menu by a word or phrase, e.g.,
> "enter" or "up arrow," then the value of key will be that word or
> phrase, *except for* the space character, which is represented as
> itself in key.)\
> ![](/snap-manual/assets/images/image358.png){width="3.0924245406824147in"
> height="0.6895833333333333in"}

![](/snap-manual/assets/images/image362.png){width="5.95in"
height="0.8798611111111111in"}![](/snap-manual/assets/images/image366.png){width="5.569444444444445in"
height="1.1in"}![](/snap-manual/assets/images/image370.png){width="6.3694444444444445in"
height="2.9086690726159232in"}

![](/snap-manual/assets/images/image376.png){width="1.455618985126859in"
height="2.327904636920385in"}![](/snap-manual/assets/images/image380.png){width="5.874242125984252in"
height="1.0097222222222222in"}These ask features and more in the Menus
library.

The of block has an extended menu of attributes of a sprite. Position
reports an (x,y) vector. Size reports the percentage of normal size, as
controlled by the set size block in the Looks category. Left, right,
etc. report the stage coordinates of the corresponding edge of the
sprite's bounding box. Variables reports a list of the names of all
variables in scope (global, sprite-local, and script variables if the
right input is a script.

 Libraries
---------

![](/snap-manual/assets/images/image384.png){width="0.3194444444444444in"
height="0.18055555555555555in"}![](/snap-manual/assets/images/image385.png){width="7.401388888888889in"
height="3.238888888888889in"}There are several collections of useful
procedures that aren't Snap*!* primitives, but are provided as
libraries. To include a library in your project, choose the Libraries...
option in the file ( ) menu.

When you click on the one-line description of a library, you are shown
the actual blocks in the library and a longer explanation of its
purpose. You can browse the libraries to find one that will satisfy your
needs.

The libraries and their contents may change, but as of this writing the
list library has these blocks:

![](/snap-manual/assets/images/image387.png){width="1.8486111111111112in"
height="2.4923611111111112in"} (The lightning bolt before the name in
several of these blocks means that they use compiled HOFs or JavaScript
primitives to achieve optimal speed. They are officially considered
experimental.) Remove duplicates from reports a list in which no two
items are equal. The sort block takes a list and a two-input comparison
predicate, such as \<, and reports a list with the items sorted
according to that comparison. The assoc block is for looking up a key in
an *association list:* a list of two-item lists. In each two-item list,
the first is a *key* and the second is a *value.* The inputs are a key
and an association list; the block reports the first key-value pair
whose key is equal to the input key.

For each item is a variant of the primitive version that provides a \#
variable containing the position in the input list of the currently
considered item. Multimap is a version of map that allows multiple list
inputs, in which case the mapping function must take as many inputs as
there are lists; it will be called with all the first items, all the
second items, and so on. Zip takes any number of lists as inputs; it
reports a list of lists: all the first items, all the second items, and
so on. The no-name identity function reports its input.

Sentence and sentence➔list are borrowed from the word and sentence
library (page 27) to serve as a variant of append that accepts non-lists
as inputs. Printable takes a list structure of any depth as input and
reports a compact representation of the list as a text string.

The iteration, composition library has these blocks:

![](/snap-manual/assets/images/image388.png){width="1.6888888888888889in"
height="4.75in"}Catch and throw provide a nonlocal exit facility. You
can drag the tag from a catch block to a throw inside its C-slot, and
the throw will then jump directly out to the matching catch without
doing anything in between.

If do and pause all is for setting a breakpoint while debugging code.
The idea is to put show variable blocks for local variables in the
C-slot; the watchers will be deleted when the user continues from the
pause.

Ignore is used when you need to call a reporter but you don't care about
the value it reports. (For example, you are writing a script to time how
long the reporter takes.)

The cascade blocks take an initial value and call a function repeatedly
on that value, *f*(*f*(*f*(*f*...(*x*)))).

The compose block takes two functions and reports the function
*f*(*g*(*x*)).

![](/snap-manual/assets/images/image389.png){width="1.0444444444444445in"
height="0.16111111111111112in"}![](/snap-manual/assets/images/image390.png){width="3.1527777777777777in"
height="0.2986111111111111in"}The first three repeat blocks are variants
of the primitive repeat until block, giving all four combinations of
whether the first test happens before or after the first repetition, and
whether the condition must be true or false to continue repeating. The
last repeat block is like the repeat primitive, but makes the number of
repetitions so far available to the repeated script. The next two blocks
are variations on for: the first allows an explicit step instead of
using ±1, and the second allows any values, not just numbers; inside the
script you say

![](/snap-manual/assets/images/image391.png){width="3.4409722222222223in"
height="1.3611111111111112in"}![](/snap-manual/assets/images/image392.png){width="3.709722222222222in"
height="1.1715277777777777in"}replacing the grey block in the picture
with an expression to give the next desired value for the loop index.
Pipe allows reordering a nested composition with a left-to-right one:

The stream library has these blocks:

![](/snap-manual/assets/images/image393.png){width="3.161111111111111in"
height="2.1534722222222222in"}*Streams* are a special kind of list whose
items are not computed until they are needed. This makes certain
computations more efficient, and also allows the creation of lists with
infinitely many items, such as a list of all the positive integers. The
first five blocks are stream versions of the list blocks in front of,
item 1 of, all but first of, map, and keep. Show stream takes a stream
and a number as inputs, and reports an ordinary list of the first *n*
items of the stream. Stream is like the primitive list; it makes a
finite stream from explicit items. Sieve is an example block that takes
as input the stream of integers starting with 2 and reports the stream
of all the prime numbers. Stream with numbers from is like the numbers
from block for lists, except that there is no endpoint; it reports an
infinite stream of numbers.

The word and sentence library has these blocks:

![](/snap-manual/assets/images/image394.png){width="1.679861111111111in"
height="3.6430555555555557in"}This library has the goal of recreating
the Logo approach to handling text: A text isn't best viewed as a string
of characters, but rather as a *sentence*, made of *words,* each of
which is a string of *letters.* With a few specialized exceptions, this
is why people put text into computers: The text is sentences of natural
(i.e., human) language, and the emphasis is on words as constitutive of
sentences. You barely notice the letters of the words, and you don't
notice the spaces between them at all, unless you're proof-reading.
(Even then: Proofreading is *diffciult,* because you see what you expect
to see, what will make the snetence make sense, rather than the
misspelling in front of of your eyes.) Internally, Logo stores a
sentence as a list of words, and a word as a string of letters.

Inexplicably, the designers of Scratch chose to abandon that tradition,
and to focus on the representation of text as a string of characters.
The one vestige of the Logo tradition from which Scratch developed is
the block named letter (1) of (world), rather than character (1) of
(world). Snap*!* inherits its text handling from Scratch.

In Logo, the visual representation of a sentence (a list of words) looks
like a natural language sentence: a string of words with spaces between
them. In Snap*!*, the visual representation of a list looks nothing at
all like natural language. On the other hand, representing a sentence as
a string means that the program must continually re-parse the text on
every operation, looking for spaces, treating multiple consecutive
spaces as one, and so on. Also, it's more convenient to treat a sentence
as a list of words rather than a string of words because in the former
case you can use the higher order functions map, keep, and combine on
them. This library attempts to be agnostic as to the internal
representation of sentences. The sentence selectors accept any
combination of lists and strings; there are two sentence constructors,
one to make a string (join words) and one to make a list (sentence).

The selector names come from Logo, and should be self-explanatory.
However, because in a block language you don't have to type the block
name, instead of the terse butfirst or the cryptic bf we spell out "all
but first of" and include "word" or "sentence" to indicate the intended
domain. There's no first letter of block because letter 1 of serves that
need. Join words (the sentence-as-string constructor) is like the
primitive join except that it puts a space in the reported value between
each of the inputs. Sentence (the List-colored sentence-as-list
constructor) accepts any number of inputs, which can be words,
sentences-as-lists, or sentences-as-strings. (If inputs are lists of
lists, only one level of flattening is done.) Sentence reports a list of
words; there will be no empty words or words containing spaces. The four
blocks with right-arrows in their names convert back and forth between
text strings (words or sentences) and lists. (Splitting a word into a
list of letters is unusual unless you're a linguist investigating
orthography.) Printable takes a list (including a deep list) of words as
input and reports a text string in which parentheses are used to show
the structure, as in Lisp/Scheme.

The pixels library has one block:

![](/snap-manual/assets/images/image395.png){width="0.7791666666666667in"
height="0.6298611111111111in"}Costumes are first class data in Snap*!*.
Most of the processing of costume data is done by primitive blocks in
the Looks category. (See page 79.) This library provides snap, which
takes a picture using your computer's camera and reports it as a
costume.

The bar charts library has these blocks:

![](/snap-manual/assets/images/image396.png){width="3.4305555555555554in"
height="1.9166666666666667in"}Bar chart takes a table (typically from a
CSV data set) as input and reports a summary of the table grouped by the
field in the specified column number. The remaining three inputs are
used only if the field values are numbers, in which case they can be
grouped into buckets (e.g., decades, centuries, etc.). Those inputs
specify the smallest and largest values of interest and, most
importantly, the width of a bucket (10 for decades, 100 for centuries).
If the field isn\'t numeric, leave these three inputs empty or set them
to zero. Each string value of the field is its own bucket, and they
appear sorted alphabetically.

Bar chart reports a new table with three columns. The first column
contains the bucket name or smallest number. The second column contains
a nonnegative integer that says how many records in the input table fall
into this bucket. The third column is a subtable containing the actual
records from the original table that fall into the bucket. Plot bar
chart takes the table reported by bar chart and graphs it on the stage,
with axes labelled appropriately. The remaining blocks are helpers for
those.

If your buckets aren\'t of constant width, or you want to group by some
function of more than one field, load the \"Frequency Distribution
Analysis\" library instead.

The multi-branched conditional library has these blocks:

![](/snap-manual/assets/images/image397.png){width="1.85in"
height="2.479861111111111in"}The catch and throw blocks duplicate ones
in the iteration library, and are included because they are used to
implement the others. The cases block sets up a multi-branch
conditional, similar to cond in Lisp or switch in C-family languages.
The first branch is built into the cases block; it consists of a Boolean
test in the first hexagonal slot and an action script, in the C-slot, to
be run if the test reports true. The remaining branches go in the
variadic hexagonal input at the end; each branch consists of an else if
block, which includes the Boolean test and the corresponding action
script, except possibly for the last branch, which can use the
unconditional else block. As in other languages, once a branch succeeds,
no other branches are tested.

### 

The variadic library has these blocks:

![](/snap-manual/assets/images/image398.png){width="1.1965277777777779in"
height="0.4166666666666667in"}These are versions of the associative
operators and, and or that take any number of inputs instead of exactly
two inputs. As with any variadic input, you can also drop a list of
values onto the arrowheads instead of providing the inputs one at a time
As of version 8.0, the arithmetic operators sum, product, minimum, and
maximum are no longer included, because the primitive operators +. ×,
min, and max are themselves variadic.

![](/snap-manual/assets/images/image399.png){width="7.277083333333334in"
height="1.1027777777777779in"}The colors and crayons library has these
blocks:

It is intended as a more powerful replacement for the primitive set pen
block, including *first class color* support; HSL color specification as
a better alternative to the HSV that Snap*!* inherits from JavaScript; a
"fair hue" scale that compensates for the eye's grouping a wide range of
light frequencies as green while labelling mere slivers as orange or
yellow; the X11/W3C standard color names; RGB in hexadecimal; a linear
color scale (as in the old days, but better) based on fair hues and
including shades (darker colors) and grayscale. Another linear scale is
a curated set of 100 "crayons," explained further on the next page.

![](/snap-manual/assets/images/image409.png){width="3.0590277777777777in"
height="2.283333333333333in"}![](/snap-manual/assets/images/image413.png){width="1.1333333333333333in"
height="0.23333333333333334in"}![](/snap-manual/assets/images/image414.png){width="0.95in"
height="0.225in"}Colors are created by the block (for direct user
selection), the color from block to specify a color numerically, or by ,
which reports the color currently in use by the pen. The from color
block reports names or numbers associated with a color:

![](/snap-manual/assets/images/image415.png){width="4.833333333333333in"
height="0.4305555555555556in"}Colors can be created from other colors:

The three blocks with pen in their names are improved versions of
primitive Pen blocks. In principle set pen, for example, could be
implemented using a (hypothetical) set pen to color composed with the
color from block, but in fact set pen benefits from knowing how the pen
color was set in its previous invocation, so it's implemented separately
from color from. Details in Appendix A.

![](/snap-manual/assets/images/image416.png){width="7.5in"
height="0.25in"}The recommended way to choose a color is from one of two
linear scales: the continuous *color numbers* and the discrete
*crayons:*

![](/snap-manual/assets/images/image417.png){width="7.5in" height="0.25in"}

![](/snap-manual/assets/images/image418.png){width="4.0in"
height="0.20833333333333334in"}Color numbers are based on *fair hues,* a
modification of the spectrum (rainbow) hue scale that devotes less space
to green and more to orange and yellow, as well as promoting brown to a
real color. Here is the normal hue scale, for reference:

![](/snap-manual/assets/images/image419.png){width="4.0in"
height="0.20833333333333334in"}Here is the fair hue scale:

![](/snap-manual/assets/images/image416.png){width="5.0in"
height="0.20833333333333334in"}Here is the color number scale:

(The picture is wider so that pure spectral colors line up with the fair
hue scale.)

![](/snap-manual/assets/images/image417.png){width="5.0in"
height="0.20833333333333334in"}And here are the 100 crayons:

The color from block, for example, provides different pulldown menus
depending on which scale you choose:

![](/snap-manual/assets/images/image420.png){width="2.4166666666666665in"
height="0.34444444444444444in"}![](/snap-manual/assets/images/image421.png){width="7.070138888888889in"
height="2.8673611111111112in"}You can also type the crayon name: There
are many scales:

![](/snap-manual/assets/images/image427.png){width="4.291666666666667in"
height="1.9097222222222223in"}

![](/snap-manual/assets/images/image428.png){width="6.1506944444444445in"
height="0.5347222222222222in"} The white slot at the end of some of the
blocks has two purposes. It can be used to add a transparency to a color
(0=opaque, 100=transparent):

![](/snap-manual/assets/images/image432.png){width="7.029861111111111in"
height="0.4305555555555556in"}or it can be expanded to enter three or
four numbers for a vector directly into the block, so these are
equivalent:

![](/snap-manual/assets/images/image436.png){width="7.493055555555555in"
height="0.4305555555555556in"}But note that a transparency number in a
four-number RGBA vector is on the scale 255=opaque, 0=transparent, so
the following are *not* equivalent:

Set pen crayon to provides the equivalent of a box of 100 crayons. They
are divided into color groups, so the menu in the set pen crayon to
input slot has submenus. The colors are chosen so that starting
![](/snap-manual/assets/images/image440.png){width="4.365277777777778in"
height="0.5152777777777777in"}from crayon 0, change pen crayon by 10
rotates through an interesting, basic set of ten colors:

![](/snap-manual/assets/images/image441.png){width="4.355555555555555in"
height="0.28194444444444444in"}Using change pen crayon by 5 instead
gives ten more colors, for a total of 20:

(Why didn't we use the colors of the 100-crayon Crayola™ box? A few
reasons, one of which is that some Crayola colors aren't representable
on RGB screens. Some year when you have nothing else to do, look up
"color space" on Wikipedia. Also "crayon." Oh, it's deliberate that
change pen crayon by 5 doesn't include white, since that's the usual
stage background color. White is crayon 14.) Note that crayon 43 is
"Variables"; all the standard block colors are included.

See Appendix A (page 139) for more information.

![](/snap-manual/assets/images/image442.png){width="1.51in"
height="0.9in"}The **crayon library** has only the crayon features,
without the rest of the colors package.

The catch errors library has these blocks:

![](/snap-manual/assets/images/image443.png){width="0.4305555555555556in"
height="0.1527777777777778in"}![](/snap-manual/assets/images/image444.png){width="3.0416666666666665in"
height="1.3958333333333333in"}The safely try block allows you to handle
errors that happen when your program is run within the program, instead
of stopping the script with a red halo and an obscure error message. The
block runs the script in its first C-slot. If it finishes without an
error, nothing else happens. But if an error happens, the code in the
second C-slot is run. While that second script is running, the variable
contains the text of the error message that would have been displayed if
you weren't catching the error. The error block is sort of the opposite:
it lets your program *generate* an error message, which will be
displayed with a red halo unless it is caught by safely try. Safely try
reporting is the reporter version of safely try.

The text costumes library has only two blocks:

![](/snap-manual/assets/images/image445.png){width="0.5347222222222222in"
height="0.20833333333333334in"}![](/snap-manual/assets/images/image446.png){width="1.92in"
height="0.4507830271216098in"}Costume from text reports a costume that
can be used with the switch to
![](/snap-manual/assets/images/image447.png){width="3.2597222222222224in"
height="0.18958333333333333in"}costume block to make a button:

Costume with background reports a costume made from another costume by
coloring its background, taking a color input like the set pen color to
RGB(A) block and a number of turtle steps of padding around the original
costume. These two blocks work together to make even better buttons:

![](/snap-manual/assets/images/image448.png){width="5.51in" height="0.68in"}

The text to speech library has these blocks:

![](/snap-manual/assets/images/image449.png){width="2.275in"
height="0.8in"}This library interfaces with a capability in up-to-date
browsers, so it might not work for you. It works best if the accent
matches the text!

The parallelization library contains these blocks:

![](/snap-manual/assets/images/image450.png){width="1.179861111111111in"
height="1.2597222222222222in"}The two do in parallel blocks take any
number of scripts as inputs. Those scripts will be run in parallel, like
ordinary independent scripts in the scripting area. The and wait version
waits until all of those scripts have finished before continuing the
script below the block.

![](/snap-manual/assets/images/image451.png){width="1.3777777777777778in"
height="1.4833333333333334in"}The create variables library has these
blocks:

These blocks allow a program to perform the same operation as the

button, making global, sprite local, or script variables, but allowing
the program to compute the variable name(s). It can also set and find
the values of these variables, show and hide their stage watchers,
delete them, and find out if they already exist.

The getters and setters library has these blocks:

![](/snap-manual/assets/images/image452.png){width="1.875in"
height="1.05in"}![](/snap-manual/assets/images/image453.png){width="0.2916666666666667in"
height="0.16666666666666666in"}The purpose of this library is to allow
program access to the settings controlled by user interface elements,
such as the settings menu. The setting block reports a setting; the set
flag block sets yes-or-no options that have checkboxes in the user
interface, while the set value block controls settings with numeric or
text values, such as project name.

Certain settings are ordinarily remembered on a per-user basis, such as
the "zoom blocks" value. But when these settings are changed by this
library, the change is in effect only while the project using the
library is loaded. No permanent changes are made. Note: this library has
not been converted for version 7.0, so you'll have to enable Javascript
extensions to use it.

The bignums, rationals, complex \#s library has these blocks:

![](/snap-manual/assets/images/image454.png){width="1.875in"
height="1.55in"}The USE BIGNUMS block takes a Boolean input, to turn the
infinite precision feature on or off. When on, all of the arithmetic
operators are redefined to accept and report integers of any number of
digits (limited only by the memory of your computer) and, in fact, the
entire Scheme numeric tower, with exact rationals and with complex
numbers. The Scheme number block has a list of functions applicable to
Scheme numbers, including subtype predicates such as rational? and
infinite?, and selectors such as numerator and real-part.

![](/snap-manual/assets/images/image455.png){width="4.836805555555555in"
height="0.4166666666666667in"}The ! block computes the factorial
function, useful to test whether bignums are turned on. Without bignums:

With bignums:

![](/snap-manual/assets/images/image459.png){width="7.527083333333334in"
height="0.36041666666666666in"}The 375-digit value of 200! isn't
readable on this page, but if you right-click on the block and choose
"result pic," you can open the resulting picture in a browser window and
scroll through it. (These values end with a bunch of zero digits. That's
not roundoff error; the prime factors of 100! and 200! include many
copies of 2 and 5.) The block with no name is a way to enter things like
3/4 and 4+7i into numeric input slots by converting the slot to Any
type.

The strings, multi-line input library provides these blocks:

![](/snap-manual/assets/images/image463.png){width="3.9375in"
height="2.0416666666666665in"}All of these could be written in Snap*!*
itself, but these are implemented using the corresponding JavaScript
library functions directly, so they run fast. They can be used, for
example, in scraping data from a web site. The command use
case-independent comparisons applies only to this library. The multiline
block accepts and reports a text input that can include newline
characters.

The animation library has these blocks:

![](/snap-manual/assets/images/image464.png){width="4.0125in"
height="2.33125in"}Despite the name, this isn't only about graphics; you
can animate the values of a variable, or anything else that's expressed
numerically.

![](/snap-manual/assets/images/image465.png){width="0.9652777777777778in"
height="0.19444444444444445in"}The central idea of this library is an
*easing function,* a reporter whose domain and range are real numbers
between 0 and 1 inclusive. The function represents what fraction of the
"distance" (in quotes because it might be any numeric value, such as
temperature in a simulation of weather) from here to there should be
covered in what fraction of the time. A linear easing function means
steady progression. A quadratic easing function means starting slowly
and accelerating. (Note that, since it's a requirement that *f*(0)=0 and
*f*(1)=1, there is only one linear easing function, *f*(*x*)=*x*, and
similarly for other categories.) The block reports some of the common
easing functions.

![](/snap-manual/assets/images/image466.png){width="4.631944444444445in"
height="0.6319444444444444in"}The two Motion blocks in this library
animate a sprite. Glide always animates the sprite's motion. Animate's
first pulldown menu input allows you to animate horizontal or vertical
motion, but will also animate the sprite's direction or size. The
animate block in Control lets you animate any numeric quantity with any
easing function. The getter and setter inputs are best explained by
example:

![](/snap-manual/assets/images/image467.png){width="3.4097222222222223in"
height="0.2569444444444444in"}is equivalent to

The other blocks in the library are helpers for these four.

The serial ports library contains these blocks:

![](/snap-manual/assets/images/image468.png){width="1.7326388888888888in"
height="1.0347222222222223in"}It is used to allow hardware developers to
control devices such as robots that are

connected to your computer via a serial port.

The frequency distribution analysis library has these blocks:

![](/snap-manual/assets/images/image469.png){width="4.027083333333334in"
height="2.3958333333333335in"}

This is a collection of tools for analyzing large data sets and plotting
histograms of how often some value is found in some column of the table
holding the data.

For more information go here:

http://tinyurl.com/jens-data

The audio comp library includes these blocks:

![](/snap-manual/assets/images/image470.png){width="3.5416666666666665in"
height="2.98125in"}This library takes a sound, one that you record or
one from our collection of sounds, and manipulates it by systematically
changing the intensity of the samples in the sound and by changing the
sampling rate at which the sound is reproduced. Many of the blocks are
helpers for the plot sound block, used to plot the waveform of a sound.
The play sound (primitive) block plays a sound. \_\_ Hz for reports a
sine wave as a list of samples.

The web services library has these blocks:

![](/snap-manual/assets/images/image471.png){width="3.4097222222222223in"
height="1.1041666666666667in"}The first block is a generalization of the
primitive url block, allowing more control over the various options in
web requests: GET, POST, PUT, and DELETE, and fine control over the
content of the message sent to the server. Current location reports your
latitude and longitude. Listify takes some text in JSON format (see page
54) and converts it to a structured list. Value at key looks up a
key-value pair in a (listified) JSON dictionary. The key:value: block is
just a constructor for an abstract data type used with the other blocks

The database library contains these blocks:

![](/snap-manual/assets/images/image472.png){width="2.263888888888889in"
height="1.2222222222222223in"}It is used to keep data that persist from
one Snap*!* session to the next, if you use the same browser and the
same login.

The world map library has these blocks:

![](/snap-manual/assets/images/image473.png){width="2.442361111111111in"
height="3.4027777777777777in"}Using any of the command blocks puts a map
on the screen, in a layer in front of the stage's background but behind
the pen trails layer (which is in turn behind all the sprites). The
first block asks your browser for your current physical location, for
which you may be asked to give permission. The next two blocks get and
set the map's zoom amount; the default zoom of 10 ﬁts from San Francisco
not quite down to Palo Alto on the screen. A zoom of 1 ﬁts almost the
entire world. A zoom of 3 fits the United States; a zoom of 5 ﬁts
Germany. The zoom can be changed in half steps, i.e., 5.5 is different
from 5, but 5.25 isn't.

The next five blocks convert between stage coordinates (pixels) and
Earth coordinates (latitude and longitude). The change by x: y: block
shifts the map relative to the stage. The distance to block measures the
map distance (in meters) between two sprites. The three reporters with
current in their names find *your* actual location, again supposing that
geolocation is enabled on your device. Update redraws the map; as
costume reports the visible section of the map as a costume. Set style
allows things like satellite pictures.

The APL primitives library contains these blocks:

![](/snap-manual/assets/images/image474.png){width="5.733333333333333in"
height="1.1133333333333333in"}

![](/snap-manual/assets/images/image475.png){width="6.453333333333333in"
height="2.04in"}

For more information about APL, see Appendix B (page 148).

The ![](/snap-manual/assets/images/image476.png){width="1.2in"
height="0.4895833333333333in"}**list comprehension library** has one
block, zip. Its first input is a function of two inputs. The two
Any-type inputs are deep lists (lists of lists of...) interpreted as
trees, and the function is called with every possible combination of a
leaf node of the first tree and a leaf node of the second tree. But
instead of taking atoms (non-lists) as the leaves, zip allows the leaves
of each tree to be vectors (one-dimensional lists), matrices
(two-dimensional lists), etc. The Number-type inputs specify the leaf
dimension for each tree, so the function input might be called with a
vector from the first tree and an atom from the second tree.

![](/snap-manual/assets/images/image477.png){width="0.89in"
height="1.51in"}The **bitwise library** provides bitwise logic
functions; each bit of the reported value is the result of applying the
corresponding Boolean function to the corresponding bits of the
input(s). The Boolean functions are not for ¬, and for ∧, or for ∨, and
xor (exclusive or) for ⊻. The remaining functions shift their first
input left or right by the number of bits given by the second input.
\<\< is left shift, \>\> is arithmetic right shift (shifting in one bits
from the left), and \>\>\> is logical right shift (shifting in zero bits
from the left). If you don't already know what these mean, find a
tutorial online.

![](/snap-manual/assets/images/image478.png){width="6.528977471566054in"
height="1.6097222222222223in"}

The **MQTT library** supports the Message Queuing Telemetry Transport
protocol, for connecting with IOT devices. See <https://mqtt.org/> for
more information.

![](/snap-manual/assets/images/image482.png){width="4.986805555555556in"
height="2.8895833333333334in"}The **Signada library** allows you to
control a microBit or similar device that works with the Signada
MicroBlocks project.

![](/snap-manual/assets/images/image486.png){width="3.39in" height="1.9in"}

The **menus library** provides the ability to display hierarchical menus
on the stage, using the ask block's ability to take lists as inputs. See
page 24.

The **SciSnap*!* library** and the **TuneScope library** are too big to
discuss here and are documented separately at
<http://emu-online.de/ProgrammingWithSciSnap.pdf> and
<https://maketolearn.org/creating-art-animations-and-music/>
respectively.

Saving and Loading Projects and Media

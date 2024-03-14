                ---
                title: 4. Chapter 4: First class lists

                layout: home
                has_children: true
                has_toc: false
                nav_order: 5
                ---


A data type is *ﬁrst class* in a programming language if data of that
type can be

-   the value of a variable

-   an input to a procedure

-   the value returned by a procedure

-   a member of a data aggregate

-   anonymous (not named)

In Scratch, numbers and text strings are ﬁrst class. You can put a
number in a variable, use one as the input to a block, call a reporter
that reports a number, or put a number into a list.

But Scratch's lists are not ﬁrst class. You create one using the "Make a
list" button, which requires that you give the list a name. You can't
put the list into a variable, into an input slot of a block, or into a
list item---you can't have lists of lists. None of the Scratch reporters
reports a list value. (You can use a reduction of the list into a text
string as input to other blocks, but this loses the list structure; the
input is just a text string, not a data aggregate.)

A fundamental design principle in Snap*!* is that ***[all data should be
ﬁrst class]{.underline}**.* If it's in the language, then we should be
able to use it fully and freely. We believe that this principle avoids
the need for many special-case tools, which can instead be written by
Snap*!* users themselves.

![](/snap-manual/assets/images/image523.png){width="2.839583333333333in"
height="0.41597222222222224in"}Note that it's a data *type* that's ﬁrst
class, not an individual value. Don't think, for example, that some
lists are ﬁrst class, while others aren't. In Snap*!*, lists are ﬁrst
class, period.

 The list Block
--------------

At the heart of providing first class lists is the ability to make an
"anonymous" list---to make a list without simultaneously giving it a
name. The list reporter block does that.

![](/snap-manual/assets/images/image524.png){width="4.2in"
height="1.5694444444444444in"}At the right end of the block are two
left-and-right arrowheads. Clicking on these changes the number of
inputs to list, i.e., the number of elements in the list you are
building. Shift-clicking changes by three at a time.

![](/snap-manual/assets/images/image534.png){width="1.5034722222222223in"
height="1.8125in"}![](/snap-manual/assets/images/image535.png){width="2.24375in"
height="0.3215277777777778in"}You can use this block as input to many
other blocks:

![](/snap-manual/assets/images/image536.png){width="3.09375in"
height="0.7708333333333334in"}![](/snap-manual/assets/images/image537.png){width="1.8229166666666667in"
height="0.2916666666666667in"}Snap*!* does not have a "Make a list"
button like the one in Scratch. If you want a global "named list," make
a global variable and use the set block to put a list into the variable.

Lists of Lists
--------------

![](/snap-manual/assets/images/image538.png){width="5.888888888888889in"
height="1.0486111111111112in"}Lists can be inserted as elements in
larger lists. We can easily create ad hoc structures as needed:

Notice that this list is presented in a different format from the "She
Loves You" list above. A two-dimensional list is called a *table* and is
by default shown in *table view.* We'll have more to say about this
later.

![](/snap-manual/assets/images/image539.png){width="7.343055555555556in"
height="2.78125in"}We can also build any classic computer science data
structure out of lists of lists, by defining *constructors* (blocks to
make an instance of the structure), *selectors* (blocks to pull out a
piece of the structure), and *mutators* (blocks to change the contents
of the structure) as needed. Here we create binary trees with selectors
that check for input of the correct data type; only one selector is
shown but the ones for left and right children are analogous.

 Functional and Imperative List Programming
------------------------------------------

![](/snap-manual/assets/images/image543.png){width="2.1041666666666665in"
height="1.09375in"} There are two ways to create a list inside a
program. Scratch users will be familiar with the *imperative*
programming style, which is based on a set of command blocks that modify
a list:

As an example, here are two blocks that take a list of numbers as input,
and report a new list containing only the even numbers from the original
list:[^4]

![](/snap-manual/assets/images/image551.png){width="5.892361111111111in"
height="2.28125in"}

or

In this script, we first create a temporary variable, then put an empty
list in it, then go through the items of the input list using the add
**...** to (result) block to modify the result list, adding one item at
a time, and finally report the result.

![](/snap-manual/assets/images/image195.png){width="1.5625in"
height="0.8104166666666667in"}*Functional* programming is a different
approach that is becoming important in "real world" programming because
of parallelism, i.e., the fact that different processors can be
manipulating the same data at the same time. This makes the use of
mutation (changing the value associated with a variable, or the items of
a list) problematic because with parallelism it's impossible to know the
exact sequence of events, so the result of mutation may not be what the
programmer expected. Even without parallelism, though, functional
programming is sometimes a simpler and more effective technique,
especially when dealing with recursively defined data structures. It
uses reporter blocks, not command blocks, to build up a list value:

In a functional program, we often use recursion to construct a list, one
item at a time. The in front of block makes a list that has one item
added to the front of an existing list, *without changing the value of
the original list.* A nonempty list is processed by dividing it into its
first item (item 1 of) and all the rest of the items (all but first of),
which are handled through a recursive call:

![](/snap-manual/assets/images/image555.png){width="4.75in"
height="2.240972222222222in"}Snap*!* uses two different internal
representations of lists, one (dynamic array) for imperative programming
and the other (linked list) for functional programming. Each
representation makes the corresponding built-in list blocks (commands or
reporters, respectively) most efficient. It's possible to mix styles in
the same program, but if *the same list* is used both ways, the program
will run more slowly because it converts from one representation to the
other repeatedly. (The item ( ) of \[ \] block doesn't change the
representation.) You don't have to know the details of the internal
representations, but it's worthwhile to use each list in a consistent
way.

![](/snap-manual/assets/images/image556.png){width="5.864583333333333in" height="1.0715277777777779in"}Higher Order List Operations and Rings
----------------------------------------------------------------------------------------------------------------------------------------

There's an even easier way to select the even numbers from a list:

![](/snap-manual/assets/images/image557.png){width="2.375in"
height="0.2777777777777778in"}The keep block takes a Predicate
expression as its first input, and a list as its second input. It
reports a list containing those elements of the input list for which the
predicate returns true. Notice two things about the predicate input:
First, it has a grey ring around it. Second, the mod block has an empty
input. Keep puts each item of its input list, one at a time, into that
empty input before evaluating the predicate. (The empty input is
supposed to remind you of the "box" notation for variables in elementary
school: ☐+3=7.) The grey ring is part of the keep block as it appears in
the palette:

![](/snap-manual/assets/images/image558.png){width="4.1402777777777775in"
height="0.6354166666666666in"}What the ring means is that this input is
a block (a predicate block, in this case, because the interior of the
ring is a hexagon), rather than the value reported by that block. Here's
the difference:

Evaluating the = block without a ring reports true or false; evaluating
the block *with* a ring reports the block itself. This allows keep to
evaluate the = predicate repeatedly, once for each list item. A block
that takes another block as input is called a *higher order* block (or
higher order procedure, or higher order function).

![](/snap-manual/assets/images/image562.png){width="2.39in"
height="0.22in"}![](/snap-manual/assets/images/image563.png){width="1.6944444444444444in"
height="0.9930555555555556in"} Snap*!* provides four higher order
function blocks for operating on lists:

![](/snap-manual/assets/images/image571.emf){width="7.5in"
height="1.7138888888888888in"}You've already seen keep. Find first is
similar, but it reports just the first item that satisfies the
predicate, not a list of all the matching items. It's equivalent to but
faster because it

stops looking as soon as it finds a match. If there are no matching
items, it returns an empty string.

![](/snap-manual/assets/images/image572.png){width="7.589583333333334in"
height="1.0791666666666666in"}

![](/snap-manual/assets/images/image574.png){width="7.486111111111111in"
height="1.0020833333333334in"}These examples use small lists, to fit the
page, but the higher order blocks work for any size list.

An *empty* gray ring represents the *identity function,* which just
reports its input. Leaving the ring in map empty is the most concise way
to make a shallow copy of a list (that is, in the case of a list of
lists, the result is a new toplevel list whose items are the same
(uncopied) lists that are items of the toplevel input list). To make a
deep copy of a list (that is, one in which all the sublists, sublists of
sublists, etc. are copied), use the list as input to the ![Macintosh
HD:Users:bh:Desktop:id.png](/snap-manual/assets/images/image576.png){width="0.7430555555555556in"
height="0.19444444444444445in"} block (one of the variants of the sqrt
of block). This works because id of is a hyperblock (page 55).

![](/snap-manual/assets/images/image313.png){width="5.5800503062117235in"
height="0.4623108048993876in"}The third higher order block, combine,
computes a single result from *all* the items of a list, using a
*two-input* reporter as its second input. In practice, there are only a
few blocks you'll ever use with combine:

These blocks take the sum of the list items, take their product, string
them into one word, combine them into a sentence (with spaces between
items), see if all items of a list of Booleans are true, see if any of
the items is true, find the smallest, or find the largest.

![](/snap-manual/assets/images/image585.png){width="6.279166666666667in"
height="0.37569444444444444in"}![](/snap-manual/assets/images/image586.png){width="3.8680555555555554in"
height="0.3451388888888889in"}Why + but not −? It only makes sense to
combine list items using an *associative* function: one that doesn't
care in what order the items are combined (left to right or right to
left). (2+3)+4 = 2+(3+4), but (2−3)−4 ≠ 2−(3−4).

![](/snap-manual/assets/images/image587.png){width="5.808333333333334in"
height="1.1909722222222223in"}The functions map, keep, and find first
have an advanced mode with rarely-used features: If their function input
is given explicit input names (by clicking the arrowhead at the right
end of the gray ring; see page 69), then it will be called for each list
item with *three* inputs: the item's value (as usual), the item's
position in the input list (its index), and the entire input list. No
more than three input names can be used in this contex

 {#section-2 .ListParagraph}

Table View vs. List View
------------------------

![](/snap-manual/assets/images/image588.png){width="3.0993055555555555in"
height="2.513888888888889in"}We mentioned earlier that there are two
ways of representing lists visually. For one-dimensional lists (lists
whose items are not themselves lists) the visual differences are small:

For one-dimensional lists, it's not really the appearance that's
important. What matters is that the *list view* allows very versatile
direct manipulation of the list through the picture: you can edit the
individual items, you can delete items by clicking the tiny buttons next
to each item, and you can add new items at the end by clicking the tiny
plus sign in the lower left corner. (You can just barely see that the
item deletion buttons have minus signs in them.) Even if you have
several watchers for the same list, all of them will be updated when you
change anything. On the other hand, this versatility comes at an
efficiency cost; a list view watcher for a long list would be way too
slow. As a partial workaround, the list view can only contain 100 items
at a time; the downward-pointing arrowhead opens a menu in which you can
choose which 100 to display.

![](/snap-manual/assets/images/image592.png){width="1.2555555555555555in"
height="0.9125in"}

By contrast, because it doesn't allow direct editing, the *table view*
watcher can hold hundreds of thousands of items and still scroll through
them efficiently. The table view has flatter graphics for the items to
remind you that they're not clickable to edit the values.

Right-clicking on a list watcher (in either form) gives you the option
to switch to the other form. The right-click menu also offers an open in
dialog... option that opens an *offstage* table view watcher, because
the watchers can take up a lot of stage space that may make it hard to
see what your program is actually doing. Once the offstage dialog box is
open, you can close the stage watcher. There's an OK button on the
offstage dialog to close it if you want. Or you can right-click it to
make *another* offstage watcher, which is useful if you want to watch
two parts of the list at once by having each watcher scrolled to a
different place.

![](/snap-manual/assets/images/image538.png){width="5.888888888888889in"
height="1.0486111111111112in"}Table view is the default if the list has
more than 100 items, or if any of the first ten items of the list are
lists, in which case it makes a very different-looking two-dimensional
picture:

In this format, the column of red items has been replaced by a
spreadsheet-looking display. For short, wide lists, this display makes
the content of the list very clear. A vertical display, with much of the
space taken up by the "machinery" at the bottom of each sublist, would
make it hard to show all the text at once. (The pedagogic cost is that
the structure is no longer explicit; we can't tell just by looking that
this is a list of row-lists, rather than a list of column-lists or a
primitive two-dimensional array type. But you can choose list view to
see the structure.)

Beyond such simple cases, in which every item of the main list is a list
of the same length, it's important to keep in mind that the design of
table view has to satisfy two goals, not always in agreement: (1) a
visually compelling display of two-dimensional arrays, and (2) highly
efficient display generation, so that Snap*!* can handle very large
lists, since "big data" is an important topic of study. To meet the
first goal perfectly in the case of "ragged right" arrays in which
sublists can have different lengths, Snap*!* would scan the entire list
to find the maximum width before displaying anything, but that would
violate the second goal.

Snap*!* uses the simplest possible compromise between the two goals: It
examines only the first ten items of the list to decide on the format.
If none of those are lists, or they're all lists of one item, and the
overall length is no more than 100, list view is used. If the any of
first ten items is a list, then table view is used, and the number of
columns in the table is equal to the largest number of items among the
first ten items (sublists) of the main list.

Table views open with standard values for the width and height of a
cell, regardless of the actual data. You can change these values by
dragging the column letters or row numbers. Each column has its own
width, but changing the height of a row changes the height for all rows.
(This distinction is based not on the semantics of rows vs. columns, but
on the fact that a constant row height makes scrolling through a large
list more efficient.) Shift-dragging a column label will change the
width of that column.

If you tried out the adjustments in the previous paragraph, you may have
noticed that a column letter turns into a number when you hover over it.
Labeling rows and columns differently makes cell references such as
"cell 4B" unambiguous; you don't have to have a convention about whether
to say the row first or the column first. ("Cell B4" is the same as
"cell 4B.") On the other hand, to extract a value from column B in your
program, you have to say item 2 of, not item B of. So it's useful to be
able to find out a column number by hovering over its letter.

![](/snap-manual/assets/images/image596.png){width="3.817361111111111in"
height="0.8111111111111111in"}Any value that can appear in a program can
be displayed in a table cell:

![](/snap-manual/assets/images/image597.png){width="4.336805555555555in"
height="2.104861111111111in"}This display shows that the standard cell
dimensions may not be enough for large value images. By expanding the
entire speech balloon and then the second column and all the rows, we
can make the result fit:

![](/snap-manual/assets/images/image601.png){width="3.3409722222222222in"
height="0.5770833333333333in"}But we make an exception for cases in
which the value in a cell is a list (so that the entire table is
three-dimensional). Because lists are visually very big, we don't try to
fit the entire value in a cell:

Even if you expand the size of the cells, Snap*!* will not display
sublists of sublists in table view. There are two ways to see these
inner sublists: You can switch to list view, or you can double-click on
a list icon in the table to open a dialog box showing just that
sub-sub-list in table view.

![](/snap-manual/assets/images/image602.png){width="3.3541666666666665in"
height="0.6944444444444444in"}One last detail: If the first item of a
list is a list (so table view is used), but a later item *isn't* a list,
that later item will be displayed on a red background, like an item of a
single-column list:

So, in particular, if only the first item is a list, the display will
look almost like a one-column display.

### Comma-Separated Values

Spreadsheet and database programs generally offer the option to export
their data as CSV (comma-separated values lists. You can import these
files into Snap*!* and turn them into tables (lists of lists), and you
can export tables in CSV format. Snap*!* recognizes a CSV file by the
extension .csv in its filename.

A CSV file has one line per table row, with the fields separated by
commas within a row:

![](/snap-manual/assets/images/image603.png){width="5.0in"
height="2.6743055555555557in"}John,Lennon,rhythm guitar

Paul,McCartney,bass guitar

George,Harrison,lead guitar

Ringo,Starr,drums

Here's what the corresponding table looks like:

Here's how to read a spreadsheet into Snap*!*:

![](/snap-manual/assets/images/image607.png){width="1.2083333333333333in"
height="0.2708333333333333in"}1. Make a variable with a watcher on
stage:

2\. Right-click on the watcher and choose the "import" option. (If the
variable's value is already a list, be sure to click on the outside
border of the watcher; there is a different menu if you click on the
list itself.) Select the file with your csv data.

3\. There is no 3; that's it! Snap*!* will notice that the name of the
file you're importing is something.csv and will turn the text into a
list of lists automatically.

Or, even easier, just drag and drop the file from your desktop onto the
Snap*!* window, and Snap*!* will automatically create a variable named
after the file and import the data into it.

If you actually want to import the raw CSV data into a variable, either
change the file extension to .txt before loading it, or choose "raw
data" instead of "import" in the watcher menu.

If you want to export a list, put a variable watcher containing the list
on the stage, right-click its border, and choose "Export." (Don't
right-click an item instead of the border; that gives a different menu.)

### Multi-dimensional lists and JSON

CSV format is easy to read, but works only for one- or two-dimensional
lists. If you have a list of lists of lists, Snap*!* will instead export
your list as a JSON (JavaScript Object Notation) file. I modified my
list:

![](/snap-manual/assets/images/image608.png){width="6.333333333333333in"
height="0.4479166666666667in"}and then exported again, getting this
file:

\[\[\"John\",\"Lennon\",\"rhythm
guitar\"\],\[\[\"James\",\"Paul\"\],\"McCartney\",\"bass
guitar\"\],\[\"George\",\"Harrison\",\"lead
guitar\"\],\[\"Ringo\",\"Starr\",\"drums\"\]\]

You can also import lists, including tables, from a .json file. (And you
can import plain text from a .txt file.) Drag and drop works for these
formats also.

 Hyperblocks
-----------

A *scalar* is anything other than a list. The name comes from
mathematics, where it means a magnitude without direction, as opposed to
a vector, which points toward somewhere. A scalar function is one whose
domain and range are scalars, so all the arithmetic operations are
scalar functions, but so are the text ones such as letter and the
Boolean ones such as not.

The major new feature in Snap*!* 6.0 is that the domain and range of
most scalar function blocks is extended to multi-dimensional lists, with
the underlying scalar function applied termwise:

![](/snap-manual/assets/images/image609.png){width="2.5625in"
height="0.9166666666666666in"}![Macintosh
HD:Users:bh:Desktop:vector-vector.png](/snap-manual/assets/images/image610.png){width="3.3402777777777777in"
height="0.9166666666666666in"}

![Macintosh
HD:Users:bh:Desktop:matrix-matrix.png](/snap-manual/assets/images/image611.png){width="4.944444444444445in"
height="0.6944444444444444in"}

![](/snap-manual/assets/images/image612.png){width="5.743055555555555in"
height="0.6944444444444444in"}Mathematicians, note in the last example
above that the result is just a termwise application of the underlying
function (7×3, 8×5, etc.), *not* matrix multiplication. See Appendix B
for that. For a dyadic (two-input) function, if the lengths don't agree,
the length of the result (in each dimension) is the length of the
shorter input:

![](/snap-manual/assets/images/image613.png){width="6.791666666666667in"
height="0.8680555555555556in"}However, if the *number of dimensions*
differs in the two inputs, then the number of dimensions in the result
agrees with the *higher-*dimensional input; the lower-dimensional one is
used repeatedly in the missing dimension(s):

(7×6. 8×10, 1×20, *40*×*6, 20*×*10,* etc.). In particular, a *scalar*
input is paired with every scalar in the other input:

![](/snap-manual/assets/images/image614.png){width="7.483333333333333in"
height="0.63125in"}![](/snap-manual/assets/images/image615.png){width="5.506944444444445in"
height="1.5180555555555555in"}One important motivation for this feature
is how it simplifies and speeds up media computation, as in this
shifting of the Alonzo costume to be bluer:

![](/snap-manual/assets/images/image619.png){width="1.6875in"
height="1.0486111111111112in"}![](/snap-manual/assets/images/image620.png){width="5.194444444444445in"
height="1.0486111111111112in"}Each pixel of the result has ¾ of its
original red and green, and three times its original blue (with its
transparency unchanged). By putting some sliders on the stage, you can
play with colors dynamically:

![](/snap-manual/assets/images/image621.png){width="1.0298611111111111in"
height="0.18958333333333333in"}![](/snap-manual/assets/images/image193.png){width="0.8895833333333333in"
height="0.2in"}There are a few naturally scalar functions that have
already had specific meanings when applied to lists and therefore are
not hyperblocks: = and identical to (because they compare entire
structures, not just scalars, always reporting a single Boolean result),
and and or (because they don't evaluate their second input at all if the
first input determines the result), join (because it converts non-scalar
(and other non-text) inputs to text string form), and is a (type)
(because it applies to its input as a whole). Blocks whose inputs are
"natively" lists, such as and , are never hyperblocks.

![](/snap-manual/assets/images/image622.png){width="5.239583333333333in"
height="1.679861111111111in"}![](/snap-manual/assets/images/image203.png){width="5.401514654418198in"
height="1.227273622047244in"}![](/snap-manual/assets/images/image205.png){width="2.0991666666666666in"
height="0.2475in"}The reshape block takes a list (of any depth) as its
first input, and then takes zero or more sizes along the dimensions of
an array. In the example it will report a table (a matrix) of four rows
and three columns. If no sizes are given, the result is an empty list.
Otherwise, the cells of the specified shape are filled with the atomic
values from the input list. If more values are needed than provided, the
block starts again at the head of the list, using values more than once.
If more values are provided than needed, the extras are ignored; this
isn't an error.

![Icon Description automatically
generated](/snap-manual/assets/images/image204.png){width="1.34in"
height="0.25in"} The item of block has a special set of rules, designed
to preserve its pre-hyperblock meaning and also provide a useful
behavior when given a list as its first (index) input:

1.  If the index is a number, then item of reports the indicated
    top-level item of the list input; that item may be a sublist, in
    which case the entire sublist is reported (the original meaning of
    item of):![Macintosh
    HD:Users:bh:Desktop:item-scalar.png](/snap-manual/assets/images/image623.png){width="5.506944444444445in"
    height="0.9166666666666666in"}

2.  If the index is a list of numbers (no sublists), then item of
    reports a list of the indicated top-level items (rows, in a matrix;
    a straightforward hyperization): ![Macintosh
    HD:Users:bh:Desktop:item-vector.png](/snap-manual/assets/images/image624.png){width="6.006944444444445in"
    height="0.8680555555555556in"}

3.  If the index is a list of lists of numbers, then item of reports an
    array of only those scalars whose position in the list input matches
    the index input in all dimensions (changed in Snap*!*
    6.6!):![](/snap-manual/assets/images/image625.png){width="6.006944444444445in"
    height="0.6875in"}

4.  If a list of list of numbers includes an empty sublist, then all
    items are chosen along that
    dimension:![](/snap-manual/assets/images/image626.png){width="6.006944444444445in"
    height="0.6875in"}

![](/snap-manual/assets/images/image627.png){width="6.604166666666667in"
height="1.0486111111111112in"}To get a column or columns of a
spreadsheet, use an empty list in the row selector (changed in Snap*!*
6.6!):

![](/snap-manual/assets/images/image628.png){width="1.5263888888888888in"
height="1.8583333333333334in"}The length of block is extended to provide
various ways of looking at the shape and contents of a list. The options
other than length are mainly useful for *lists of lists,* to any depth.
These new options work well with hyperblocks and the APL library.
(Examples are on the next page.)

length: reports the number of (toplevel) items in the list, as always.

rank: reports the number of *dimensions* of the list, i.e., the maximum
depth of lists of lists of lists of lists. (That example would be rank
4.)

dimensions: reports a list of numbers, each of which is the maximum
length in one dimension, so a spreadsheet of 1000 records, each with 4
fields, would report the list \[1000 4\].

flatten: reports a flat, one-dimensional list containing the *atomic*
(non-list) items anywhere in the input list.

columns: reports a list in which the rows and columns of the input list
are interchanged, so the shape of the transpose of a shape \[1000 4\]
list would be \[4 1000\]. This option works only for lists whose rank is
at most 2. The name reflects the fact that the toplevel items of the
reported table are the columns of the original table.

reverse: reports a list in which the (toplevel) items of the input list
are in reverse order.

The remaining three options report a (generally multi-line) text string.
The input list may not include any atomic (non-list) data other than
text or numbers. The lines option is intended for use with rank-one
lists of text strings; it reports a string in which each list item
becomes a line of text. You can think of it as the opposite of the split
by line block. The csv option (comma-separated values) is intended for
rank-two lists that represent a spreadsheet or other tabular data. Each
item of the input list should be a list of atoms; the block reports a
text string in which each item of the big list becomes a line of text in
which the items of that sublist are separated by commas. The json option
is for lists of any rank; it reports a text string in which the list
structure is explicitly represented using square brackets. These are the
opposites of split by csv and split by json.

![](/snap-manual/assets/images/image632.png){width="6.3530304024496935in"
height="6.733522528433946in"}

The idea of extending the domain and range of scalar functions to
include arrays comes from the language APL. (All the great programming
languages are based on mathematical ideas. Our primary ancestors are
Smalltalk, based on models, and Lisp, based on lambda calculus. Prolog,
a great language not (so far) influencing Snap*!*, is based on logic.
And APL, now joining our family, is based on linear algebra, which
studies vectors and matrices. Those *other* programming languages are
based on the weaknesses of computer hardware.) Hyperblocks are not the
whole story about APL, which also has mixed-domain functions and higher
order functions. Some of what's missing is provided in the APL library.
(See Appendix B.)

 Typed Inputs
============

 Scratch's Type Notation
-----------------------

![](/snap-manual/assets/images/image654.png){width="1.375in"
height="0.2125in"}Prior to version 3, Scratch block inputs came in two
types: Text-or-number type and Number type. The former is indicated by a
rectangular box, the latter by a rounded box: . A third Scratch type,
Boolean (true/false), can be used in certain Control blocks with
hexagonal slots.

The Snap*!* types are an expanded collection including Procedure, List,
and Object types. Note that, with the exception of Procedure types, all
of the input type shapes are just reminders to the user of what the
block expects; they are not enforced by the language.

![](/snap-manual/assets/images/image655.png){width="2.5833333333333335in" height="1.6041666666666667in"}The Snap*!* Input Type Dialog
--------------------------------------------------------------------------------------------------------------------------------

In the Block Editor input name dialog, there is a right-facing arrowhead
after the "Input name" option:

Clicking that arrowhead opens the "long" input name dialog:

![](/snap-manual/assets/images/image657.png){width="5.170833333333333in"
height="4.135416666666667in"}![](/snap-manual/assets/images/image658.png){width="0.19791666666666666in"
height="0.19791666666666666in"}There are twelve input type shapes, plus
three mutually exclusive modifiers, listed in addition to the basic
choice between title text and an input name. The default type, the one
you get if you don't choose anything else, is "Any," meaning that this
input slot is meant to accept any value of any type. If the size input
in your block should be an oval-shaped numeric slot rather than a
generic rectangle, click "Number."

![](/snap-manual/assets/images/image659.png){width="6.822222222222222in"
height="2.7569444444444446in"}The arrangement of the input types is
systematic. As the pictures on this and the next page show, each row of
types is a category, and parts of each column form a category.
Understanding the arrangement will make it a little easier to find the
type you want.

![](/snap-manual/assets/images/image658.png){width="0.13194444444444445in"
height="0.13194444444444445in"}The second row of input types contains
the ones found in Scratch: Number, Any, and Boolean. (The reason these
are in the second row rather than the ﬁrst will become clear when we
look at the column arrangement.) The ﬁrst row contains the new Snap*!*
types other than procedures: Object, Text, and List. The last two rows
are the types related to procedures, discussed more fully below.

The List type is used for ﬁrst class lists, discussed in Chapter IV
above. The red rectangles inside the input slot are meant to resemble
the appearance of lists as Snap*!* displays them on the stage: each
element in a red rectangle.

The Object type is for sprites, costumes, sounds, and similar data
types.

The Text type is really just a variant form of the Any type, using a
shape that suggests a text input.[^5]

### Procedure Types

Although the procedure types are discussed more fully later, they are
the key to understanding the column arrangement in the input types. Like
Scratch, Snap*!* has three block shapes: jigsaw-piece for command
blocks, oval for reporters, and hexagonal for predicates. (A *predicate*
is a reporter that always reports true or false.) In Snap*!* these
blocks are ﬁrst class data; an input to a block can be of Command type,
Reporter type, or Predicate type. Each of these types is directly below
the type of value that that kind of block reports, except for Commands,
which don't report a value at all. Thus, oval Reporters are related to
the Any type, while hexagonal Predicates are related to the Boolean
(true or false) type.

The unevaluated procedure types in the fourth row are explained in
Section VI.E below. In one handwavy sentence, they combine the *meaning*
of the procedure types with the *appearance* of the reported value types
two rows higher. (Of course, this isn't quite right for the C-shaped
command input type, since commands don't
![](/snap-manual/assets/images/image660.png){width="3.6458333333333335in"
height="3.113888888888889in"}report values. But you'll see later that
it's true in spirit.)

### ![](/snap-manual/assets/images/image658.png){width="0.13194444444444445in" height="0.13194444444444445in"}Pulldown inputs

![](/snap-manual/assets/images/image661.png){width="1.6805555555555556in"
height="0.9409722222222222in"}Certain primitive blocks have *pulldown*
inputs, either *read-only,* like the input to the touching block:

![](/snap-manual/assets/images/image662.png){width="1.9020833333333333in"
height="1.3229166666666667in"}(indicated by the input slot being the
same (cyan, in this case) color as the body of the block), or
*writeable,* like the input to the point in direction block:

(indicated by the white input slot), which means that the user can type
in an arbitrary input instead of using the pulldown menu.

![](/snap-manual/assets/images/image663.png){width="0.8326388888888889in"
height="0.6527777777777778in"}![](/snap-manual/assets/images/image658.png){width="0.13194444444444445in"
height="0.13194444444444445in"}Custom blocks can also have such inputs.
To make a pulldown input, open the long form input dialog, choose a text
type (Any, Text, or Number) and click the icon in the bottom right
corner, or control/right-click in the dialog. You will see this menu:

![](/snap-manual/assets/images/image664.png){width="3.076388888888889in"
height="1.875in"}Click the read-only checkbox if you want a read-only
pulldown input. Then from the same menu, choose options... to get this
dialog box:

Each line in the text box represents one menu item. If the line does not
contain any of the characters =\~{} then the text is both what's shown
in the menu and the value of the input if that entry is chosen.

If the line contains an equal sign =, then the text to the left of the
equal sign is shown in the menu, and the text to the right is what
appears in the input slot if that entry is chosen, and is also the value
of the input as seen by the procedure.

If the line consists of a tilde \~, then it represents a separator (a
horizontal line) in the menu, used to divide long menus into visible
categories. There should be nothing else on the line. This separator is
not choosable, so there is no input value corresponding to it.

![](/snap-manual/assets/images/image665.png){width="7.5in"
height="3.2416666666666667in"}If the line ends with the two characters
equal sign and open brace ={, then it represents a *submenu.* The text
before the equal sign is a name for the submenu, and will be displayed
in the menu with an arrowhead ► at the end of the line. This line is not
clickable, but hovering the mouse over it displays the submenu next to
the original menu. A line containing a close brace } ends the submenu;
nothing else should be on that line. Submenus may be nested to arbitrary
depth.

### 

Alternatively, instead of giving a menu listing as described above, you
can put a JavaScript function that returns the desired menu in the
textbox. This is an experimental feature and requires that JavaScript be
enabled in the Settings menu.\
It is also possible to get the special menus used in some primitive
blocks, by choosing from the menu submenu: broadcast messages, sprites
and stage, costumes, sounds, variables that can be set in this scope,
the play note piano keyboard, or the point in direction 360° dial.
Finally, you can make the input box accept more than one line of text
(that is, text including a newline character) from the special submenu,
either "multi-line" for regular
![](/snap-manual/assets/images/image669.png){width="0.6041666666666666in"
height="0.3194444444444444in"}text or "code" for monospace-font computer
code.

![](/snap-manual/assets/images/image670.png){width="0.13055555555555556in"
height="0.1375in"}![](/snap-manual/assets/images/image671.png){width="1.6805555555555556in"
height="0.2569444444444444in"}If the input type is something other than
text, then clicking the button will instead show this menu:

![](/snap-manual/assets/images/image672.png){width="7.5in"
height="2.6277777777777778in"}As an example, we want to make this block:
The second input must be a read-only object menu:

![](/snap-manual/assets/images/image678.png){width="1.6388888888888888in"
height="0.5208333333333334in"}

![](/snap-manual/assets/images/image679.png){width="1.7638888888888888in"
height="0.9305555555555556in"}![](/snap-manual/assets/images/image680.png){width="3.5694444444444446in"
height="1.2944444444444445in"}The "Multiple inputs" option: The list
block introduced earlier accepts any number of inputs to specify the
items of the new list. To allow this, Snap*!* introduces the arrowhead
notation () that expands and contracts the block, adding and removing
input slots. (Shift-clicking on an arrowhead adds or removes three input
slots at once.) Custom blocks made by the Snap*!* user have that
capability, too. If you choose the "Multiple inputs" button, then
arrowheads will appear after the input slot in the block. More or fewer
slots (as few as zero) may be used. When the block runs, all of the
values in all of the slots for this input name are collected into a
list, and the value of the input as seen inside the script is that list
of values:

The ellipsis (...) in the orange input slot name box in the prototype
indicates a multiple or *variadic* input.

The third category, "Upvar - make internal variable visible to caller,"
isn't really an input at all, but rather a sort of output from the block
to its user. It appears as an orange variable oval in the block, rather
than as an input slot. Here's an example; the uparrow (**↑**) in the
prototype indicates this kind of internal variable name:

![](/snap-manual/assets/images/image681.png){width="5.901388888888889in"
height="0.53125in"}

The variable i (in the block on the right above) can be dragged from the
for block into the blocks used in its C-shaped command slot. Also, by
clicking on the orange i, the user can change the name of the variable
as seen in the calling script (although the name hasn't changed inside
the block's definition). This kind of variable is called an *upvar* for
short, because it is passed *upward* from the custom block to the script
that uses it.

Note about the example: for is a primitive block, but it doesn't need to
be. You're about to see (next chapter) how it can be written in Snap*!*.
Just give it a different name to avoid confusion, such as my for as
above.

### Prototype Hints

We have mentioned three notations that can appear in an input slot in
the prototype to remind you of what kind of input this is. Here is the
complete list of such notations:

![](/snap-manual/assets/images/image685.png){width="0.7347222222222223in"
height="6.118055555555555in"}= default value ... multiple input ↑ upvar
\# number

![](/snap-manual/assets/images/image686.png){width="0.16319444444444445in"
height="0.13541666666666666in"}λ procedure types ⫶ list ? Boolean object
¶ multi-line text

### Title Text and Symbols

![](/snap-manual/assets/images/image687.png){width="1.21875in"
height="0.23472222222222222in"}Some primitive blocks have symbols as
part of the block name: . Custom blocks can use symbols too. In the
Block Editor, click the plus sign in the prototype at the point where
you want to insert the symbol. Then click the title text picture below
the text box that's expecting an input slot name. The dialog will then
change to look like this:

![](/snap-manual/assets/images/image688.png){width="1.2444444444444445in"
height="0.26666666666666666in"}![](/snap-manual/assets/images/image689.png){width="2.0347222222222223in"
height="1.2638888888888888in"}The important part to notice is the
arrowhead that has appeared at the right end of the text box. Click it
to see the menu shown here at the left.

Choose one of the symbols. The result will have the symbol you want: The
available symbols are, pretty much, the ones that are used in Snap*!*
icons.

![](/snap-manual/assets/images/image690.png){width="2.0347222222222223in"
height="1.2638888888888888in"}But I'd like the arrow symbol bigger, and
yellow, so I edit its name:

![](/snap-manual/assets/images/image691.png){width="1.1979166666666667in"
height="0.2708333333333333in"}This makes the symbol 1.5 times as big as
the letters in the block text, using a color with red-green-blue values
of 255-255-150 (each between 0 and 255). Here's the result:

The size and color controls can also be used with text:
\$foo-8-255-120-0 will make a huge orange "foo."

Note the last entry in the symbol menu: "new line." This can be used in
a block with many inputs to control where the text continues on another
line, instead of letting Snap*!* choose the line break itself.

Procedures as Data

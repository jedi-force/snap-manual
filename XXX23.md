                ---
                title: 23  Hyperblocks

                layout: home
                has_children: false
                has_toc: true
                nav_order: 24
                ---


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

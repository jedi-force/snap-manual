---
title: 22 Table View vs. List View

layout: home
has_children: false
has_toc: true
nav_order: 23
---


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

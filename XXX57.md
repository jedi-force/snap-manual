                ---
                title: 57  The Palette Area

                layout: home
                has_children: false
                has_toc: true
                nav_order: 58
                ---


At the top of the palette area are the eight buttons that select which
palette (which block category) is shown: Motion, Looks, Sound, Pen,
Control, Sensing, Operators, and Variables (which also includes the List
and Other blocks). There are no menus behind these buttons.

### Buttons in the Palette

![](/snap-manual/assets/images/image1043.png){width="0.2604166666666667in"
height="0.2604166666666667in"}Under the eight palette selector buttons,
at the top of the actual palette, are two semi-transparent buttons. The
first is the *search* button, which is equivalent to typing control-F:
It replaces the palette with a search bar into which you can type part
of the title text of the block you're trying to find. To leave this
search mode, click one of the eight palette selectors, or type the
Escape key.

![](/snap-manual/assets/images/image1044.png){width="0.2604166666666667in"
height="0.2604166666666667in"}The other button is equivalent to the
"Make a block" button, except that the dialog window that it opens has
the current palette (color) preselected.

### Context Menus for Palette Blocks

![](/snap-manual/assets/images/image1045.png){width="0.8611111111111112in"
height="0.45902777777777776in"}Most elements of the Snap*!* display can
be control-clicked/right-clicked to show a *context menu,* with items
relevant to that element. If you control-click/right-click a *primitive*
block in the palette, you see this menu:

The help... option displays a box with documentation about the block.
Here's an example:

![](/snap-manual/assets/images/image1046.png){width="1.6229166666666666in"
height="0.8888888888888888in"}![](/snap-manual/assets/images/image1047.png){width="3.3222222222222224in"
height="2.4277777777777776in"}If you control-click/right-click a
*custom* (user-defined) block in the palette, you see this menu:

The help... option for a custom block displays the comment, if any,
attached to the custom block's hat block in the Block Editor. Here is an
example of a block with a comment and its help display:

![](/snap-manual/assets/images/image1048.png){width="6.758333333333334in"
height="2.451388888888889in"}If the help text includes a URL, it is
clickable and will open the page in a new tab.

The delete block definition... option asks for confirmation, then
deletes the custom block and removes it from any scripts in which it
appears. (The result of this removal may not leave a sensible script;
it's best to find and correct such scripts *before* deleting a block.)
Note that there is no option to *hide* a custom block; this can be done
in the Block Editor by right-clicking on the hat block.

The duplicate block definition... option makes a *copy* of the block and
opens that copy in the Block Editor. Since you can't have two custom
blocks with the same title text and input types, the copy is created
with "(2)" (or a higher number if necessary) at the end of the block
prototype.

The export block definition... option writes a file in your browser's
downloads directory containing the definition of this block and any
other custom blocks that this block invokes, directly or indirectly. So
the resulting file can be loaded later without the risk of red
Undefined! blocks because of missing dependencies.

The edit... option opens a Block Editor with the definition of the
custom block.

### Context Menu for the Palette Background

![](/snap-manual/assets/images/image1052.png){width="0.9895833333333334in"
height="0.5895833333333333in"}Right-click/control-click on the grey
*background* of the palette area shows this menu:

![](/snap-manual/assets/images/image1053.png){width="1.6in"
height="2.1597222222222223in"}The find blocks... option does the same
thing as the magnifying-glass button. The hide blocks... option opens a
dialog box in which you can choose which blocks (custom as well as
primitive) should be hidden. (Within that dialog box, the context menu
of the background allows you to check or uncheck all the boxes at once.)

The make a category... option, which is intended mainly for authors of
snap extensions, lets you add custom *categories* to the palette. It
opens a small dialog window in which you specify a name *and a color*
for the new category:

![](/snap-manual/assets/images/image1054.png){width="1.429861111111111in"
height="2.9097222222222223in"}![](/snap-manual/assets/images/image1055.png){width="1.53in"
height="1.13in"}Pick a dark color, because it will be lightened for
zebra coloring when users nest blocks of the same category. Custom
categories are shown below the built-in categories in the category
selector:

![](/snap-manual/assets/images/image1056.png){width="1.35in"
height="1.8395833333333333in"}This example comes from Eckart Modrow's
SciSnap*!* library. Note that the custom category list has its own
scroll bar, which appears if you have more than six custom categories.
Note also that the buttons to select a custom category occupy the full
width of the palette area, unlike the built-in categories, which occupy
only half of the width. Custom categories are listed in alphabetical
order; this is why Prof. Modrow chose to start each category name with a
number, so that he could control their order.

If there are no blocks visible in a category, the category name is
dimmed in the category selector:

Here we see that category foo has blocks in it, but categories bar and
garply are empty. The built-in categories are also subject to dimming,
if all of the blocks of a category are hidden.

**\
Palette Resizing**

At the right end of the palette area, just to the left of the scripting
area, is a resizing
handle![](/snap-manual/assets/images/image1057.png){width="1.4166666666666667in"
height="1.5138888888888888in"} that can be dragged rightward to increase
the width of the palette area. This is useful if you write custom blocks
with very long names. You can't reduce the width of the palette below
its standard value.

The Scripting Area

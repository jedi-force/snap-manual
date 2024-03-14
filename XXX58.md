---
title: 58 The Scripting Area

layout: home
has_children: false
has_toc: true
nav_order: 59
---


The scripting area is the middle vertical region of the Snap*!* window,
containing scripts and also some controls for the appearance and
behavior of a sprite. There is always a *current sprite,* whose scripts
are shown in the scripting area. A dark grey rounded rectangle in the
sprite corral shows which sprite (or the stage) is current. Note that
it's only the visible *display* of the scripting area that is "current"
for a sprite; all scripts of all sprites may be running at the same
time. Clicking on a sprite thumbnail in the sprite corral makes it
current. The stage itself can be selected as current, in which case the
appearance is different, with some primitives not shown.

### Sprite Appearance and Behavior Controls

At the top of the scripting area are a picture of the sprite and some
controls for it:

![](/snap-manual/assets/images/image1058.png){width="3.486111111111111in"
height="1.0416666666666667in"}

Note that the sprite picture reflects its rotation, if any. There are
three things that can be controlled here:

1\. The three circular buttons in a column at the left control the
sprite's *rotation* behavior. Sprite costumes are designed to be
right-side-up when the sprite is facing toward the right (direction =
90). If the topmost button is lit, the default as shown in the picture
above, then the sprite's costume rotates as the sprite changes
direction. If the middle button is selected, then the costume is
reversed left-right when the sprite's direction is roughly leftward
(direction between 180 and 359, or equivalently, between -180 and -1).
If the bottom button is selected, the costume's orientation does not
change regardless of the sprite's direction.

2\. The sprite's *name* can be changed in the text box that, in this
picture, says "Sprite."

3\. Finally, if the draggable checkbox is checked, then the user can move
the sprite on the stage by clicking and dragging it. The common use of
this feature is in game projects, in which some sprites are meant to be
under the player's control but others are not.

### Scripting Area Tabs

![](/snap-manual/assets/images/image1059.png){width="3.0972222222222223in"
height="0.25in"}Just below the sprite controls are three *tabs* that
determine what is shown in the scripting area:

### Scripts and Blocks Within Scripts

Most of what's described in this section also applies to blocks and
scripts in a Block Editor.

Clicking on a script (which includes a single unattached block) runs it.
If the script starts with a hat block, clicking on the script runs it
even if the event in the hat block doesn't happen. (This is a useful
debugging technique when you have a dozen sprites and they each have
five scripts with green-flag hat blocks, and you want to know what a
single one of those scripts does.) The script will have a green "halo"
around it while it's running. If the script is shared with clones, then
while it has the green halo it will also have a count of how many
instances of the script are running. Clicking a script with such a halo
*stops* the script. (If the script includes a warp block, which might be
inside a custom block used in the script, then Snap*!* may not respond
immediately to clicks.)

![](/snap-manual/assets/images/image1060.png){width="0.3333333333333333in"
height="0.2604166666666667in"}If a script is shown with a *red* halo,
that means that an error was caught in that script, such as using a list
where a number was needed, or vice versa. Clicking the script will turn
off the halo.

![](/snap-manual/assets/images/image1061.png){width="0.3125in"
height="0.23958333333333334in"}![](/snap-manual/assets/images/image1062.png){width="0.3333333333333333in"
height="0.2604166666666667in"}If any blocks have been dragged into the
scripting area, then in its top right corner you'll see an *undo* and/or
*redo* button that can be used to undo or redo block and script drops.
When you undo a drop into an input slot, whatever used to be in the slot
is restored. The redo button appears once you've used undo.

The third button starts keyboard editing mode (Section D, page 130).

Control-click/right-clicking a primitive block within a script shows a
menu like this one:

![](/snap-manual/assets/images/image1063.png){width="0.6208333333333333in"
height="1.0625in"}![](/snap-manual/assets/images/image1064.png){width="0.6263888888888889in"
height="1.0902777777777777in"}

command block: reporter block:

The help... option shows the help screen for the block, just as in the
palette. The other options appear only when a block is
right-clicked/control-clicked in the scripting area.

![](/snap-manual/assets/images/image1065.png){width="1.53in"
height="2.13in"}Not every primitive block has a relabel... option. When
present, it allows the block to be replaced by another, similar block,
keeping the input expressions in place. For example, here's what happens
when you choose relabel... for an arithmetic operator:

Note that the inputs to the existing -- block are displayed in the menu
of alternatives also. Click a block in the menu to choose it, or click
outside the menu to keep the original block. Note that the last three
choices are not available in the palette; you must use the relabel
feature to access them.

Not every reporter has a compile option; it exists only for the higher
order functions. When selected, a lightning bolt appears before the
block name:
![](/snap-manual/assets/images/image1066.png){width="1.4027777777777777in"
height="0.2013888888888889in"} and Snap*!* tries to compile the function
inside the ring to JavaScript, so it runs at primitive speed. This works
only for simple functions (but the higher order function still works
even if the compilation doesn't). The function to be compiled must be
quick, because it will be uninterruptable; in particular, if it's an
infinite loop, you may have to quit your browser to recover. Therefore,
**save your project before** you experiment with the compilation
feature. The right-click menu for a compiled higher order function will
have an uncompile option. This is an experimental feature.

The duplicate option for a command block makes a copy of the *entire
script* starting from the selected block. For a reporter, it copies only
that reporter and its inputs. The copy is attached to the mouse, and you
can drag it to another script (or even to another Block Editor window),
even though you are no longer holding down the mouse button. Click the
mouse to drop the script copy.

The block picture underneath the word duplicate for a command block is
another duplication option, but it duplicates only the selected block,
not everything under it in the script. Note that if the selected block
is a C-shaped control block, the script inside its C-shaped slot is
included. If the block is at the end of its script, this option does not
appear. (Use duplicate instead.)

The extract option removes the selected block from the script and leaves
you holding it with the mouse. In other words, it's like the block
picture option, but it doesn't leave a copy of the block in the original
script. If the block is at the end of its script, this option does not
appear. (Just grab the block with the mouse.) A shorthand for this
operation is to *shift-click* and drag out the block.

The delete option deletes the selected block from the script.

The add comment option creates a comment, like the same option in the
background of the scripting area, but attaches it to the block you
clicked.

The script pic... option saves a picture of the entire script, not just
from the selected block to the end, into your download folder; or, in
some browsers, opens a new browser tab containing the picture. In the
latter case, you can use the browser's Save feature to put the picture
in a file. This is a super useful feature if you happen to be writing a
Snap*!* manual! (If you have a Retina display, consider turning off
Retina support before making script pictures; if not, they end up huge.)
For reporters not inside a script, there is an additional result pic...
option that calls the reporter and includes a speech balloon with the
result in the picture. Note: The downloaded file is a "smart picture":
It also contains the code of the script, as if you'd exported the
project. If you later drag the file into the costumes tab, it will be
loaded as a costume. But if you drag it into the *scripts* tab, it will
be loaded as a script, which you can drop wherever you want it in the
scripting area.

If the script does *not* start with a hat block, or you clicked on a
reporter, then there's one more option: ringify (and, if there is
already a grey ring around the block or script, unringify). Ringify
surrounds the block (reporter) or the entire script (command) with a
grey ring, meaning that the block(s) inside the ring are themselves
data, as an input to a higher order procedure, rather than something to
be evaluated within the script. See Chapter VI, Procedures as Data.

![](/snap-manual/assets/images/image1067.png){width="0.9736111111111111in"
height="1.2986111111111112in"}Clicking a *custom* block in a script
gives a similar but different menu:

The relabel... option for custom blocks shows a menu of other same-shape
custom blocks with the same inputs. At present you can't relabel a
custom block to a primitive block or vice versa. The two options at the
bottom, for custom blocks only, are the same as in the palette. The
other options are the same as for primitive commands.

![](/snap-manual/assets/images/image1068.png){width="0.88125in"
height="1.0833333333333333in"}If a reporter block is in the scripting
area, possibly with inputs included, but not itself serving as input to
another block, then the menu is a little different again:

What's new here is the result pic... option. It's like script pic... but
it includes in the picture a speech balloon with the result of calling
the block.

Broadcast and broadcast and wait blocks in the scripting area have an
additional option: receivers.... When clicked, it causes a momentary (be
looking for it when you click!) halo around the picture in the sprite
corral of those sprites that have a when I receive hat block for the
same message. Similarly, when I receive blocks have a senders... option
that light up the sprite corral icons of sprites that broadcast the same
message.

**Scripting Area Background Context Menu**

![](/snap-manual/assets/images/image1069.png){width="1.2895833333333333in"
height="1.2777777777777777in"}Control-click/right-click on the grey
striped background of the scripting area gives this menu:

![](/snap-manual/assets/images/image1062.png){width="0.8416666666666667in"
height="0.18819444444444444in"}The undrop option is a sort of "undo"
feature for the common case of dropping a block somewhere other than
where you meant it to go. It remembers all the dragging and dropping
you've done in this sprite's scripting area (that is, other sprites have
their own separate drop memory), and undoes the most recent, returning
the block to its former position, and restoring the previous value in
the relevant input slot, if any. Once you've undropped something, the
redrop option appears, and allows you to repeat the operation you just
undid. These menu options are equivalent to the and buttons described
earlier.

The clean up option rearranges the position of scripts so that they are
in a single column, with the same left margin, and with uniform spacing
between scripts. This is a good idea if you can't read your own project!

![](/snap-manual/assets/images/image1072.png){width="1.3888888888888888in"
height="0.7083333333333334in"}The add comment option puts a comment box,
like the picture to the right, in the scripting area. It's attached to
the mouse, as with duplicating scripts, so you position the mouse where
you want the comment and click to release it. You can then edit the text
in the comment as desired.

![](/snap-manual/assets/images/image1073.png){width="1.3888888888888888in"
height="0.2361111111111111in"}You can drag the bottom right corner of
the comment box to resize it. Clicking the arrowhead at the top left
changes the box to a single-line compact form, , so that you can have a
number of collapsed comments in the scripting area and just expand one
of them when you want to read it in full.

If you drag a comment over a block in a script, the comment will be
attached to the block with a yellow line:

![](/snap-manual/assets/images/image1074.png){width="1.4861111111111112in"
height="0.8472222222222222in"}![](/snap-manual/assets/images/image1075.png){width="3.3333333333333335in"
height="0.9333333333333333in"}Comments have their own context menu, with
obvious meanings:

Back to the options in the menu for the background of the scripting area
(picture on the previous page):

The scripts pic... option saves, or opens a new browser tab with, a
picture of *all* scripts in the scripting area, just as they appear, but
without the grey striped background. Note that "all scripts in the
scripting area" means just the top-level scripts of the current sprite,
not other sprites' scripts or custom block definitions. This is also a
"smart picture"; if you drag it into the scripting area, it will *create
a new sprite* with those scripts in its scripting area.

Finally, the make a block... option does the same thing as the "Make a
block" button in the palettes. It's a shortcut so that you don't have to
keep scrolling down the palette if you make a lot of blocks.

### Controls in the Costumes Tab

![](/snap-manual/assets/images/image1076.png){width="1.9631944444444445in"
height="2.1319444444444446in"}If you click on the word "Costumes" under
the sprite controls, you'll see something like this:

![](/snap-manual/assets/images/image1077.png){width="0.37916666666666665in"
height="0.21666666666666667in"}![](/snap-manual/assets/images/image1078.png){width="0.2916666666666667in"
height="0.16666666666666666in"}The Turtle costume is always present in
every sprite; it is costume number 0. Other costumes can be painted
within Snap*!* or imported from files or other browser tabs if your
browser supports that. Clicking on a costume selects it; that is, the
sprite will look like the selected costume. Clicking on the paint brush
icon\
opens the *Paint Editor,* in which you can create a new costume.
Clicking on the camera icon opens a window in which you see what your
computer's camera is seeing, and you can take a picture (which will be
the full size of the stage unless you shrink it in the Paint Editor).
This works only if you give Snap*!* permission to use the camera, and
maybe only if you opened Snap*!* in secure (HTTPS) mode, and then only
if your browser loves you.

![](/snap-manual/assets/images/image1079.png){width="3.5694444444444446in"
height="3.1805555555555554in"} *Brian's bedroom when he's staying at
Paul's house.*

Control-clicking/right-clicking on the turtle picture gives this menu:

![](/snap-manual/assets/images/image1080.png){width="1.0555555555555556in"
height="0.9027777777777778in"}In this menu, you choose the turtle's
*rotation point,* which is also the point from which the turtle draws
lines. The two pictures below show what the stage looks like after
drawing a square in each mode; tip (otherwise known as "Jens mode") is
on the left in the pictures below, middle ("Brian mode") on the right:

![](/snap-manual/assets/images/image1081.png){width="3.134027777777778in"
height="1.1743055555555555in"}As you see, "tip" means the front tip of
the arrowhead; "middle" is not the middle of the shaded region, but
actually the middle of the four vertices, the concave one. (If the shape
were a simple isosceles triangle instead of a fancier arrowhead, it
would mean the midpoint of the back edge.) The advantage of tip mode is
that the sprite is less likely to obscure the drawing. The advantage of
middle mode is that the rotation point of a sprite is rarely at a tip,
and students are perhaps less likely to be confused about just what will
happen if you ask the turtle to turn 90 degrees from the position shown.
(It's also the traditional rotation point of the Logo turtle, which
originated this style of drawing.)

![](/snap-manual/assets/images/image1085.png){width="0.9833333333333333in"
height="1.3194444444444444in"}Costumes other than the turtle have a
different context menu:

The edit option opens the Paint Editor on this costume. The rename
option opens a dialog box in which you can rename the costume. (A
costume's initial name comes from the file from which it was imported,
if any, or is something like costume5.) Duplicate makes a copy of the
costume, in the same sprite. (Presumably you'd do that because you
intend to edit one of the copies.) Delete is obvious. The get blocks
option appears only for a smart costume, and brings its script to the
scripting area. The export option saves the costume as a file on your
computer, in your usual downloads folder.

You can drag costumes up and down in the Costumes tab in order to
renumber them, so that next costume will behave as you prefer.

![](/snap-manual/assets/images/image1086.png){width="1.2804921259842519in"
height="0.8694444444444445in"}If you drag a *smart picture* of a script
into the Costumes tab, its icon will display the text "\</\>" in the
corner to remind you that it includes code:

Its right-click menu will have an extra get blocks option that switches
to the Scripts tab with the script ready to be dropped there.

### The Paint Editor

![](/snap-manual/assets/images/image1088.png){width="3.938888888888889in"
height="2.577777777777778in"}Here is a picture of a Paint Editor window:

If you've used any painting program, most of this will be familiar to
you. Currently, costumes you import can be edited only if they are in a
bitmap format (png, jpeg, gif, etc.). There is a vector editor, but it
works only for creating a costume, not editing an imported vector (svg)
picture. Unlike the case of the Block Editor, only one Paint Editor
window can be open at a time.

The ten square buttons in two rows of five near the top left of the
window are the *tools.* The top row, from left to right, are the
paintbrush tool, the outlined rectangle tool, the outlined ellipse tool,
the eraser tool, and the rotation point tool. The bottom row tools are
the line drawing tool, the solid rectangle tool, the solid ellipse tool,
the floodfill tool, and the eyedropper tool. Below the tools is a row of
four buttons that immediately change the picture. The first two change
its overall size; the next two flip the picture around horizontally or
vertically. Below these are a color palette, a greyscale tape, and
larger buttons for black, white, and transparent paint. Below these is a
solid bar displaying the currently selected color. Below that is a
picture of a line showing the brush width for painting and drawing, and
below that, you can set the width either with a slider or by typing a
number (in pixels) into the text box. Finally, the checkbox constrains
the line tool to draw horizontally or vertically, the rectangle tools to
draw squares, and the ellipse tools to draw circles. You can get the
same effect temporarily by holding down the shift key, which makes a
check appear in the box as long as you hold it down. (But the Caps Lock
key doesn't affect it.)

You can correct errors with the undo button, which removes the last
thing you drew, or the clear button, which erases the entire picture.
(Note, it does *not* revert to what the costume looked like before you
started editing it! If that's what you want, click the Cancel button at
the bottom of the editor.) When you're finished editing, to keep your
changes, click OK.

Note that the ellipse tools work more intuitively than ones in other
software you may have used. Instead of dragging between opposite corners
of the rectangle circumscribing the ellipse you want, so that the
endpoints of your dragging have no obvious connection to the actual
shape, in Snap*!* you start at the center of the ellipse you want and
drag out to the edge. When you let go of the button, the mouse cursor
will be on the curve. If you drag out from the center at 45 degrees to
the axes, the resulting curve will be a circle; if you drag more
horizontally or vertically, the ellipse will be more eccentric. (Of
course if you want an exact circle you can hold down the shift key or
check the checkbox.) The rectangle tools, though, work the way you
expect: You start at one corner of the desired rectangle and drag to the
opposite corner.

Using the eyedropper tool, you can click anywhere in the Snap*!* window,
even outside the Paint Editor, and the tool will select the color at the
mouse cursor for use in the Paint Editor. You can only do this once,
because the Paint Editor automatically selects the paintbrush when you
choose a color. (Of course you can click on the eyedropper tool button
again.)

The only other non-obvious tool is the rotation point tool. It shows in
the Paint Editor where the sprite's current rotation center is (the
point around which it turns when you use a turn block); if you click or
drag in the picture, the rotation point will move where you click.
(You'd want to do this, for example, if you want a character to be able
to wave its arm, so you use two sprites connected together. You want the
rotation point of the arm sprite to be at the end where it joins the
body, so it remains attached to the shoulder while waving.)

![](/snap-manual/assets/images/image1089.png){width="3.8361111111111112in"
height="2.548611111111111in"}![](/snap-manual/assets/images/image1090.png){width="0.2152777777777778in"
height="0.2152777777777778in"}![](/snap-manual/assets/images/image1091.png){width="0.2152777777777778in"
height="0.2152777777777778in"}![](/snap-manual/assets/images/image1092.png){width="0.2152777777777778in"
height="0.2152777777777778in"}The vector editor's controls are much like
those in the bitmap editor. One point of difference is that the bitmap
editor has two buttons for solid and outline rectangles, and similarly
for ellipses, but in the vector editor there is always an edge color and
a fill color, even if the latter is "transparent paint," and so only one
button per shape is needed. Since each shape that you draw is a separate
layer (like sprites on the stage), there are controls to move the
selected shape up (frontward) or down (rearward) relative to other
shapes. There is a selection tool to drag out a rectangular area and
select all the shapes within that area.

### 

### Controls in the Sounds Tab

![](/snap-manual/assets/images/image1093.png){width="0.35in"
height="0.2in"}There is no Sound Editor in Snap*!*, and also no current
sound the way there's a current costume for each sprite. (The sprite
always has an appearance unless hidden, but it doesn't sing unless
explicitly asked.) So the context menu for sounds has only rename,
delete, and export options, and it has a clickable button labeled Play
or Stop as appropriate. There is a sound *recorder,* which appears if
you click the red record button ( ):

![](/snap-manual/assets/images/image1094.png){width="2.325in"
height="1.0333333333333334in"}The first, round button starts recording.
The second, square button stops recording. The third, triangular button
plays back a recorded sound. If you don't like the result, click the
round button again to re-record. When you're satisfied, push the Save
button. If you need a sound editor, consider the free (both senses)
<http://audacity.sourceforge.net>.

Keyboard Editing

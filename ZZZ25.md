                ---
                title: 25 ![](/snap-manual/assets/images/image655.png){width="2.5833333333333335in" height="1.6041666666666667in"}The Snap*!* Input Type Dialog

                layout: home
                has_children: false
                has_toc: true
                nav_order: 26
                ---


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

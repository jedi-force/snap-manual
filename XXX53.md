                ---
                title: 53 Writing a block

                layout: home
                has_children: false
                has_toc: true
                nav_order: 54
                ---


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

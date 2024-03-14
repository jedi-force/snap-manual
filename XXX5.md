                ---
                title: 5 Reporter Blocks and Expressions

                layout: home
                has_children: false
                has_toc: true
                nav_order: 6
                ---


![](/snap-manual/assets/images/image65.png){width="1.47in"
height="0.52in"}![](/snap-manual/assets/images/image66.png){width="0.7291666666666666in"
height="0.15625in"}So far, we've used two kinds of blocks: hat blocks
and command blocks. Another kind is the *reporter* block, which has an
oval shape: . It's called a "reporter" because when it's run, instead of
carrying out an action, it reports a value that can be used as an input
to another block. If you drag a reporter into the scripting area by
itself and click on it, the value it reports will appear in a speech
balloon next to the block:

![](/snap-manual/assets/images/image67.png){width="5.312752624671916in"
height="0.9583333333333334in"}When you drag a reporter block over
another block's input slot, a white "halo" appears around that input
slot, analogous to the white line that appears when snapping command
blocks together:

![](/snap-manual/assets/images/image71.png){width="2.111111111111111in"
height="0.6180555555555556in"}Don't drop the input over a *red* halo:

That's used for a purpose explained on page 68.

Here's a simple script that uses a reporter block:

![](/snap-manual/assets/images/image72.png){width="5.319444444444445in"
height="1.3645833333333333in"}Here the x position reporter provides the
first input to the say block. (The sprite's X position is its horizontal
position, how far left (negative values) or right (positive values) it
is compared to the center of the stage. Similarly, the Y position is
measured vertically, in steps above (positive) or below (negative) the
center.)

You can do arithmetic using reporters in the Operators palette:

![](/snap-manual/assets/images/image76.png){width="6.263888888888889in"
height="1.4479166666666667in"}The round block rounds 35.3905... to 35,
and the + block adds 100 to that. (By the way, the round block is in the
Operators palette, just like +, but in this script it's a lighter color
with black lettering because Snap*!* alternates light and dark versions
of the palette colors when a block is nested inside another block from
the same palette:

![](/snap-manual/assets/images/image80.png){width="4.854166666666667in"
height="1.90625in"}

![](/snap-manual/assets/images/image81.png){width="1.9166666666666667in"
height="0.23958333333333334in"}This aid to readability is called *zebra
coloring.*) A reporter block with its inputs, maybe including other
reporter blocks, such as , is called an *expression.*

 Predicates and Conditional Evaluation
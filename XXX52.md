                ---
                title: 52 ![](/snap-manual/assets/images/image935.png){width="7.4945702099737534in" height="2.0380686789151357in"}Reading a block

                layout: home
                has_children: false
                has_toc: true
                nav_order: 53
                ---


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

---
title: 36  Local State in Sprites: Variables and Attributes

layout: home
has_children: false
has_toc: true
nav_order: 37
---


A sprite's memory of its own past history takes two main forms. It has
*variables,* created explicitly by the user with the "Make a variable"
button; it also has *attributes,* the qualities every sprite has
automatically, such as position, direction, and pen color. Each variable
can be examined using its own orange oval block; there is one set block
to modify all variables. Attributes, however, have a less uniform
programming interface in Scratch:

-   A sprite's *direction* can be examined with the direction block, and
    modified with the point in direction block. It can also be modified
    less directly using the blocks turn, point towards, and if on edge,
    bounce.

-   There is no way for a script to examine a sprite's *pen color,* but
    there are blocks set pen color to \<color\>, set pen color to
    \<number\>, and change pen color to modify it.

-   A sprite's *name* can be neither examined nor modified by scripts;
    it can be modified by typing a new name directly into the box that
    displays the name, above the scripting area.

The block, if any, that examines a variable or attribute is called its
*getter;* a block (there may be more than one, as in the direction
example above) that modifies a variable or attribute is called a
*setter.*

![](/snap-manual/assets/images/image770.png){width="2.2381944444444444in"
height="2.084722222222222in"}In Snap*!* we allow virtually all
attributes to be examined. But instead of adding dozens of reporters, we
use a more uniform interface for attributes: The my block's menu (in
Sensing; see page 78) includes many of the attributes of a sprite. It
serves as a general getter for those attributes, e.g., my \[anchor\] to
find the sprite, if any, to which this sprite is attached in a nesting
arrangement (see page 10). Similarly, the same set block used to set
variable values allows setting some sprite attributes.

 Prototyping: Parents and Children

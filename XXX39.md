---
title: 39 ![](/snap-manual/assets/images/image780.png){width="0.7895833333333333in" height="3.4680555555555554in"}List of attributes

layout: home
has_children: false
has_toc: true
nav_order: 40
---


![](/snap-manual/assets/images/image781.png){width="1.19in"
height="0.25in"}![](/snap-manual/assets/images/image782.png){width="1.1756944444444444in"
height="6.116666666666666in"}At the right is a picture of the dropdown
menu of attributes in the my block.

Several of these are not real attributes, but things related to
attributes:

-   self: this sprite

-   neighbors: a list of *nearby* sprites[^8]

-   other sprites: a list of all sprites except myself

-   stage: the stage, which is first-class, like a sprite

-   clones: a list of my *temporary* clones

-   other clones: a list of my *temporary* siblings

-   parts: a list of sprites whose anchor attribute is this sprite

-   children: a list of all my clones, temporary and permanent

The others are individual attributes:

-   anchor: the sprite of which I am a (nested) part

-   parent: the sprite of which I am a clone

-   temporary?: am I a temporary clone?

-   name: my name (same as parent's name if I'm temporary)

-   costumes: a list of the sprite's costumes

-   sounds: a list of the sprite's sounds

-   blocks: a list of the blocks visible in this sprite

-   categories: a list of all the block category names

-   dangling?: True if I am a part and not in synchronous orbit

-   draggable?: True if the user can move me with the mouse

-   width, height, left, right, top, bottom: The width or height of my
    costume *as seen right now,* or the left, etc., edge of my bounding
    box, taking rotation into account.

-   rotation x, rotation y: when reading with my, the same as x
    position, y position. When set, changes the sprite's rotation center
    *without moving the sprite,* like dragging the rotation center in
    the paint editor.

-   center x, center y: the x and y position of the center of my

> bounding box, rounded oﬀ--the geometric center of the costume.

First Class Costumes and Sounds

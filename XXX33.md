                ---
                title: 33  First Class Sprites

                layout: home
                has_children: false
                has_toc: true
                nav_order: 34
                ---


Like Scratch, Snap*!* comes with things that are natural objects: its
sprites. Each sprite can own local variables; each sprite has its own
scripts (methods). A Scratch animation is plainly a simulation of the
interaction of characters in a play. There are two ways in which Scratch
sprites are less versatile than the objects of an OOP language. First,
Scratch message passing is weak in three respects: Messages can only be
broadcast, not addressed to an individual sprite; messages can't take
inputs; and methods can't return values to their caller. Second, and
more basic, in the OOP paradigm objects are *data;* they can be the
value of a variable, an element of a list, and so on, but that's not the
case for Scratch sprites.

Snap*!* sprites are ﬁrst class data. They can be created and deleted by
a script, stored in a variable or list, and sent messages individually.
The children of a sprite can inherit sprite-local variables, methods
(sprite-local procedures), and other attributes (e.g., x position).

![](/snap-manual/assets/images/image743.png){width="0.9652777777777778in"
height="0.19444444444444445in"}![](/snap-manual/assets/images/image744.png){width="1.0833333333333333in"
height="0.19444444444444445in"}![](/snap-manual/assets/images/image745.png){width="0.6666666666666666in"
height="0.19444444444444445in"}The fundamental means by which programs
get access to sprites is the my reporter block. It has a dropdown-menu
input slot that, when clicked, gives access to all the sprites, plus the
stage. reports a single sprite, the one asking the question. reports a
list of all sprites other than the one asking the question. reports a
list of all sprites that are *near* the one asking---the ones that are
candidates for having collided with this one, for example. The my block
has many other options, discussed below. If you know the name of a
particular sprite, the object reporter will report the sprite itself.

![](/snap-manual/assets/images/image746.png){width="3.5520833333333335in"
height="0.5104166666666666in"}![](/snap-manual/assets/images/image747.png){width="2.691434820647419in"
height="1.25in"}An object or list of objects reported by my or object
can be used as input to any block that accepts any input type, such as
set's second input. If you say an object, the resulting speech balloon
will contain a smaller image of the object's costume or (for the stage)
background.

 Permanent and Temporary Clones

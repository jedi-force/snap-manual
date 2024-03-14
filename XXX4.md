                ---
                title: 4 Nesting Sprites: Anchors and Parts

                layout: home
                has_children: false
                has_toc: true
                nav_order: 5
                ---


Sometimes it's desirable to make a sort of "super-sprite" composed of
pieces that can move together but can also be separately articulated.
The classic example is a person's body made up of a torso, limbs, and a
head. Snap*!* allows one sprite to be designated as the *anchor* of the
combined shape, with other sprites as its *parts.* To set up sprite
nesting, drag the sprite corral icon of a *part* sprite onto the stage
display (not the sprite corral icon!) of the desired *anchor* sprite.
The precise place where you let go of the mouse button will be the
attachment point of the part on the anchor.

![](/snap-manual/assets/images/image47.png){width="1.6305555555555555in"
height="0.9652777777777778in"}Sprite nesting is shown in the sprite
corral icons of both anchors and parts:

![](/snap-manual/assets/images/image48.png){width="4.875694444444444in"
height="0.9472222222222222in"}![](/snap-manual/assets/images/image56.png){width="1.4444444444444444in"
height="1.5625in"}![](/snap-manual/assets/images/image57.png){width="5.405555555555556in"
height="0.8333333333333334in"}In this illustration, it is desired to
animate Alonzo's arm. (The arm has been colored green in this picture to
make the relationship of the two sprites clearer, but in a real project
they'd be the same color, probably.) Sprite, representing Alonzo's body,
is the anchor; Sprite(2) is the arm. The icon for the anchor shows small
images of up to three attached parts at the bottom. The icon for each
part shows a small image of the anchor in its top left corner, and a
*synchronous/dangling rotation flag* in the top right corner. In its
initial, synchronous setting, as shown above, it means that the when the
anchor sprite rotates, the part sprite also rotates as well as revolving
around the anchor. When clicked, it changes from a circular arrow to a
straight arrow, and indicates that when the anchor sprite rotates, the
part sprite revolves around it, but does not rotate, keeping its
original orientation. (The part can also be rotated separately, using
its turn blocks.) Any change in the position or size of the anchor is
always extended to its parts. Also, cloning the anchor (see Section VII.
B) will also clone all its parts.

*Top: turning the part: the green arm. Bottom: turning the anchor, with
the arm synchronous (left) and dangling (right).*

Reporter Blocks and Expressions

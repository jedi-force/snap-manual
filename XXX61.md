                ---
                title: 61 The Sprite Corral and Sprite Creation Buttons

                layout: home
                has_children: false
                has_toc: true
                nav_order: 62
                ---


![](/snap-manual/assets/images/image1077.png){width="0.37916666666666665in"
height="0.20555555555555555in"}![](/snap-manual/assets/images/image1118.png){width="0.2916666666666667in"
height="0.16666666666666666in"}![](/snap-manual/assets/images/image1119.png){width="0.2916666666666667in"
height="0.16666666666666666in"}Between the stage and the sprite corral
at the bottom right of the Snap*!* window is a dark grey bar containing
three buttons at the left and one at the right. The first three are used
to create a new sprite. The first button makes a sprite with just the
turtle costume, with a randomly chosen position and pen color. (If you
hold down the Shift key while clicking, the new sprite's direction will
also be random.) The second button makes a sprite and opens the Paint
Editor so that you can make your own costume for it. (Of course you
could click the first button and then click the paint button in its
costumes tab; this paint button is a shortcut for all that.) Similarly,
the third button uses your camera, if possible, to make a costume for
the new sprite.

The trash can button
![](/snap-manual/assets/images/image1120.png){width="0.2916666666666667in"
height="0.1736111111111111in"} at the right has two uses. You can drag a
sprite thumbnail onto it from the sprite corral to delete that sprite,
or you can click it to undelete a sprite you deleted by accident.

In the sprite corral, you click on a sprite's "thumbnail" picture to
select that sprite (to make it the one whose scripts, costumes, etc. are
shown in the scripting area). You can drag sprite thumbnails (but not
the stage one) to reorder them; this has no special effect on your
project, but lets you put related ones next to each other, for example.
Double-clicking a thumbnail flashes a halo around the actual sprite on
the stage.

You can right-click/control-click a sprite's thumbnail to get this
context menu:

![](/snap-manual/assets/images/image1121.png){width="0.6770833333333334in"
height="1.1090277777777777in"}The show option makes the sprite visible,
if it was hidden, and also brings it onto the stage, if it had moved
past the stage boundary. The next three options are the same as in the
context menu of the actual sprite on the stage, discussed above.

The parent... option displays a menu of all other sprites, showing which
if any is this sprite's parent, and allowing you to choose another
sprite (replacing any existing parent). The release option is shown only
if this sprite is a (permanent, or it wouldn't be in the sprite corral)
clone; it changes the sprite to a temporary clone. (The name is supposed
to mean that the sprite is released from the corral.) The export...
option exports the sprite, like the same option on the stage.

The context menu for the stage thumbnail has only one option, pic...,
which takes a picture of everything on the stage, just like the same
option in the context menu of the stage background. If pen trails are
being logged, there will also be an svg... option.

If your project includes scenes, then under the stage icon in the sprite
corral will be the *scene corral:*

![](/snap-manual/assets/images/image1122.png){width="3.3333333333333335in"
height="1.7083333333333333in"}Clicking on a scene will select it;
right-clicking will present a menu in which you can rename, delete, or
export the scene.

Preloading a Project when Starting Snap*!*

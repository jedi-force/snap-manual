---
title: 35  Sending Messages to Sprites

layout: home
has_children: false
has_toc: true
nav_order: 36
---


The messages that a sprite accepts are the blocks in its palettes,
including both all-sprites and this-sprite-only blocks. (For custom
blocks, the corresponding methods are the scripts as seen in the Block
Editor.

![](/snap-manual/assets/images/image750.png){width="5.702083333333333in"
height="0.3611111111111111in"}The way to send a message to a sprite (or
the stage) is with the tell block (for command messages) or the ask
block (for reporter messages).

![](/snap-manual/assets/images/image754.png){width="6.236111111111111in"
height="0.8055555555555556in"}A small point to note in the examples
above: all dropdown menus include an empty entry at the top, which can
be selected for use in higher order procedures like the for each and map
examples. Each of the sprites in my neighbors or my other sprites is
used to fill the blank space in turn.

![](/snap-manual/assets/images/image758.png){width="5.164583333333334in"
height="0.2847222222222222in"}By the way, if you want a list of *all*
the sprites, including this sprite, you can use either of these:

![](/snap-manual/assets/images/image762.png){width="3.545138888888889in"
height="0.8263888888888888in"}Tell and ask wait until the other sprite
has carried out its method before this sprite's script continues. (That
has to be the case for ask, since we want to do something with the value
it reports.) So tell is analogous to broadcast and wait. Sometimes the
other sprite's method may take a long time, or may even be a forever
loop, so you want the originating script to continue without waiting.
For this purpose we have the launch block:

Launch is analogous to broadcast without the "wait."

Snap*!* 4.1, following BYOB 3.1, used an extension of the of block to
provide access to other sprites' methods. That interface was designed
back when we were trying hard to avoid adding new primitive blocks; it
allowed us to write ask and tell as tool procedures in Snap*!* itself.
That technique still works, but is deprecated, because nobody understood
it, and now we have the more straightforward primitives.

### Polymorphism

![](/snap-manual/assets/images/image763.png){width="1.6736111111111112in"
height="1.4020833333333333in"}Suppose you have a Dog sprite with two
clones CockerSpaniel and PitBull. In the Dog sprite you define this
method ("For this sprite only" block):

Note the *loca*tion (map-pin) symbol before the block's name. The symbol
is not part of the block title; it's a visual reminder that this is a
sprite-*loca*l block. Sprite-local variables are similarly marked.

But you don't define greet as friend or greet as enemy in Dog. Each kind
of dog has a different behavior. Here's what a CockerSpaniel does:

![](/snap-manual/assets/images/image764.png){width="4.052777777777778in"
height="0.7430555555555556in"}![](/snap-manual/assets/images/image764.png){width="4.074305555555555in"
height="0.7013888888888888in"}And here's what a PitBull does:

Greet is defined in the Dog sprite. If Fido is a particular cocker
spaniel, and you ask Fido to greet someone, Fido inherits the greet
method from Dog, but Dog itself couldn't actually run that method,
because Dog doesn't have greet as friend or greet as enemy. And perhaps
only individual dogs such as Fido have friend? methods. Even though the
greet method is defined in the Dog sprite, when it's running it
remembers what specific dog sprite called it, so it knows which greet as
friend to use. Dog's greet block is called a *polymorphic* method,
because it means different things to different dogs, even though they
all share the same script.

 Local State in Sprites: Variables and Attributes

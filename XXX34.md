                ---
                title: 34  Permanent and Temporary Clones

                layout: home
                has_children: false
                has_toc: true
                nav_order: 35
                ---


![](/snap-manual/assets/images/image748.png){width="1.5138888888888888in"
height="0.19444444444444445in"}The block is used to create and report an
instance (a clone) of any sprite. (There is also a command version, for
historical reasons.) There are two different kinds of situations in
which clones are used. One is that you've made an example sprite and,
when you start the project, you want a fairly large number of
essentially identical sprites that behave like the example. (Hereafter
we'll call the example sprite the "parent" and the others the
"children.") Once the game or animation is over, you don't need the
copies any more. (As we'll see, "copies" is the wrong word because the
parent and the children *share* a lot of properties. That's why we use
the word "clones" to describe the children rather than "copies.") These
are *temporary* clones. They are automatically deleted when the user
presses either the green flag or the red stop sign. In Scratch 2.0 and
later, all clones are temporary.

The other kind of situation is what happens when you want
specializations of sprites. For example, let's say you have a sprite
named Dog. It has certain behaviors, such as running up to a person who
comes near it. Now you decide that the family in your story really likes
dogs, so they adopt a lot of them. Some are cocker spaniels, who wag
their tails when they see you. Others are rottweilers, who growl at you
when they see you. So you make a clone of Dog, perhaps rename it Cocker
Spaniel, and give it a new costume and a script for what to do when
someone gets near. You make another clone of Dog, perhaps rename it
Rottweiler, and give it a new costume, etc. Then you make three clones
of Cocker Spaniel (so there are four altogether) and two clones of
Rottweiler. Maybe you hide the Dog sprite after all this, since it's no
breed in particular. Each dog has its own position, special behaviors,
and so on. You want to save all of these dogs in the project. These are
*permanent* clones. In BYOB 3.1, the predecessor to Snap*!,* all clones
are permanent.

![](/snap-manual/assets/images/image748.png){width="1.5138888888888888in"
height="0.19444444444444445in"}One advantage of temporary clones is that
they don't slow down Snap*!* even when you have a lot of them. (If
you're curious, one reason is that permanent clones appear in the sprite
corral, where their pictures have to be updated to reflect the clone's
current costume, direction, and so on.) We have tried to anticipate your
needs, as follows: When you make a clone in a script, using the block,
it is "born" temporary. But when you make a clone from the user
interface, for example by right-clicking on a sprite and choosing
"clone," it is born permanent. The reason this makes sense is that you
don't create 100 *kinds* of dogs automatically. Each kind has many
different characteristics, programmed by hand. But when your project is
running, it might create 100 rottweilers, and those will be identical
unless you change them in the program.

![](/snap-manual/assets/images/image749.png){width="1.5138888888888888in"
height="0.2569444444444444in"}You can change a temporary sprite to
permanent by right-clicking it and choosing "edit." (It's called "edit"
rather than, say, "permanent" because it also shifts the scripting area
to reflect that sprite, as if you'd pressed its button in the sprite
corral.) You can change a permanent sprite to temporary by
right-clicking it and choosing "release." You can also change the status
of a clone in your program with with true or false as the second input.

 Sending Messages to Sprites

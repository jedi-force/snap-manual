---
title: A. Sprites and Parallelism
layout: home
photo: 
parent: Chapter 1 - Blocks, Scripts, and Sprites
has_toc: true
---
<details open markdown="block">
  <summary>
    Topics of Section
  </summary>
  {: .text-delta }
1. TOC
{:toc}
</details>

Just below the stage is the “new sprite” button . Click the button to add a new sprite to the stage. The
new sprite will appear 
![Snap Editor](/snap-manual/assets/images/list-block.png)
in a random position on the stage, with a random color, but always facing to the right.

Each sprite has its own scripts. To see the scripts for a particular sprite in the scripting area, click on the picture of that <!--![Snap Editor](/snap-manual/assets/images/list-block.png)--> sprite in the sprite corral in the bottom right corner of the window. Try putting one of the following scripts in each sprite’s scripting area:

photo

When you click the green flag, <!--![Snap Editor](/snap-manual/assets/images/list-block.png) --> you should see one sprite rotate while the other moves back and forth. This experiment illustrates the way different scripts can run in parallel. The turning and the moving happen together. Parallelism can be seen with multiple scripts of a single sprite also. Try this example:

photo

When you press the space key, the sprite should move forever in a circle, because the move and turn blocks are run in parallel. (To stop the program, click the red stop sign at the right end of the tool bar.)


## Costumes and Sounds
To change the appearance of a sprite, paint or import a new costume for it. To paint a costume, click on the Costumes tab above the scripting area, and click the paint button . The Paint Editor that appears is
explained on page 128. There are three ways to import a costume. First select the desired sprite in the sprite corral. Then, one way is to click on the file icon in the tool bar , then choose the “Costumes…”menu item. You will see a list of costumes from the public media library, and can choose one. The second way, for a costume stored on your own computer, is to click on the file icon and choose the “Import…” menu item. You can then select a file in any picture format (PNG, JPEG, etc.) supported by your browser. The third way is quicker if the file you want is visible on the desktop: Just drag the file onto the Snap! window. In any of these cases, the scripting area will be replaced by something like this:

photo

Just above this part of the window is a set of three tabs: Scripts, Costumes, and Sounds. You’ll see that the Costumes tab is now selected. In this view, the sprite’s wardrobe, you can choose whether the sprite should wear its Turtle costume or its Alonzo costume. (Alonzo, the Snap! mascot, is named after Alonzo Church, a mathematician who invented the idea of procedures as data, the most important way in which Snap! is different from Scratch.) You can give a sprite as many costumes as you like, and then choose which it will wear either by clicking in its wardrobe or by using the or block in a script. (Every
costume has a number as well as a name. The next costume block selects the next costume by number; after
the highest-numbered costume it switches to costume 1. The Turtle, costume 0, is never chosen by next
costume.) The Turtle costume is the only one that changes color to match a change in the sprite’s pen color. Protip: switches to the previous costume, wrapping like next costume. 

In addition to its costumes, a sprite can have sounds; the equivalent for sounds of the sprite’s wardrobe is called its jukebox. Sound files can be imported in any format (WAV, OGG, MP3, etc.) supported by your browser. Two blocks accomplish the task of playing sounds. If you would like a script to continue running while the sound is playing, use the block . In contrast, you can use the block to wait for the sound's completion before continuing the rest of the script.

## Inter-Sprite Communication with Broadcast
Earlier we saw an example of two sprites moving at the same time. In a more interesting program, though, the sprites on stage will interact to tell a story, play a game, etc. Often one sprite will have to tell another sprite to run a script. Here’s a simple example:

photo

In the block, the word “bark” is just an arbitrary name I made up. When you click
on the downward arrowhead in that input slot, one of the choices (the only choice, the first time) is “new,” which then prompts you to enter a name for the new broadcast. When this block is run, the chosen message is sent to every sprite, which is why the block is called “broadcast.” (But if you click the right arrow after the message name, the block becomes , and you can change it to to
send the message just to one sprite.) In this program, though, only one sprite has a script to run when that broadcast is sent, namely the dog. Because the boy’s script uses broadcast and wait rather than just broadcast, the boy doesn’t go on to his next say block until the dog’s script finishes. That’s why the two sprites take turns talking, instead of both talking at once. In Chapter VII, “Object-Oriented Programming with Sprites,” you’ll see a more flexible way to send a message to a specific sprite using the tell and ask blocks. Notice, by the way, that the say block’s first input slot is rectangular rather than oval. This means the input can be any text string, not only a number. In text input slots, a space character is shown as a brown dot, so that you can count the number of spaces between words, and in particular you can tell the difference between an empty slot and one containing spaces. The brown dots are not shown on the stage if the text is displayed.

The stage has its own scripting area. It can be selected by clicking on the Stage icon at the left of the sprite corral. Unlike a sprite, though, the stage can’t move. Instead of costumes, it has backgrounds: pictures that fill the entire stage area. The sprites appear in front of the current background. In a complicated project, it’s often convenient to use a script in the stage’s scripting area as the overall director of the action.

<!-- pandoc -f html -t markdown https://jedi-force.github.io/snap-manual/C1.html

-->
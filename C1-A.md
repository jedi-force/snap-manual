---
title: A. Sprites and Parallelism
layout: home
photo: 
parent: Chapter 1 - Blocks, Scripts, and Sprites
has_toc: true
---

Just below the stage is the “new sprite” button . Click the button to add a new sprite to the stage. The
new sprite will appear in a random position on the stage, with a random color, but always facing to the right.

Each sprite has its own scripts. To see the scripts for a particular sprite in the scripting area, click on the picture of that sprite in the sprite corral in the bottom right corner of the window. Try putting one of the following scripts in each sprite’s scripting area:

photo

When you click the green flag, you should see one sprite rotate while the other moves back and forth. This experiment illustrates the way different scripts can run in parallel. The turning and the moving happen together. Parallelism can be seen with multiple scripts of a single sprite also. Try this example:

photo

When you press the space key, the sprite should move forever in a circle, because the move and turn blocks are run in parallel. (To stop the program, click the red stop sign at the right end of the tool bar.)


# **Costumes and Sounds**
To change the appearance of a sprite, paint or import a new costume for it. To paint a costume, click on the Costumes tab above the scripting area, and click the paint button . The Paint Editor that appears is
explained on page 128. There are three ways to import a costume. First select the desired sprite in the sprite corral. Then, one way is to click on the file icon in the tool bar , then choose the “Costumes…”menu item. You will see a list of costumes from the public media library, and can choose one. The second way, for a costume stored on your own computer, is to click on the file icon and choose the “Import…” menu item. You can then select a file in any picture format (PNG, JPEG, etc.) supported by your browser. The third way is quicker if the file you want is visible on the desktop: Just drag the file onto the Snap!window. In any of these cases, the scripting area will be replaced by something like this:
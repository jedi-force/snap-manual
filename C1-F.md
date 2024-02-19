---
title: F. Debugging
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

Snap! provides several tools to help you debug a program. They center around the idea of pausing the running of a script partway through, so that you can examine the values of variables.

## The pause button
The simplest way to pause a program is manually, by clicking the pause button in the top right corner of
the window. While the program is paused, you can run other scripts by clicking on them, show variables on
stage with the checkbox next to the variable in the Variables palette or with the show variable block, and do all the other things you can generally do, including modifying the paused scripts by adding or removing blocks. The button changes shape to and clicking it again resumes the paused scripts.

## Breakpoints: the pause all block
The pause button is great if your program seems to be in an infinite loop, but more often you’ll want to set a breakpoint, a particular point in a script at which you want to pause. The block, near the bottom of the Control palette, can be inserted in a script to pause when it is run. So, for example, if your program is getting an error message in a particular block, you could use pause all just before that block to look at the values of variables just before the error happens.

The pause all block turns bright cyan while paused. Also, during the pause, you can right-click on a running script and the menu that appears will give you the option to show watchers for temporary variables of the script:

photo

But what if the block with the error is run many times in a loop, and it only errors when a particular condition is true—say, the value of some variable is negative, which shouldn’t ever happen. In the iteration library (see page 25 for more about how to use libraries) is a breakpoint block that lets you set a conditional breakpoint, and automatically display the relevant variables before pausing. Here’s a sample use of it:

photo

(In this contrived example, variable zot comes from outside the script but is relevant to its behavior.) When you continue (with the pause button), the temporary variable watchers are removed by this breakpoint block before resuming the script. The breakpoint block isn’t magic; you could alternatively just put a pause all inside an if. 1

photo

## Visible stepping
Sometimes you’re not exactly sure where the error is, or you don’t understand how the program got there. To understand better, you’d like to watch the program as it runs, at human speed rather than at computer speed. You can do this by clicking the visible stepping button ( ), before running a script or while the script is paused. The button will light up ( ) and a speed control slider will appear in the toolbar. When you start or continue the script, its blocks and input slots will light up cyan one at a time:

photo

In this simple example, the inputs to the blocks are constant values, but if an input were a more complicated expression involving several reporter blocks, each of those would light up as they are called. Note that the input to a block is evaluated before the block itself is called, so, for example, the 100 lights up before the move.

The speed of stepping is controlled by the slider. If you move the slider all the way to the left, the speed is zero, the pause button turns into a step button , and the script takes a single step each time you push it. The name for this is single stepping.

If several scripts that are visible in the scripting area are running at the same time, all of them are stepped in parallel. However, consider the case of two repeat loops with different numbers of blocks. While not stepping, each script goes through a complete cycle of its loop in each display cycle, despite the difference in the length of a cycle. In order to ensure that the visible result of a program on the stage is the same when stepped as when not stepped, the shorter script will wait at the bottom of its loop for the longer script to catch up.

When we talk about custom blocks in Chapter III, we’ll have more to say about visible stepping as it affects those blocks.
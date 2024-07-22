---
title: E. Variables
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

Try this script:

photo

The input to the move block is an orange oval. To get it there, drag the orange oval that’s part of the for block:

photo

The orange oval is a variable: a symbol that represents a value. (I took this screenshot before changing the second number input to the for block from the default 10 to 200, and before dragging in a turn block.) For runs its script input repeatedly, just like repeat, but before each repetition it sets the variable i to a number starting with its first numeric input, adding 1 for each repetition, until it reaches the second numeric input. In this case, there will be 200 repetitions, first with i=1, then with i=2, then 3, and so on until i=200 for the final repetition. The result is that each move draws a longer and longer line segment, and that’s why the picture you see is a kind of spiral. (If you try again with a turn of 90 degrees instead of 92, you’ll see why this picture is called a “squiral.”)

The variable i is created by the for block, and it can only be used in the script inside the block’s C-slot. (By the way, if you don’t like the name i, you can change it by clicking on the orange oval without dragging it, which will pop up a dialog window in which you can enter a different name:

photo

“I” isn’t a very descriptive name; you might prefer “length” to indicate its purpose in the script. “I” is traditional because mathematicians tend to use letters between i and n to represent integer values, but in programming languages we don’t have to restrict ourselves to single-letter variable names.)

## Global Variables
You can create variables “by hand” that aren’t limited to being used within a single block. At the top of the Variables palette, click the “Make a variable” button:

photo

This will bring up a dialog window in which you can give your variable a name:

photo

The dialog also gives you a choice to make the variable available to all sprites (which is almost always what you want) or to make it visible only in the current sprite. You’d do that if you’re going to give several sprites individual variables with the same name, so that you can share a script between sprites (by dragging it from the current sprite’s scripting area to the picture of another sprite in the sprite corral), and the different sprites will do slightly different things when running that script because each has a different value for that variable name.

If you give your variable the name “name” then the Variables palette will look like this:

photo

There’s now a “Delete a variable” button, and there’s an orange oval with the variable name in it, just like the orange oval in the for block. You can drag the variable into any script in the scripting area. Next to the oval is a checkbox, initially checked. When it’s checked, you’ll also see a variable watcher on the stage:

photo

When you give the variable a value, the orange box in its watcher will display the value.
How do you give it a value? You use the set block:

photo

Note that you don’t drag the variable’s oval into the set block! You click on the downarrow in the first input slot, and you get a menu of all the available variable names.

If you do choose “For this sprite only” when creating a variable, its block in the palette looks like this:
The location-pin icon is a bit of a pun on a sprite-local variable. It’s shown only in the palette.

## Script Variables
In the name example above, our project is going to carry on an interaction with the user, and we want to
remember their name throughout the project. That’s a good example of a situation in which a global variable (the kind you make with the “Make a variable” button) is appropriate. Another common example is a variable called “score” in a game project. But sometimes you only need a variable temporarily, during the running of a particular script. In that case you can use the script variables block to make the variable:

photo

As in the for block, you can click on an orange oval in the script variables block without dragging to change its name. You can also make more than one temporary variable by clicking on the right arrow at the end of the block to add another variable oval:

photo

## Renaming variables
There are several reasons why you might want to change the name of a variable:
1. It has a default name, such as the “a” in script variables or the “i” in for.
2. It conflicts with another name, such as a global variable, that you want to use in the same script.
3. You just decide a different name would be more self-documenting.
In the first and third case, you probably want to change the name everywhere it appears in that script, or even in all scripts. In the second case, if you’ve already used both variables in the script before realizing that they have the same name, you’ll want to look at each instance separately to decide which ones to rename. Both of these operations are possible by right-clicking or control-clicking on a variable oval.

If you right-click on an orange oval in a context in which the variable is used, then you are able to rename just that one orange oval:

photo

If you right-click on the place where the variable is defined (a script variables block, the orange oval for a global variable in the Variables palette, or an orange oval that’s built into a block such as the “i” in for), then you are given two renaming options, “rename” and “rename all.” If you choose “rename,” then the name is changed only in that one orange oval, as in the previous case:

photo

But if you choose “rename all,” then the name will be changed throughout the scope of the variable (the script for a script variable, or everywhere for a global variable):

photo

## Transient variables
So far we’ve talked about variables with numeric values, or with short text strings such as someone’s name. But there’s no limit to the amount of information you can put in a variable; in Chapter IV you’ll see how to use lists to collect many values in one data structure, and in Chapter VIII you’ll see how to read information from web sites. When you use these capabilities, your project may take up a lot of memory in the computer. If you get close to the amount of memory available to Snap!, then it may become impossible to save your project. (Extra space is needed temporarily to convert from Snap!’s internal representation to the form in which projects are exported or saved.) If your program reads a lot of data from the outside world that will still be available when you use it next, you might want to have values containing a lot of data removed from memory before saving the project. To do this, right-click or control-click on the orange oval in the Variables palette, to see this menu:

photo

You already know about the rename options, and help… displays a help screen about variables in general.
Here we’re interested in the check box next to transient. If you check it, this variable’s value will not be saved when you save your project. Of course, you’ll have to ensure that when your project is loaded, it recreates the needed value and sets the variable to it.


---
title: G. Etcetera
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

This manual doesn’t explain every block in detail. There are many more motion blocks, sound blocks, costume and graphics effects blocks, and so on. You can learn what they all do by experimentation, and also by reading the “help screens” that you can get by right-clicking or control-clicking a block and selecting “help…” from the menu that appears. If you forget what palette (color) a block is, but you remember at least part of its name, type control-F and enter the name in the text block that appears in the palette area. Here are the primitive blocks that don’t exist in Scratch:

reports a new costume consisting of everything that’s drawn on the stage by any sprite. Rightclicking the block in the scripting area gives the option to change it to if vector logging is enabled. See page 116.

Print characters in the given point size on the stage, at the sprite’s position and in its direction. The sprite moves to the end of the text. (That’s not always what you want, but you can save the sprite’s position before using it, and sometimes you need to know how big the text turned out to be, in turtle steps.) If the pen is down, the text will be underlined.

Takes a sprite as input. Like stamp except that the costume is stamped onto the selected sprite instead of onto the stage. (Does nothing if the current sprite doesn’t overlap the chosen sprite.)

Takes a sprite as input. Erases from that sprite’s costume the area that overlaps with the current sprite’s costume. (Does not affect the costume in the chosen sprite’s wardrobe, only the copy currently visible.)

See page 6.

See page 17.

Runs only this script until finished. In the Control palette even though it’s gray

Reporter version of the if/else primitive command block. Only one of the two branches is evaluated,
depending on the value of the first input.

Looping block like repeat but with an index variable.

Declare local variables in a script.

See page 91. 

reports the value of a graphics effect.

Constant true or false value. See page 12.

Create a primitive using JavaScript. (This block is disabled by default; the user must check “Javascript extensions” in the setting menu each time a project is loaded.)

The at block lets you examine the screen pixel directly behind the rotation center of a sprite, the mouse, or an arbitrary (x,y) coordinate pair dropped onto the second menu slot. The first five items of the left menu let you examine the color visible at the position. (The “RGBA” option reports a list.) The “sprites” option reports a list of all sprites, including this one, any point of which overlaps this sprite’s rotation center (behind or in front). This is a hyperblock with respect to its second input.

Checks the data type of a value.

Get or set selected global flags.

Turn the text into a list, using the second input as the delimiter between items. The default delimiter, indicated by the brown dot in the input slot, is a single space character. “Le!er” puts each character of the text in its own list item. “Word” puts each word in an item. (Words are separated by any number of consecutive space, tab, carriage return, or newline characters.) “Line” is a newline character (0xa); “tab” is a tab character (0x9); “cr” is a carriage return (0xd). “Csv” and “json” split formatted text into lists of lists; see page 54. “Blocks” takes a script as the first input, reporting a list structure representing the structure of the script. See Chapter XI.

For lists, reports true only if its two input values are the very same list, so changing an item in one of them is visible in the other. (For =, lists that look the same are the same.) For text strings, uses
case-sensitive comparison, unlike =, which is case-independent

For lists, reports true only if its two input values are the very same list, so changing an item in one of them is visible in the other. (For =, lists that look the same are the same.) For text strings, uses
case-sensitive comparison, unlike =, which is case-independent.

These hidden blocks can be found with the relabel option of any dyadic arithmetic block. They’re hidden partly because writing them in Snap! is a good, pretty easy programming exercise. Note: the two inputs to atan2 are Δx and Δy in that order, because we measure angles clockwise from north. Max and min are variadic; by clicking the arrowhead, you can provide additional inputs.

Similarly, these hidden predicates can be found by relabeling the relational predicates.

## Metaprogramming (see Chapter XI. , page 101)

These blocks support metaprogramming, which means manipulating blocks and scripts as data. This is not the same as manipulating procedures (see Chapter VI. ), which are what the blocks mean; in metaprogramming the actual blocks, what you see on the screen, are the data. This capability is new in version 8.0.

## First class list blocks (see Chapter IV, page 46):

Numbers from will count up or down.

The script input to for each can refer to an item of the list with the item variable.

report the sprite or mouse position as a two-item vector (x,y).

## First class procedure blocks (see Chapter VI, page 65):

photo

## First class continuation blocks (see Chapter X, page 93):

photo

## First class sprite, costume, and sound blocks (see Chapter VII, page 73):

photo

Object is a hyperblock

## Scenes:

The major new feature of version 7.0 is scenes: A project can include within it sub-projects, called scenes, each with its own stage, sprites, scripts, and so on. This block makes another scene active, replacing the current one. Nothing is automatically shared between scenes: no sprites, no blocks, no
variables. But the old scene can send a message to the new one, to start it running, with optional payload as in broadcast (page 23).

In particular, you can say

photo

if the new scene expects to be started with a green flag signal.

## These aren’t new blocks but they have a new feature:

These accept two-item (x,y) lists as input, and have extended menus (also including other sprites):

photo

“Center” means the center of the stage, the point at (0,0). “Direction” is in the point in direction sense, the direction that would leave this sprite pointing toward another sprite, the mouse, or the center. “Ray length” is the distance from the center of this sprite to the nearest point on the other sprite, in the current direction.

The stop block has two extra menu choices. Stop this block is used inside the definition of a custom block to stop just this invocation of this custom block and continue the script that called it. Stop all but this script is good at the end of a game to stop all the game pieces from moving around, but keep running this script to provide the user’s final score. The last two menu choices add a tab at the bottom of the block because the current script can continue after it.

The new “pen trails” option is true if the sprite is touching any drawn or stamped ink on the stage. Also, touching will not detect hidden sprites, but a hidden sprite can use it to detect visible sprites.

he video block has a snap option that takes a snapshot and reports it as a costume. It is hyperized with respect to its second input.

The “neg” option is a monadic negation operator, equivalent to . “lg” is log2. “id” is the identity function, which reports its input. “sign” reports 1 for positive input, 0 for zero input, or -1 for negative input.

name changed to clarify that it’s different from

photo

+ and × are variadic: they take two or more inputs. If you drop a list on the arrowheads, the block name
changes to sum or product.

photo

Extended mouse interaction events, sensing clicking, dragging, hovering, etc. The “stopped” option triggers when all scripts are stopped, as with the stop button; it is useful for robots whose hardware interface must be told to turn off motors. A when I am stopped script can run only for a limited time.

photo

Extended broadcast: Click the right arrowhead to direct the message to a single sprite or the stage. Click again to add any value as a payload to the message.

photo

Extended when I receive: Click the right arrowhead to expose a script variable (click on it to change its name, like any script variable) that will be set to the data of a matching broadcast. If the first input is set to “any message,” then the data variable will be set to the message, if no payload is included with the broadcast, or to a two-item list containing the message and the payload.

photo

If the input is set to “any key,” then a right arrowhead appears:

photo

and if you click it, a script variable key is created whose value is the key that was pressed. (If the key is one that’ represented in the input menu by a word or phrase, e.g., “enter” or “up arrow,” then the value of key will be that word or phrase, except for the space character, which is represented as itself in key.)

photo

These ask features and more in the Menus library.

The of block has an extended menu of attributes of a sprite. Position reports an (x,y) vector. Size reports the percentage of normal size, as controlled by the set size block in the Looks category. Left, right, etc. report the stage coordinates of the corresponding edge of the sprite’s bounding box. Variables reports a list of the names of all variables in scope (global, sprite-local, and script variables if the right input is a script).

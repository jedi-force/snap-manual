---
title: B. Nesting Sprites - Anchors and Parts
layout: home
photo: 
parent: Chapter 1 - Blocks, Scripts, and Sprites
has_toc: true
---
<details open markdown="block">
  <summary>
    Table of contents
  </summary>
  {: .text-delta }
1. TOC
{:toc}
</details>

Sometimes it’s desirable to make a sort of “super-sprite” composed of pieces that can move together but can also be separately articulated. The classic example is a person’s body made up of a torso, limbs, and a head. Snap! allows one sprite to be designated as the anchor of the combined shape, with other sprites as its parts. To set up sprite nesting, drag the sprite corral icon of a part sprite onto the stage display (not the sprite corral icon!) of the desired anchor sprite. The precise place where you let go of the mouse button will be the attachment point of the part on the anchor.

Sprite nesting is shown in the sprite corral icons of both anchors and parts:

photo

In this illustration, it is desired to animate Alonzo’s arm. (The arm has been colored green in this picture to make the relationship of the two sprites clearer, but in a real project they’d be the same color, probably.) Sprite, representing Alonzo’s body, is the anchor; Sprite(2) is the arm. The icon for the anchor shows small images of up to three attached parts at the bottom. The icon for each part shows a small image of the anchor in its top left corner, and a synchronous/dangling rotation flag in the top right corner. In its initial, synchronous setting, as shown above, it means that the when the anchor sprite rotates, the part sprite also rotates as well as revolving around the anchor. When clicked, it changes from a circular arrow to a straight arrow, and indicates that when the anchor sprite rotates, the part sprite revolves around it, but does not rotate, keeping its original orientation. (The part can also be rotated separately, using its turn blocks.) Any change in the position or size of the anchor is always extended to its parts. Also, cloning the anchor (see Section VII. B) will also clone all its parts.

photo

Top: turning the part: the green arm. Bottom: turning the anchor, with the arm synchronous (left) and dangling (right).


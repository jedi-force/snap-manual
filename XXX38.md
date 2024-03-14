---
title: 38  Inheritance by Delegation

layout: home
has_children: false
has_toc: true
nav_order: 39
---


A clone *inherits* properties of its parent. "Properties" include
scripts, custom blocks, variables, named lists, system attributes,
costumes, and sounds. Each individual property can be shared between
parent and child, or not shared (with a separate one in the child). The
getter block for a shared property, in the child's palette, is displayed
in a lighter color; separate properties of the child are displayed in
the traditional colors.

> When a new clone is created, by default it shares only its methods,
> wardrobe, and jukebox with its parent. All other properties are copied
> to the clone, but not shared. (One exception is that a new *permanent*
> clone is given a random position. Another is that *temporary* clones
> share the scripts in their parent's scripting area. A third is that
> sprite-local variables that the parent creates *after* cloning are
> shared with its children.) If the value of a shared property is
> changed in the parent, then the children see the new value. If the
> value of a shared property is changed in the *child*, then the sharing
> link is broken, and a new private version is created in that child.
> (This is the mechanism by which a child chooses not to share a
> property with its parent.) "Changed" in this context means using the
> set or change block for a variable, editing a block in the Block
> Editor, editing a costume or sound, or inserting, deleting, or
> reordering costumes or sounds. To change a property from unshared to
> shared, the child uses the inherit command block. The pulldown menu in
> the block lists all the things this sprite can inherit from its parent
> (which might be nothing, if this sprite has no parent) and is not
> already inheriting. But that would prevent telling a child to inherit,
> so if the inherit block is inside a ring, its pulldown menu includes
> all the things a child could inherit from this sprite. Right-clicking
> on the scripting area of a permanent clone gives a menu option to
> share the entire collection of scripts from its parent, as a temporary
> clone does.

The rules are full of details, but the basic idea is simple: Parents can
change their children, but children can't directly change their parents.
That's what you'd expect from the word "inherit": the influence just
goes in one direction. When a child changes some property, it's
declaring independence from its parent (with respect to that one
property). What if you really want the child to be able to make a change
in the parent (and therefore in itself and all its siblings)? Remember
that in this system any object can tell any other object to do
something:

![](/snap-manual/assets/images/image779.png){width="5.072916666666667in"
height="0.5833333333333334in"}When a sprite gets a message for which it
doesn't have a corresponding block, the message is *delegated* to that
sprite's parent. When a sprite does have the corresponding block, then
the message is not delegated. If the script that implements a delegated
message refers to my (self), it means the child to which the message was
originally sent, not the parent to which the message was delegated.

![](/snap-manual/assets/images/image780.png){width="0.7895833333333333in" height="3.4680555555555554in"}List of attributes

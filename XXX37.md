                ---
                title: 37  Prototyping: Parents and Children

                layout: home
                has_children: false
                has_toc: true
                nav_order: 38
                ---


Most current OOP languages use a *class/instance* approach to creating
objects. A class is a particular *kind of object,* and an instance is an
*actual object* of that type. For example, there might be a Dog class,
and several instances Fido, Spot, and Runt. The class typically
specifies the methods shared by all dogs (RollOver, SitUpAndBeg, Fetch,
and so on), and the instances contain data such as species, color, and
friendliness. Snap*!* uses a different approach called *prototyping,* in
which there is no distinction between classes and instances. Prototyping
is better suited to an experimental, tinkering style of work: You make a
single dog sprite, with both methods (blocks) and data (variables); you
can actually watch it and interact with it on the stage; and when you
like it, you use it as the prototype from which to clone other dogs. If
you later discover a bug in the behavior of dogs, you can edit a method
in the parent, and all of the children will automatically share the new
version of the method block. Experienced class/instance programmers may
find prototyping strange at first, but it is actually a more expressive
system, because you can easily simulate a class/instance hierarchy by
hiding the prototype sprite! Prototyping is also a better fit with the
Scratch design principle that everything in a project should be concrete
and visible on the stage; in class/instance OOP the programming process
begins with an abstract, invisible entity, the class, that must be
designed before any concrete objects can be made.[^7]

![](/snap-manual/assets/images/image748.png){width="7.500694444444444in"
height="1.5743055555555556in"}There are three ways to make a child
sprite. If you control-click or right-click on a sprite in the "sprite
corral" at the bottom right corner of the window, you get a menu that
includes "clone" as one of the choices. There is an a new clone of block
in the Control palette that creates and reports a child sprite. And
sprites have a "parent" attribute that can be set, like any attribute,
thereby *changing* the parent of an existing sprite.

 Inheritance by Delegation

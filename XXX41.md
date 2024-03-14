                ---
                title: 41. Chapter 41:  OOP with Procedures

                layout: home
                has_children: true
                has_toc: false
                nav_order: 42
                ---


The idea of object oriented programming is often taught in a way that
makes it seem as if a special object oriented programming language is
necessary. In fact, any language with ﬁrst class procedures and lexical
scope allows objects to be implemented explicitly; this is a useful
exercise to help demystify objects.

The central idea of this implementation is that an object is represented
as a *dispatch procedure* that takes a message as input and reports the
corresponding method. In this section we start with a stripped-down
example to show how local state works, and build up to full
implementations of class/instance and prototyping OOP.

Local State with Script Variables

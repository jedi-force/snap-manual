                ---
                title: 17. Chapter 17: First class lists

                layout: home
                has_children: true
                has_toc: false
                nav_order: 18
                ---


A data type is *ﬁrst class* in a programming language if data of that
type can be

-   the value of a variable

-   an input to a procedure

-   the value returned by a procedure

-   a member of a data aggregate

-   anonymous (not named)

In Scratch, numbers and text strings are ﬁrst class. You can put a
number in a variable, use one as the input to a block, call a reporter
that reports a number, or put a number into a list.

But Scratch's lists are not ﬁrst class. You create one using the "Make a
list" button, which requires that you give the list a name. You can't
put the list into a variable, into an input slot of a block, or into a
list item---you can't have lists of lists. None of the Scratch reporters
reports a list value. (You can use a reduction of the list into a text
string as input to other blocks, but this loses the list structure; the
input is just a text string, not a data aggregate.)

A fundamental design principle in Snap*!* is that ***[all data should be
ﬁrst class]{.underline}**.* If it's in the language, then we should be
able to use it fully and freely. We believe that this principle avoids
the need for many special-case tools, which can instead be written by
Snap*!* users themselves.

![](/snap-manual/assets/images/image523.png){width="2.839583333333333in"
height="0.41597222222222224in"}Note that it's a data *type* that's ﬁrst
class, not an individual value. Don't think, for example, that some
lists are ﬁrst class, while others aren't. In Snap*!*, lists are ﬁrst
class, period.

 The list Block

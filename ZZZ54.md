                ---
                title: 54 ![](/snap-manual/assets/images/image981.png){width="5.76875in" height="3.879861111111111in"}Macros

                layout: home
                has_children: false
                has_toc: true
                nav_order: 55
                ---


Users of languages in the C family have learned to think of macros as
entirely about text strings, with no relation to the syntax of the
language. So you can do things like

\#define foo baz)

with the result that you can only use the foo macro after an open
parenthesis.

In the Lisp family of languages we have a different tradition, in which
macros are syntactically just like procedure calls, except that the
"procedure" is a macro, with different evaluation rules from ordinary
procedures. Two things make a macro different: its input expressions are
not evaluated, so a macro can establish its own syntax (but still
delimited by parentheses, in Lisp, or still one block, in Snap*!* ); and
the result of a macro call is a new expression that is evaluated *as if
it appeared in the caller* of the macro, with access to the caller's
variables and, implicitly, its continuation.

Snap*!* has long had the first part of this, the ability to make inputs
unevaluated. In version 8.0 we add the ability to run code in the
context of another procedure, just as we can run code in the context of
another sprite, using the same mechanism: the of block. In the example
on the previous page, the if \_ report \_ caller block runs a report
block, but not in its own context; it causes *the fizzbuzz block* to
report "fizz" or "buzz" as appropriate. (Yes, we know that the rules
implemented here are simplified compared to the real game.) It doesn't
just report out of the entire toplevel script; you can see that map is
able to prepend "The answer is" to each reported value.

This macro capability isn't fully implemented. First, we shouldn't have
to use the calling script as an explicit input to the macro. In a later
release, this will be fixed; when defining a block you'll be able to say
that it's a macro, and it will automatically get its caller's context as
an invisible input. Second, there is a possibility of confusion between
the variables of the macro and the variables of its caller. (What if the
macro wanted to refer to a variable value in its caller?) The one
substantial feature of Scheme that we don't yet implement is *hygienic
macros,* which make it possible to keep the two namespaces separate.

User Interface Elements

---
title: D. Predicates and Conditional Evaluation
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

Most reporters report either a number, like , or a text string, like . A predicate is a
special kind of reporter that always reports true or false. Predicates have a hexagonal shape:

photo

The special shape is a reminder that predicates don’t generally make sense in an input slot of blocks that are expecting a number or text. You wouldn’t say , although (as you can see from the
picture) Snap! lets you do it if you really want. Instead, you normally use predicates in special hexagonal input slots like this one:

photo

The C-shaped if block runs its input script if (and only if) the expression in its hexagonal input reports true.

photo

A really useful block in animations runs its input script repeatedly until a predicate is satisfied:

photo

If, while working on a project, you want to omit temporarily some commands in a script, but you don’t want to forget where they belong, you can say

photo

Sometimes you want to take the same action whether some condition is t

photo

The technical term for a true or false value is a “Boolean” value; it has a capital B because it’s named after a person, George Boole, who developed the mathematical theory of Boolean values. Don’t get confused; a hexagonal block is a predicate, but the value it reports is a Boolean.

Another quibble about vocabulary: Many programming languages reserve the name “procedure” for Commands (that carry out an action) and use the name “function” for Reporters and Predicates. In this manual, a procedure is any computational capability, including those that report values and those that don’t Commands, Reporters, and Predicates are all procedures. The words “a Procedure type” are shorthand for “Command type, Reporter type, or Predicate type.”

If you want to put a constant Boolean value in a hexagonal slot instead of a predicate-based expression, hover the mouse over the block and click on the control that appears:
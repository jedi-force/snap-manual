                ---
                title: 21 ![](/snap-manual/assets/images/image556.png){width="5.864583333333333in" height="1.0715277777777779in"}Higher Order List Operations and Rings

                layout: home
                has_children: false
                has_toc: true
                nav_order: 22
                ---


There's an even easier way to select the even numbers from a list:

![](/snap-manual/assets/images/image557.png){width="2.375in"
height="0.2777777777777778in"}The keep block takes a Predicate
expression as its first input, and a list as its second input. It
reports a list containing those elements of the input list for which the
predicate returns true. Notice two things about the predicate input:
First, it has a grey ring around it. Second, the mod block has an empty
input. Keep puts each item of its input list, one at a time, into that
empty input before evaluating the predicate. (The empty input is
supposed to remind you of the "box" notation for variables in elementary
school: ☐+3=7.) The grey ring is part of the keep block as it appears in
the palette:

![](/snap-manual/assets/images/image558.png){width="4.1402777777777775in"
height="0.6354166666666666in"}What the ring means is that this input is
a block (a predicate block, in this case, because the interior of the
ring is a hexagon), rather than the value reported by that block. Here's
the difference:

Evaluating the = block without a ring reports true or false; evaluating
the block *with* a ring reports the block itself. This allows keep to
evaluate the = predicate repeatedly, once for each list item. A block
that takes another block as input is called a *higher order* block (or
higher order procedure, or higher order function).

![](/snap-manual/assets/images/image562.png){width="2.39in"
height="0.22in"}![](/snap-manual/assets/images/image563.png){width="1.6944444444444444in"
height="0.9930555555555556in"} Snap*!* provides four higher order
function blocks for operating on lists:

![](/snap-manual/assets/images/image571.emf){width="7.5in"
height="1.7138888888888888in"}You've already seen keep. Find first is
similar, but it reports just the first item that satisfies the
predicate, not a list of all the matching items. It's equivalent to but
faster because it

stops looking as soon as it finds a match. If there are no matching
items, it returns an empty string.

![](/snap-manual/assets/images/image572.png){width="7.589583333333334in"
height="1.0791666666666666in"}

![](/snap-manual/assets/images/image574.png){width="7.486111111111111in"
height="1.0020833333333334in"}These examples use small lists, to fit the
page, but the higher order blocks work for any size list.

An *empty* gray ring represents the *identity function,* which just
reports its input. Leaving the ring in map empty is the most concise way
to make a shallow copy of a list (that is, in the case of a list of
lists, the result is a new toplevel list whose items are the same
(uncopied) lists that are items of the toplevel input list). To make a
deep copy of a list (that is, one in which all the sublists, sublists of
sublists, etc. are copied), use the list as input to the ![Macintosh
HD:Users:bh:Desktop:id.png](/snap-manual/assets/images/image576.png){width="0.7430555555555556in"
height="0.19444444444444445in"} block (one of the variants of the sqrt
of block). This works because id of is a hyperblock (page 55).

![](/snap-manual/assets/images/image313.png){width="5.5800503062117235in"
height="0.4623108048993876in"}The third higher order block, combine,
computes a single result from *all* the items of a list, using a
*two-input* reporter as its second input. In practice, there are only a
few blocks you'll ever use with combine:

These blocks take the sum of the list items, take their product, string
them into one word, combine them into a sentence (with spaces between
items), see if all items of a list of Booleans are true, see if any of
the items is true, find the smallest, or find the largest.

![](/snap-manual/assets/images/image585.png){width="6.279166666666667in"
height="0.37569444444444444in"}![](/snap-manual/assets/images/image586.png){width="3.8680555555555554in"
height="0.3451388888888889in"}Why + but not −? It only makes sense to
combine list items using an *associative* function: one that doesn't
care in what order the items are combined (left to right or right to
left). (2+3)+4 = 2+(3+4), but (2−3)−4 ≠ 2−(3−4).

![](/snap-manual/assets/images/image587.png){width="5.808333333333334in"
height="1.1909722222222223in"}The functions map, keep, and find first
have an advanced mode with rarely-used features: If their function input
is given explicit input names (by clicking the arrowhead at the right
end of the gray ring; see page 69), then it will be called for each list
item with *three* inputs: the item's value (as usual), the item's
position in the input list (its index), and the entire input list. No
more than three input names can be used in this contex

 {#section-2 .ListParagraph}

Table View vs. List View

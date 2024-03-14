                ---
                title: 11. Chapter 11:  Appendix B. APL features {#appendix-b.-apl-features .ListParagraph}

                layout: home
                has_children: true
                has_toc: false
                nav_order: 12
                ---


The book *A Programming Language* was published by mathematician Kenneth
E. Iverson in 1962. He wanted a formal language that would look like
what mathematicians write on chalkboards. The then-unnamed language
would later take its name from the first letters of the words in the
book's title. It was little-known until 1964, when a formal description
of the just-announced IBM System/360 in the *IBM Systems Journal* used
APL notation. (Around the same time, Iverson's associate Adin Falkoff
gave a talk on APL to a New York Association for Computing Machinery
chapter, with an excited 14-year-old Brian Harvey in the audience.) But
it wasn't until 1966 that the first public implementation of the
language for the System/360 was published by IBM. (It was called
"APL\\360" because the normal slash character / represents the "reduce"
operator in APL, while backslash is "expand.")

The crucial idea behind APL is that mathematicians think about
collections of numbers, one-dimensional *vectors* and two-dimensional
*matrices,* as valid objects in themselves, what computer scientists
later learned to call "first class data." A mathematician who wants to
add two vectors writes ***v*~1~** + ***v*~2~**, not "for i = 1 to
length(v1), result\[i\]=v1\[i\]+v2\[i\]." Same for a programmer using
APL.

There are three kinds of function in APL: scalar functions, mixed
functions, and operators. A *scalar function* is one whose natural
domain is individual numbers or text characters. A *mixed function* is
one whose domain includes arrays (vectors, matrices, or
higher-dimensional collections). In Snap*!*, scalar functions are
generally found in the green Operators palette, while mixed functions
are in the red Lists palette. The third category, confusingly for
Snap*!* users, is called *operators* in APL, but corresponds to what we
call higher order functions: functions whose domain includes functions.

Snap*!* hyperblocks are scalar functions that behave like APL scalar
functions: they can be called with arrays as inputs, and the underlying
function is applied to each number in the arrays. (If the function is
*monadic,* meaning that it takes one input, then there's no complexity
to this idea. Take the square root of an array, and you are taking the
square root of each number in the array. If the function is *dyadic,*
taking two inputs, then the two arrays must have the same shape. Snap*!*
is more forgiving than APL; if the arrays don't agree in number of
dimensions, called the *rank* of the array, the lower-rank array is
matched repeatedly with subsets of the higher-rank one; if they don't
agree in length along one dimension, the result has the shorter length
and some of the numbers in the longer-length array are ignored. An
exception in both languages is that if one of the two inputs is a
scalar, then it is matched with every number in the other array input.)

As explained in Section I.G, this termwise extension of scalar functions
is the main APL-like feature built into Snap*!* itself. We also include
an extension of the item block to address multiple dimensions, an
extension to the length block with five list functions from APL, and a
new primitive reshape block. The APL library extends the implementation
of APL features to include a few missing scalar functions and several
missing mixed functions and operators.

Programming in APL really is *very* different in style from programming
in other languages, even Snap*!*. This appendix can't hope to be a
complete reference for APL, let alone a tutorial. If you're interested,
find one of those in a library or a (probably used) bookstore, read it,
and *do the exercises.* Sorry to sound like a teacher, but the notation
is sufficiently weird as to take a lot of practice before you start to
think in APL.

A note on versions: There is a widely standardized APL2, several
idiosyncratic extensions, and a successor language named J. The latter
uses plain ASCII characters, unlike the ones with APL in their names,
which use the mathematician's character set, with Greek letters,
typestyles (boldface and/or italics in books; underlined, upper case, or
lower case in APL) as loose type declarations, and symbols not part of
anyone's alphabet, such as ⌊ for floor and ⌈ for ceiling. To use the
original APL, you needed expensive special computer terminals. (This was
before you could download fonts in software. Today the more unusual APL
characters are in Unicode at U+2336 to U+2395.) The character set was
probably the main reason APL didn't take over the world. APL2 has a lot
to recommend it for Snap*!* users, mainly because it moves from the
original APL idea that all arrays must be uniform in dimension, and the
elements of arrays must be numbers or single text characters, to our
idea that a list can be an element of another list, and that such
elements don't all have to have the same dimensions. Nevertheless, its
mechanism for allowing both old-style APL arrays and more general
"nested arrays" is complicated and hard for an APL beginner (probably
all but two or three Snap*!* users) to understand. So we are starting
with plain APL. If it turns out to be wildly popular, we may decide
later to include APL2 features.

Here are some of the guiding ideas in the design of the APL library:

![](/snap-manual/assets/images/image1257.png){width="4.451388888888889in"
height="0.5208333333333334in"}Goal:  Enable interested **Snap*!*** users
to learn the feel and style of APL programming. It's really worth the
effort. For example, we didn't hyperize the = block because Snap*!*
users expect it to give a single yes-or-no answer about the equality of
two complete structures, whatever their types and shapes. In APL, = is a
scalar function; it compares two numbers or two characters. How could
APL users live without the ability to ask if two *structures* are equal?
Because in APL you can say **∧**/,a=b to get that answer. Reading from
right to left, a=b reports an array of Booleans (represented in APL as 0
for False, 1 for True); the comma operator turns the shape of the array
into a simple vector; and **∧**/ means "reduce with and"; "reduce" is
our combine function. That six-character program is much less effort
than the equivalent

![](/snap-manual/assets/images/image1258.png){width="0.9930555555555556in"
height="0.20833333333333334in"}in Snap*!*. Note in passing that if you
wanted to know *how many* corresponding elements of the two arrays are
equal, you'd just use +/ instead of **∧**/. Note also that our APLish
blocks are a little verbose, because they include up to three notations
for the function: the usual Snap*!* name (e.g., flatten), the name APL
programmers use when talking about it (ravel), and, in yellow type, the
symbol used in actual APL code (,). We're not consistent about it; seems
self-documenting. And LCM (and) is different even though it has two
names; it turns out that if you represent Boolean values as 0 and 1,
then the algorithm to compute the least common multiple of two integers
computes the and function if the two inputs happen to be Boolean.
Including the APL symbols serves two purposes: the two or three Snap*!*
users who've actually programmed in APL will be sure what function
they're using, but more importantly, the ones who are reading an APL
tutorial while building programs in Snap*!* will find the block that
matches the APL they're reading.\
\
Goal:  Bring the best and most general APL ideas into "mainstream"
**Snap*!*** programming style. Media computation, in particular, becomes
much simpler when scalar functions can be applied to an entire picture
or sound. Yes, map provides essentially the same capability, but the
notation gets complicated if you want to map over columns rather than
rows. Also, Snap*!* lists are fundamentally one-dimensional, but real
data often have more dimensions. A Snap*!* programmer has to be thinking
all the time about the convention that we represent a matrix as a list
of rows, each of which is a list of individual cells. That is, row 23 of
a spreadsheet is item 23 of spreadsheet, but column 23 is map (item 23
of \_) over spreadsheet. APL treats rows and columns more
symmetrically.\
\
Non-goal:  Allow programs written originally in APL to run in
**Snap*!*** essentially unchanged.  For example, in APL the atomic text
unit is a single character, and strings of characters are lists. We
treat a text string as scalar, and that isn't going to change. Because
APL programmers rarely use conditionals, instead computing functions
involving arrays of Boolean values to achieve the same effect, the
notation they do have for conditionals is primitive (in the sense of
Paleolithic, not in the sense of built in). We're not changing ours.\
\
Non-goal:  Emulate the terse APL syntax. It's too bad, in a way; as
noted above, the terseness of expressing a computation affects APL
programmers' sense of what's difficult and what isn't. But you can't say
"terse" and "block language" in the same sentence. Our whole *raison
d'être* is to make it possible to build a program without having to
memorize the syntax or the names of functions, and to allow those names
to be long enough to be self-documenting. And APL's syntax has its own
issues, of which the biggest is that it's hard to use functions with
more than two inputs; because most mathematical dyadic functions use
infix notation (the function symbol between the two inputs), the notion
of "left argument" and "right argument" is universal in APL
documentation. The thing people most complain about, that there is no
operator precedence (like the multiplication-before-addition rule in
normal arithmetic notation), really doesn't turn out to be a problem.
Function grouping is strictly right to left, so 2×3+4 means two times
seven, not six plus four. That takes some getting used to, but it really
doesn't take long if you immerse yourself in APL. The reason is that
there are too many infix operators for people to memorize a precedence
table. But in any case, block notation eliminates the problem,
especially with Snap*!*'s zebra coloring. You can see and control the
grouping by which block is inside which other block's input slot.
Another problem with APL's syntax is that it bends over backward not to
have reserved words, as opposed to Fortran, its main competition back
then. So the dyadic **○** "circular functions" function uses the left
argument to select a trig function. 1**○**x is sin(x), 2**○**x is
cos(x), and so on. **‾**1**○**x is arcsin(x). What's 0**○**x? Glad you
asked; it's$\ \sqrt{1 - x^{2}}$.

### Boolean values

Snap*!* uses distinct Boolean values true and false that are different
from other data types. APL uses 1 and 0, respectively. The APL style of
programming depends heavily on doing arithmetic on Booleans, although
their conditionals insist on only 0 or 1 in a Boolean input slot, not
other numbers. Snap*!* *arithmetic* functions treat false as 0 and true
as 1, so our APL library tries to report Snap*!* Boolean values from
predicate functions.

### ![](/snap-manual/assets/images/image1259.png){width="5.733333333333333in" height="1.1066666666666667in"}Scalar functions

![](/snap-manual/assets/images/image1260.png){width="2.566666666666667in"
height="0.21666666666666667in"}These are the scalar functions in the APL
library. Most of them are straightforward to figure out. The scalar =
block provides an APL-style version of = (and other exceptions) as a
hyperblock that extends termwise to arrays. Join, the only non-predicate
non-hyper scalar primitive, has its own scalar join block. 7 deal 52
reports a random vector of seven numbers from 1 to 52 with no
repetitions, as in dealing a hand of cards. Signum of a number reports 1
if the number is positive, 0 if it's zero, or -1 if it's negative. Roll
6 reports a random roll of a six-sided die. To roll 8 dice, use , which
would look much more pleasant as ?8⍴6. But perhaps our version is more
instantly readable by someone who didn't grow up with APL. All the
library functions have help messages available.

### Mixed functions

Mixed functions include lists in their natural domain or range. That is,
one or both of its inputs *must* be a list, or it always reports a list.
Sometimes both inputs are naturally lists; sometimes one input of a
dyadic mixed function is naturally a scalar, and the function treats a
list in that input slot as an implicit map, as for scalar functions.
This means you have to learn the rule for each mixed function
individually.

![](/snap-manual/assets/images/image1261.png){width="4.275in"
height="1.1in"}![](/snap-manual/assets/images/image1262.png){width="1.0666666666666667in"
height="0.18333333333333332in"}The shape of function takes any input and
reports a vector of the maximum size of the structure along each
dimension. For a vector, it returns a list of length 1 containing the
length of the input. For a matrix, it returns a two-item list of the
number of rows and number of columns of the input. And so on for higher
dimensions. If the input isn't a list at all, then it has zero
dimensions, and shape of reports an empty vector.

Equivalent to the dimensions of primitive, as of 6.6.

![](/snap-manual/assets/images/image1263.png){width="1.0416666666666667in"
height="0.18333333333333332in"}![](/snap-manual/assets/images/image1264.png){width="2.033333333333333in"
height="0.18333333333333332in"}Rank of isn't an actual APL primitive,
but the composition ⍴⍴ (shape of shape of a structure), which reports
the number of dimensions of the structure (the length of its shape
vector), is too useful to omit. (It's very easy to type the same
character twice on the APL keyboard, but less easy to drag blocks
together.) Equivalent to the rank of primitive, as of 6.6.

![](/snap-manual/assets/images/image1265.png){width="7.325in"
height="0.8333333333333334in"}Reshape takes a shape vector (such as
shape might report) on the left and any structure on the right. It
ignores the shape of the right input, stringing the atomic elements into
a vector in row-major order (that is, all of the first row left to
right, then all of the second row, etc.). (The primitive reshape takes
the inputs in the other order.) It then reports an array with the shape
specified by the first input containing the items of the second:

![](/snap-manual/assets/images/image1266.png){width="6.575in"
height="1.0416666666666667in"}If the right input has more atomic
elements than are required by the left-input shape vector, the excess
are ignored without reporting an error. If the right input has too *few*
atomic elements, the process of filling the reported array starts again
from the first element. This is most useful in the specific case of an
atomic right input, which produces an array of any desired shape all of
whose atomic elements are equal. But other cases are sometimes useful
too:

![](/snap-manual/assets/images/image1267.png){width="5.508333333333334in"
height="1.25in"}\
![](/snap-manual/assets/images/image1269.png){width="1.4333333333333333in"
height="0.18333333333333332in"}Flatten takes an arbitrary structure as
input and reports a vector of its atomic elements in row-major order.
Lispians call this flattening the structure, but APLers call it "ravel"
because of the metaphor of pulling on a ball of yarn, so what they
really mean is "unravel." (But the snarky sound of that is uncalled-for,
because a more advanced version that we might implement someday is more
like raveling.) One APL idiom is to apply this to a scalar in order to
turn it into a one-element vector, but we can't use it that way because
you can't type a scalar value into the List-type input slot. Equivalent
to the primitive flatten of block.

![](/snap-manual/assets/images/image1270.png){width="3.3618055555555557in"
height="0.25in"}

![](/snap-manual/assets/images/image1274.png){width="7.204166666666667in"
height="0.5833333333333334in"}Catenate is like our primitive append,
with two differences: First, if either input is a scalar, it is treated
like a one-item vector. Second, if the two inputs are of different rank,
the catenate function is recursively mapped over the higher-rank input:

![](/snap-manual/assets/images/image1275.png){width="0.5333333333333333in"
height="0.25in"}Catenate vertically is similar, but it adds new rows
instead of adding new columns.

![](/snap-manual/assets/images/image1276.png){width="6.341666666666667in"
height="1.0416666666666667in"}Integers (I think that's what it stands
for, although APLers just say "iota") takes a positive integer input and
reports a vector of the integers from 1 to the input. This is an example
of a function classed as "mixed" not because of its domain but because
of its range. The difference between this block and the primitive
numbers from block is in its treatment of lists as inputs. Numbers from
is a hyperblock, applying itself to each item of its input list:

![](/snap-manual/assets/images/image1277.png){width="6.025in"
height="0.8333333333333334in"}Iota has a special meaning for list
inputs: The input must be a shape vector; the result is an array with
that shape in which each item is a list of the indices of the cell along
each dimension. A picture is worth 10^3^ words, but Snap*!* isn't so
good at displaying arrays with more than two dimensions, so here we
reduce each cell's index list to a string:

![](/snap-manual/assets/images/image1278.png){width="1.475in"
height="0.25in"}

![](/snap-manual/assets/images/image1279.png){width="5.95in"
height="1.1in"}Dyadic iota is like the index of primitive except for its
handling of multi-dimensional arrays. It looks only for atomic elements,
so a vector in the second input doesn't mean to search for that vector
as a row of a matrix, which is what it means to index of, but rather to
look separately for each item of the vector, and report a list of the
locations of each item. If the first input is a multi-dimensional array,
then the location of an item is a vector with the indices along each
row.

In this example, the 4 is in the second row, second column. (This is
actually an extension of APL iota, which is more like a hyperized index
of.) Generalizing, if the rank of the second input is less than the rank
of the first input by two or more, then iota looks for the entire second
input in the first input. The reported position is a vector
![](/snap-manual/assets/images/image1280.png){width="5.841666666666667in"
height="0.35in"}whose length is equal to the difference between the two
ranks. If the rank of the second input is one less than the rank of the
first, the reported value is a scalar, the index of the entire second
input in the first.

![](/snap-manual/assets/images/image1281.png){width="5.383333333333334in"
height="1.1in"}

![](/snap-manual/assets/images/image1282.png){width="5.375in"
height="3.2416666666666667in"}Why the strange design decision to report
length+1 when something isn't found, instead of a more obvious flag
value such as 0 or false? Here's why:

![](/snap-manual/assets/images/image1286.png){width="2.175in"
height="0.225in"}Note that code has 27 items, not 26. The asterisk at
the end is the ciphertext is the translation of all non-alphabet
characters (spaces and the apostrophe in "doesn't"). This is a silly
example, because it makes up a random cipher every time it's called, and
it doesn't report the cipher, so the recipient can't decipher the
message. And you wouldn't want to make the spaces in the message so
obvious. But despite being silly, the example shows the benefit of
reporting length+1 as the position of items not found.

![](/snap-manual/assets/images/image1287.png){width="7.485416666666667in"
height="0.6597222222222222in"}The contained in block is like a hyperized
contains with the input order reversed. It reports an array of Booleans
the same shape as the left input. The shape of the right input doesn't
matter; the block looks only for atomic elements.

![](/snap-manual/assets/images/image1288.png){width="2.6645833333333333in"
height="0.31666666666666665in"}The blocks grade up and grade down are
used for sorting data. Given an array as input, it reports a vector of
the indices in which the items (the rows, if a matrix) should be
rearranged in order to be sorted. This will be
![](/snap-manual/assets/images/image1292.png){width="7.4944444444444445in"
height="1.8069444444444445in"}clearer with an example:

The result from grade up tells us that item 3 of **foo** comes first in
sorted order, then item 4, then 2, then 1. When we actually select items
of **foo** based on this ordering, we get the desired sorted version.
The result reported by grade down is almost the reverse of that from
grade up, but not quite, if there are equal items in the list. (The sort
is stable, so if there are equal items, then whichever comes first in
the input list will also be first in the sorted list.)

Why this two-step process? Why not just have a sort primitive in APL?
One answer is that in a database application you might want to sort one
array based on the order of another array:

This is the list of employees of a small company. (Taken from *Structure
and Interpretation of Computer Programs* by Abelson and Sussman.
Creative Commons licensed.) Each of the smaller lists contains a
person\'s name, job title, and yearly salary.
![](/snap-manual/assets/images/image1298.png){width="5.483333333333333in"
height="2.2in"}We would like to sort the employees' names in
big-to-small order of salary. First we extract column 3 of the database,
the salaries:

![](/snap-manual/assets/images/image1299.png){width="3.5590277777777777in"
height="1.976388888888889in"}\
Then we use grade down to get the reordering indices:

![](/snap-manual/assets/images/image1300.png){width="5.333333333333333in"
height="2.3733333333333335in"}![](/snap-manual/assets/images/image1301.png){width="4.978472222222222in"
height="2.2333333333333334in"}At this point we *could* use the index
vector to sort the salaries:

![](/snap-manual/assets/images/image1302.png){width="5.593333333333334in"
height="2.3in"}But what we actually want is a list of *names,* sorted by
salary:

![](/snap-manual/assets/images/image1303.png){width="2.308333333333333in"
height="0.275in"}![](/snap-manual/assets/images/image1304.png){width="2.9166666666666665in"
height="0.325in"}By taking the index vector from grade down of column 3
and telling item to apply it to column 1, we get what we set out to
find. As usual the code is more elegant in APL:
database\[⍒database\[;3\];1\].

![](/snap-manual/assets/images/image1305.png){width="2.9472222222222224in"
height="0.22569444444444445in"}In case you've forgotten, or would select
the third *row* of the database; we need the list 3 in the second input
slot of the outer list to select by columns rather than by rows.

Select (if take) or select all but (if drop) the first (if *n*\>0) or
last (if *n*\<0) \|*n*\| items from a vector, or rows from a matrix.
Alternatively, if the left input is a two-item vector, select rows with
the first item and columns with the second.

The compress block selects a subset of its right input based on the
Boolean values in its left input, which must be a vector of Booleans
whose length equals the length of the array (the number of rows, for a
matrix) in the right input. The block reports an array of the same rank
as the right input, but containing only those rows whose corresponding
Boolean value is true. The columns version **⌿** is the same but
selecting columns rather than selecting rows.

![](/snap-manual/assets/images/image1309.png){width="6.452083333333333in"
height="0.25in"}A word about the possibly confusing names of these
blocks: There are two ways to think about what they do. Take the
standard / version, to avoid talking about both at once. One way to
think about it is that it selects some of the rows. The other way is
that it shortens the columns. For Lispians, which includes you since
you've learned about keep, the natural way to think about / is that it
keeps some of the rows. Since we represent a matrix as a list of rows,
that also fits with how this function is implemented. (Read the code;
you'll find a keep inside.) But APL people think about it the other way,
so when you read APL documentation, / is described as operating on the
last dimension (the columns), while **⌿** is described as operating on
rows. We were more than a month into this project before I understood
all this. You get long block names so it won't take you a month!

![](/snap-manual/assets/images/image1313.png){width="3.175in"
height="0.18333333333333332in"}![](/snap-manual/assets/images/image1314.png){width="2.9944444444444445in"
height="0.23333333333333334in"}![](/snap-manual/assets/images/image1315.png){width="1.1118055555555555in"
height="0.23333333333333334in"}Don't confuse this block with the reduce
block, whose APL symbol is also a slash. In that block, what comes to
the left of the slash is a dyadic combining function; it's the APL
equivalent of combine. This block is more nearly equivalent to keep. But
keep takes a predicate function as input, and calls the function for
each item of the second input. With compress, the predicate function, if
any, has already been called on all the items of the right input in
parallel, resulting in a vector of Boolean values. This is a typical APL
move; since hyperblocks are equivalent to an implicit map, it's easy to
make the vector of Booleans, because any scalar function, including
predicates, can be applied to a list instead of to a scalar. The reason
both blocks use the / character is that both of them reduce the size of
the input array, although in different ways.

![](/snap-manual/assets/images/image1316.png){width="5.875in"
height="2.9944444444444445in"}The reverse row order, reverse column
order, and transpose blocks form a group: the group of reflections of a
matrix. The APL symbols are all a circle with a line through it; the
lines are the different axes of reflection. So the reverse row order
block reverses which row is where; the reverse column order block
reverses which column is where; and the transpose block turns rows into
columns and vice versa:

Except for reverse row order, these work only on full arrays, not
ragged-right lists of lists, because the result of the other two would
be an array in which some rows had "holes": items 1 and 3 exist, but not
item 2. We don't have a representation for that. (In APL, all arrays are
full, so it's even more restrictive.)

### Higher order functions

The final category of function is operators---APL higher order
functions. APL has no explicit map function, because the hyperblock
capability serves much the same need. But APL2 did add an explicit map,
which we might get around to adding to the library next time around. Its
symbol is **¨** (diaeresis or umlaut).

The APL equivalent of keep is compress, but it's not a higher order
function. You create a vector of Booleans (0s and 1s, in APL) before
applying the function to the array you want to compress.

![](/snap-manual/assets/images/image1322.png){width="4.258333333333334in"
height="0.6131944444444445in"}But APL does have a higher order version
of combine:

![](/snap-manual/assets/images/image1326.png){width="6.683333333333334in"
height="1.0416666666666667in"}The reduce block works just like combine,
taking a dyadic function and a list. The / version translates each row
to a single value; the **⌿** version translates each column to a single
value. That's the only way to think about it from the perspective of
combining individual elements: you are adding up, or whatever the
function is, the numbers in a single row (/) or in a single column
(**⌿**). But APLers think of a matrix as made up of vectors, either row
vectors or column vectors. And if you think of what these blocks do as
adding vectors, rather than adding individual numbers, it's clear that
in

![](/snap-manual/assets/images/image1327.png){width="5.833333333333333in"
height="1.1in"}

![](/snap-manual/assets/images/image1328.png){width="4.808333333333334in"
height="1.1in"}the *vector* (10, 26, 42) is the sum of *column vectors*
(1, 5, 9)+(2, 6, 10)+(3, 7, 11)+(4, 8, 12). In pre-6.0 Snap*!*, we'd get
the same result this way:

mapping over the *rows* of the matrix, applying combine to each row.
Combining rows, reducing column vectors.\
The outer product block takes two arrays (vectors, typically) and a
dyadic scalar function as inputs. It reports an array whose rank is the
sum of the ranks of the inputs (so, typically a matrix), in which each
item is the result of applying the function to an atomic element of each
array. The third element of the second row of the result is the value
reported by the function with the second element of the left input and
the third element of the right input. (The APL symbol ◦. is pronounced
"jot dot.") The way to think about this block is "multiplication table"
from elementary school:

![](/snap-manual/assets/images/image1329.png){width="7.24in" height="1.52in"}

![](/snap-manual/assets/images/image1330.png){width="2.1666666666666665in"
height="0.24166666666666667in"}

![](/snap-manual/assets/images/image1331.png){width="2.6166666666666667in"
height="0.24166666666666667in"}

![](/snap-manual/assets/images/image1332.png){width="7.338611111111111in"
height="1.0069444444444444in"}The inner product block takes two matrices
and two operations as input. The number of columns in the left matrix
must equal the number of rows in the right matrix. When the two
operations are + and ×, this is the matrix multiplication familiar to
mathematicians:

But other operations can be used. One common inner product is ∨.∧ ("or
dot and") applied to Boolean matrices, to find rows and columns that
have corresponding items in common.

![](/snap-manual/assets/images/image1333.png){width="0.9583333333333334in"
height="0.18333333333333332in"}The printable block isn't an APL
function; it's an aid to exploring APL-in-Snap*!*. It transforms arrays
to a compact representation that still makes the structure clear:

![](/snap-manual/assets/images/image1334.png){width="5.997916666666667in"
height="0.3333333333333333in"}Experts will recognize this as the Lisp
representation of list structure,

Index

! block · 32.csv file · 134.json file · 134.txt file · 134\# variable ·
25\#1 · 69+ block · 22× block · 22≠ block · 20≤ block · 20≥ block · 20⚡
(lightning bolt) · 123Aa new clone of block · 77*A Programming Language*
· 148Abelson, Hal · 4About option · 107add comment option · 124, 125Add
scene... option · 111additive mixing · 144Advanced Placement Computer
Science Principles · 110AGPL · 107all but first blocks · 27all but first
of block · 49all but first of stream block · 26all but last blocks ·
27all of block · 28Alonzo · 9, 55anchor · 10anchor (in my block) ·
78animate block · 33animation · 12animation library · 33anonymous list ·
46Any (unevaluated) type · 72any of block · 28Any type · 60APL · 4, 58,
148APL character set · 149APL library · 35, 148APL2 · 149APL\\360 ·
148Arduino · 92arithmetic · 11array, dynamic · 49arrow, upward-pointing
· 63arrowheads · 46, 63, 69ask and wait block · 24ask block · 86assoc
block · 25association list · 88associative function · 51at block ·
19atan2 block · 20atomic data · 57attribute · 76attributes, list of ·
78audio comp library · 34Bbackground blocks · 19Backgrounds... option ·
112backspace key (keyboard editor) · 131Ball, Michael · 4bar chart block
· 28bar charts library · 28base case · 44BIGNUMS block · 32binary tree ·
47bitmap · 79, 112bitwise library · 36bjc.edc.org · 137Black Hole
problem · 139block · 6; command · 6; C-shaped · 7; hat · 6; predicate ·
12; reporter · 10; sprite-local · 75Block Editor · 41, 42, 59block label
· 102block library · 45, 110block picture option · 124block shapes · 40,
60block variable · 43block with no name · 32blockify option · 134blocks,
color of · 40Boole, George · 12Boolean · 12Boolean (unevaluated) type ·
72Boolean constant · 12box of ten crayons · 139box of twenty crayons ·
139break command · 99breakpoint · 17, 118Briggs, David · 145broadcast
and wait block · 125broadcast and wait block · 9broadcast block · 21,
23, 73, 125brown dot · 9Build Your Own Blocks · 40Burns, Scott ·
145button: pause · 17; recover · 39; visible stepping · 18CC programming
language · 68call block · 65, 68call w/continuation block · 97camera
icon · 126Cancel button · 129carriage return character · 20cascade
blocks · 26case-independent comparisons block · 33cases block · 28catch
block · 26, 99catch errors library · 31catenate block · 152catenate
vertically block · 152center of the stage · 22center x (in my block) ·
78center y (in my block) · 78Chandra, Kartik · 4change background block
· 22Change password... option · 113change pen block · 24, 29, 117,
140child class · 87children (in my block) · 78Church, Alonzo · 9class ·
85class/instance · 76clean up option · 125clear button · 129clicking on
a script · 122Clicking sound option · 116clone: permanent · 74;
temporary · 74clone of block · 89clones (in my block) · 78cloud (startup
option) · 136Cloud button · 37, 108cloud icon · 113cloud storage · 37CMY
· 138CMYK · 138codification support option · 117color at weight block ·
145color block · 140color chart · 147color from block · 29, 140color
nerds · 145color numbers · 29, 138, 139color of blocks · 40color palette
· 128color picker · 143color scales · 141color space · 138color theory ·
138Colors and Crayons library · 138colors library · 29columns of block ·
57combine block · 50combine block (APL) · 157command block · 6comment
box · 125compile menu option · 123compose block · 26compress block ·
156Computer Science Principles · 110cond in Lisp · 28conditional
library: multiple-branch · 28constant functions · 71constructors ·
47contained in block · 153context menu · 119context menu for the palette
background · 120context menus for palette blocks · 119continuation ·
93continuation passing style · 94Control palette · 7controls in the
Costumes tab · 126controls in the Sounds tab · 130controls on the stage
· 132control-shift-enter (keyboard editor) · 132copy of a list · 50CORS
· 92cors proxies · 92costume · 6, 8costume from text block · 31costume
with background block · 31costumes (in my block) · 78Costumes tab · 9,
126costumes, first class · 79Costumes... option · 112counter class ·
85CPS · 96crayon library · 31crayons · 29, 138, 139create var block ·
32create variables library · 32Cross-Origin Resource Sharing ·
92crossproduct · 70cs10.org · 137C-shaped block · 7, 67C-shaped slot ·
72CSV (comma-separated values) · 54CSV format · 20csv of block ·
57current block · 92current date or time · 92current location block ·
34current sprite · 122custom block in a script · 124custom? of block
block · 102cyan · 142Ddangling rotation · 10dangling? (in my block) ·
78dark candy apple red · 141data hiding · 73data structure · 47data
table · 88data type · 19, 59database library · 34date · 92Dave, Achal ·
4deal block · 150debugging · 118Debugging · 17deep copy of a list ·
50default value · 63define block · 102define of recursive procedure ·
104*definition (of block)* · 102definition of block · 101delegation ·
87Delete a variable · 14delete block definition... option · 120delete
option · 124, 128, 133delete var block · 32denim · 139design principle ·
46, 77devices · 91, 92dialog, input name · 42dimensions of block ·
57Dinsmore, Nathan · 4direction to block · 22Disable click-to-run option
· 117dispatch procedure · 85, 86, 88distance to block · 22dl (startup
option) · 136do in parallel block · 31does var exist block · 32down
arrow (keyboard editor) · 131Download source option · 108drag from
prototype · 43draggable checkbox · 122, 132dragging onto the arrowheads
· 69drop block · 155duplicate block definition... option · 120duplicate
option · 124, 128, 132dynamic array · 49Eeasing block · 33easing
function · 33edge color · 129edit option · 128, 133, 135edit... option ·
120editMode (startup option) · 137effect block · 19ellipse tool · 128,
129ellipsis · 63else block · 28else if block · 28empty input slots,
filling · 66, 68, 70enter key (keyboard editor) · 131equality of
complete structures · 149eraser tool · 128error block · 31error catching
library · 31escape key (keyboard editor) · 130Examples button ·
108Execute on slider change option · 115export block definition...
option · 120Export blocks... option · 110export option · 128, 133Export
project... option · 110export... option · 134, 136expression ·
11Extension blocks option · 115extract option · 124eyedropper tool ·
128, 129Ffactorial · 44, 71factorial · 32Fade blocks... option · 114fair
HSL · 145fair hue · 29, 141, 143, 146fair hue table · 146fair saturation
· 146fair value · 146Falkoff, Adin · 148false block · 19file icon menu ·
108fill color · 129Finch · 92find blocks... option · 120find first ·
50first class data · 148first class data type · 46ﬁrst class procedures
· 65ﬁrst class sprites · 73first word block · 27flag, green · 6Flat
design option · 116flat line ends option · 117flatten block · 152flatten
of block · 57floodfill tool, · 128focus (keyboard editor) · 131footprint
button · 117for block · 13, 19, 26, 64, 65for each block · 20for each
item block · 25For this sprite only · 15formal parameters · 69frequency
distribution analysis library · 34from color block · 29, 140,
142function, associative · 51function, higher order · 49, 148function,
mixed · 148, 151function, scalar · 55, 148functional programming style ·
48\
Ggeneric hat block · 6generic when · 6get blocks option · 128getter ·
76getter/setter library · 32glide block · 115global variable · 14, 15go
to block · 22grade down block · 154grade up block · 154graphics effect ·
19gray · 139, 141green flag · 6green flag button · 118green halo ·
123Guillén i Pelegay, Joan · 4Hhalo · 11, 123; red · 69hat block · 6,
41; generic · 6help... option · 119, 123help... option for custom block
· 119hexagonal blocks · 41, 60hexagonal shape · 12hide and show
primitives · 17hide blocks option · 120Hide blocks... option · 111hide
var block · 32hide variable block · 17hideControls (startup option) ·
137higher order function · 49, 70, 148, 157higher order procedure ·
66histogram · 34Hotchkiss. Kyle · 4HSL · 138, 143HSL color · 29HSL pen
color model option · 117HSV · 138, 142HTML (HyperText Markup Language) ·
91HTTP · 92HTTPS · 92, 126Hudson, Connor · 4hue · 141Huegle, Jadga ·
4Hummingbird · 92hyperblocks · 148Hyperblocks · 55Hz for block · 34IIBM
System/360 · 148ice cream · 109icons in title text · 64id block · 71id
option · 22identical to · 20identity function · 71if block · 12if do and
pause all block · 26if else block · 71if else reporter block · 19ignore
block · 26imperative programming style · 48import... option ·
134Import... option · 110in front of block · 49in front of stream block
· 26index of block (APL) · 152index variable · 19indigo · 141infinite
precision integer library · 32Ingalls, Dan · 4inherit block ·
77inheritance · 73, 87inner product block · 158input · 6input list · 68,
69input name · 69input name dialog · 42, 59Input sliders option ·
115input-type shapes · 59instance · 85integers block · 152interaction ·
15internal variable · 63iota block · 152is \_ a \_ ? block · 19is flag
block · 20is identical to · 20item 1 of block · 49item 1 of stream block
· 26item block · 148item of block · 56iteration library · 26Iverson,
Kenneth E. · 4, 148Jjaggies · 79Java programming language · 68JavaScript
· 19, 143JavaScript extensions option · 115JavaScript function block ·
115jigsaw-piece blocks · 40, 60join block · 102JSON (JavaScript Object
Notation) file · 54JSON format · 20json of block · 57jukebox · 9KKay,
Alan · 4key:value: block · 34keyboard editing button · 123keyboard
editor · 130keyboard shortcuts · 108key-value pair · 88LL\*a\*b\* ·
143L\*u\*v\* · 143label, block · 102lambda · 67lang= (startup option) ·
137Language... option · 114large option · 134last blocks · 27layout,
window · 5Leap Motion · 92left arrow (keyboard editor) · 131Lego NXT ·
92length block · 148length of block · 57length of text block · 22letter
(1) of (world) block · 27lexical scope · 85lg option · 22Libraries...
option · 25, 111library: block · 45license · 107Lieberman, Henry ·
77Lifelong Kindergarten Group · 4lightness · 143lightness option ·
117lightning bolt symbol · 25, 123line break in block · 64line drawing
tool · 128lines of block · 57linked list · 49Lisp · 58list ➔ sentence
block · 27list ➔ word block · 27list block · 46list comprehension
library · 35list copy · 50list library · 25list of procedures · 70List
type · 60list view · 51list, linked · 49list, multi-dimensional ·
55listify block · 34lists of lists · 47little people · 44, 96loading
saved projects · 38local state · 73local variables · 19location-pin ·
15Login... option · 113Logo tradition · 27Logout option · 113Long form
input dialog option · 116long input name dialog · 59Mmacros · 105magenta
· 141, 142Make a block · 40Make a block button · 119make a block...
option · 126Make a list · 46Make a variable · 14make internal variable
visible · 63Maloney, John · 4map block · 50, 65map library · 35map over
stream block · 26map to code block · 117map-pin symbol · 75maroon ·
141Massachusetts Institute of Technology · 4mathematicians · 148matrices
· 148matrix multiplication · 158max block · 20McCarthy, John · 4media
computation · 55, 149Media Lab · 4memory · 16menus library · 36message ·
73message passing · 73, 86method · 73, 75, 86methods table ·
88microphone · 82microphone block · 82middle option · 127min block ·
20mirror sites · 137MIT Artificial Intelligence Lab · 4MIT Media Lab ·
4mix block · 140mix colors block · 29mixed function · 148, 151mixing
paints · 144Modrow, Eckart · 121monadic negation operator · 22Morphic ·
4Motyashov, Ivan · 4mouse position block · 21move option · 133MQTT
library · 36multiline block · 33multimap block · 25multiple input ·
63multiple-branch conditional library · 28multiplication table ·
158multiplication, matrix · 158mutation · 48mutators · 47my block · 73,
76my blocks block · 102my categories block · 102Nname (in my block) ·
78name box · 122name, input · 69nearest color number · 142neg option ·
22negation operator · 22neighbors (in my block) · 78nested calls ·
70Nesting Sprites · 10New category... option · 111new costume block ·
80new line character · 64New option · 108New scene option · 111new sound
block · 84new sprite button · 8newline character · 20Nintendo ·
92noExitWarning (startup option) · 137nonlocal exit · 99normal option ·
134normal people · 145noRun (startup option) · 137Number type ·
60numbers from block · 20Oobject block · 73Object Logo · 77object
oriented programming · 73, 85Object type · 60objects, building
explicitly · 85of block (operators) · 22of block (sensing) · 24, 106of
costume block · 79open (startup option) · 136Open in Community Site
option · 113Open... option · 108operator (APL) · 148, 157orange oval ·
13other clones (in my block) · 78other sprites (in my block) · 78outer
product block · 158outlined ellipse tool · 128outlined rectangle tool ·
128oval blocks · 40, 60Ppaint brush icon · 126Paint Editor · 126Paint
Editor window · 128paintbrush tool · 128paints · 144Paleolithic ·
150palette · 6palette area · 119palette background · 120Parallax S2 ·
92parallelism · 8, 48parallelization library · 31parent (in my block) ·
78parent attribute · 77parent class · 87parent... option · 136*Parsons
problems* · 117parts (in my block) · 78parts (of nested sprite) ·
10pause all block · 17, 118pause button · 17, 118pen block · 24, 29,
117, 140pen down? block · 19pen trails block · 18pen trails option ·
135pen vectors block · 18permanent clone · 74, 136physical devices ·
91pic... option · 135, 136picture of script · 124picture with speech
balloon · 124picture, smart · 124pink · 141pivot option · 133pixel ·
79pixel, screen · 19pixels library · 27Plain prototype labels option ·
116play block · 34play sound block · 9*playing sounds* · 9plot bar chart
block · 28plot sound block · 34point towards block · 22points as inputs
· 22polymorphism · 75position block · 21, 33Predicate block ·
12preloading a project · 136present (startup option) · 136presentation
mode button · 118primitive block within a script · 123printable block ·
27, 158procedure · 12, 66Procedure type · 72procedures as data ·
9product block · 22, 28project control buttons · 118Project notes option
· 108Prolog · 58prototype · 41prototyping · 76, 88pulldown input ·
61pumpkin · 139purple · 142Rrainbow · 141rank · 148rank of block · 57,
151ravel block · 149raw data... option · 134ray length block ·
22read-only pulldown input · 61receivers... option · 125recover button ·
39rectangle tool · 128recursion · 43recursive call · 68recursive
operator · 71recursive procedure using define · 104red halo · 68, 69,
123redo button · 123redrop option · 125reduce block · 156, 157Reference
manual option · 108reflectance graph · 144relabel option · 20relabel...
option · 123, 124release option · 136Remove a category... option ·
111remove duplicates from block · 25rename option · 128renaming
variables · 15**repeat** block · 7, 67repeat blocks · 26repeat until
block · 12report block · 44Reporter block · 10reporter **if** block ·
12reporter if else block · 19reporters, recursive · 44Reset Password...
option · 113reshape block · 56, 148, 151Restore unsaved project option ·
39result pic... option · 124, 125reverse block · 156reverse columns
block · 156Reynolds, Ian · 4RGB · 138RGBA option · 19right arrow
(keyboard editor) · 131ring, gray · 49, 66, 68ringify · 66ringify option
· 124Roberts, Eric · 44robots · 91, 92rods and cones · 141roll block ·
150Romagosa, Bernat · 4rotation buttons · 122rotation point tool · 128,
129rotation x (in my block) · 78rotation y (in my block) · 78run
(startup option) · 136run block · 65, 68run w/continuation · 99Ssafely
try block · 31sample · 82saturation · 143Save as... option · 110Save
option · 110save your project in the cloud · 37scalar = block ·
150scalar function · 55, 148, 150scalar join block · 150scenes · 111,
136Scenes... option · 111Scheme · 4Scheme number block · 32SciSnap*!* ·
121SciSnap*!* library · 36scope: lexical · 85Scratch · 5, 9, 40, 46, 47,
48, 59Scratch Team · 4screen pixel · 19script · 5script pic · 43script
pic... option · 124**script variables** block · 15, 19, 86scripting area
· 6, 122scripting area background context menu · 125scripts pic...
option · 126search bar · 109search button · 119secrets · 107select block
· 156selectors · 47self (in my block) · 78senders... option · 125sensors
· 91sentence ➔ list block · 27sentence block · 25sentence library ·
27sentence➔list block · 25separator: menu · 62sepia · 139serial-ports
library · 33Servilla, Deborah · 4set \_ of block \_ to \_ block · 102set
background block · 22**set** block · 15set flag block · 20, 32set pen
block · 24, 29, 117, 139, 140set pen to crayon block · 30, 139set value
block · 32set var block · 32setter · 76setting block · 32settings icon ·
114shade · 141shallow copy of a list · 50shape of block · 151shapes of
blocks · 40shift-arrow keys (keyboard editor) · 131Shift-click (keyboard
editor) · 130shift-click on block · 124shift-clicking · 107shift-enter
(keyboard editor) · 130Shift-tab (keyboard editor) · 130shortcut · 126,
135shortcuts: keyboard · 108show all option · 135Show buttons option ·
117Show categories option · 117show option · 136show primitives option ·
121show stream block · 26show var block · 32show variable block ·
17shown? block · 19shrink/grow button · 118sieve block · 26sign option ·
22Signada library · 36signum block · 150Signup... option · 113simulation
· 73sine wave · 83Single palette option · 117single stepping · 18slider:
stepping speed · 18slider max... option · 134slider min... option ·
134slider option · 134Smalltalk · 58smart picture · 124snap block ·
27snap option · 22Snap*!* logo menu · 107Snap*!* manual · 124Snap*!*
program · 5Snap! website option · 108snap.berkeley.edu · 108solid
ellipse tool · 128solid rectangle tool · 128sophistication · 72sort
block · 25sound · 82sound manipulation library · 34sounds (in my block)
· 78sounds, first class · 79Sounds... option · 113source files for
Snap*!* · 108space key (keyboard editor) · 131speak block · 31special
form · 72spectral colors · 141speech balloon · 124speech synthesis
library · 31split block · 20, 91split by blocks block · 101split by line
block · 57spreadsheet · 149sprite · 6, 73sprite appearance and behavior
controls · 122sprite corral · 8, 135sprite creation buttons · 135sprite
nesting · 10sprite-local block · 75sprite-local variable · 14, 15square
stop sign · 6squiral · 13stack of blocks · 6stage · 6, 73stage (in my
block) · 78stage blocks · 19Stage resizing buttons · 118Stage size...
option · 114Stanford Artificial Intelligence Lab · 4starting Snap*!* ·
136Steele, Guy · 4stop all block · 118stop block · 22stop block block ·
44stop button · 118stop script block · 44stop sign · 8stop sign, square
· 6Stream block · 26stream library · 26Stream with numbers from block ·
26stretch block · 80string processing library · 33*Structure and
Interpretation of Computer Programs* · 4submenu · 62substring block ·
33subtractive mixing · 144sum block · 22, 28Super-Awesome Sylvia ·
92Sussman, Gerald J. · 4Sussman, Julie · 4svg... option · 135switch in C
· 28symbols in title text · 64synchronous rotation · 10system
getter/setter library · 32Ttab character · 20tab key (keyboard editor) ·
130table · 158table view · 51take block · 155teal · 142temporary clone ·
74, 133Terms of Service · 38termwise extension · 148text costume library
· 31text input · 9Text type · 60text-based language · 117text-to-speech
library · 31*Thinking Recursively* · 44thread · 100thread block ·
100Thread safe scripts option · 116throw block · 26thumbnail · 122time ·
92tint · 141tip option · 127title text · 42to block · 22tool bar · 6tool
bar features · 107touching block · 22transient variable · 16translation
· 114translations option · 43transparency · 30, 79, 140transparent paint
· 129transpose block · 156true block · 19TuneScope library · 36Turbo
mode option · 115turtle costume · 126Turtle costume · 9turtle's rotation
point · 127two-item (x,y) lists · 22type · 19UUndefined! blocks ·
120Undelete sprites... option · 113undo button · 123, 129undrop option ·
125unevaluated procedure types · 61unevaluated type · 72Unicode ·
149Uniform Resource Locator · 91unringify · 66, 86unringify option ·
124Unused blocks... option · 111up arrow (keyboard editor) · 131upvar ·
64upward-pointing arrow · 63url block · 34, 91USE BIGNUMS block · 32use
case-independent comparisons block · 33user interface elements · 107user
name · 37Vvalue · 143value at key block · 34var block · 32variable · 13,
76; block · 43; global · 14; renaming · 15; script-local · 15;
sprite-local · 14, 15; transient · 16variable watcher · 14variable-input
slot · 68variables in ring slots · 66variables library · 32variables,
local · 19variadic · 22variadic input · 46, 63variadic library ·
28vector · 112vector editor · 129vectors · 148video block · 22video on
block · 80violet · 142visible stepping · 45, 117visible stepping button
· 18visible stepping option · 115visual representation of a sentence ·
27Wwardrobe · 9warp block · 19, 123watcher · 15Water Color Bot · 92web
services library · 34when I am block · 23when I am stopped script ·
23when I receive block · 23when, generic · 6white · 142white background
· 141whitespace · 20Wiimote · 92window layout · 5with inputs · 66word ➔
list block · 27word and sentence library · 27world map library · 35World
Wide Web · 91write block · 18writeable pulldown inputs · 61XX position ·
11X11/W3C color names · 29Xerox PARC · 4YY position · 11yield block ·
100Yuan, Yuan · 4Zzebra coloring · 11Zoom blocks\... option · 114

[^1]: One of the hat blocks, the generic "when anything" block , is
    subtly different from the others. When the stop sign is clicked, or
    when a project or sprite is loaded, this block doesn't test whether
    the condition in its hexagonal input slot is true, so the script
    beneath it will not run, until some *other* script in the project
    runs (because, for example, you click the green flag). When generic
    when blocks are disabled, the stop sign will be square instead of
    octagonal.

[^2]: The hide variable and show variable blocks can also be used to
    hide and show primitives in the palette. The pulldown menu doesn't
    include primitive blocks, but there's a generally useful technique
    to give a block input values it wasn't expecting using run or
    call:![](/snap-manual/assets/images/image120.png){width="3.9375in"
    height="0.3888888888888889in"}

    In order to use a block as an input this way, you must explicitly
    put a ring around it, by right-clicking on it and choosing ringify.
    More about rings in Chapter VI.

[^3]: This use of the word "prototype" is unrelated to the *prototyping
    object oriented programming* discussed later.

[^4]: Note to users of earlier versions: From the beginning, there has
    been a tension in our work between the desire to provide tools such
    as for (used in this example) and the higher order functions
    introduced on the next page as primitives, to be used as easily as
    other primitives, and the desire to show how readily such tools can
    be implemented in Snap*!* itself. This is one instance of our
    general pedagogic understanding that learners should both use
    abstractions and be permitted to see beneath the abstraction
    barrier. Until version 5.0, we used the uneasy compromise of a
    library of tools written in Snap*!* and easily, but not easily
    enough, loaded into a project. By *not* loading the tools, users or
    teachers could explore how to program them. In 5.0 we made them true
    primitives, partly because that's what some of us wanted all along
    and partly because of the increasing importance of fast performance
    as we explore "big data" and media computation. But this is not the
    end of the story for us. In a later version, after we get the design
    firmed up, we intend to introduce "hybrid" primitives, implemented
    in high speed Javascript but with an "Edit" option that will open,
    not the primitive implementation, but the version written in
    Snap*!*. The trick is to ensure that this can be done without
    dramatically slowing users' projects.

[^5]: In Scratch, every block that takes a Text-type input has a default
    value that makes the rectangles for text wider than tall. The blocks
    that aren't specifically about text either are of Number type or
    have no default value, so those rectangles are taller than wide. At
    ﬁrst some of us (bh) thought that Text was a separate type that
    always had a wide input slot; it turns out that this isn't true in
    Scratch (delete the default text and the rectangle narrows), but we
    thought it a good idea anyway, so we allow Text-shaped boxes even
    for empty input slots. (This is why Text comes just above Any in the
    input type selection box.)

[^6]: There is a primitive id function in the menu of the sqrt of block,
    but we think seeing its (very simple) implementation will make this
    example easier to understand.

[^7]: Some languages popular in the "real world" today, such as
    JavaScript, claim to use prototyping, but their object system is
    much more complicated than what we are describing (we're guessing
    it's because they were designed by people too familiar with
    class/instance programming); that has, in some circles, given
    prototyping a bad name. Our prototyping design comes from Object
    Logo, and before that, from Henry Lieberman. \[Lieberman, H., Using
    Prototypical Objects to Implement Shared Behavior in Object-Oriented
    Systems, First Conference on Object-Oriented Programming Languages,
    Systems, and Applications \[OOPSLA-86\], ACM SigCHI, Portland, OR,
    September, 1986. Also in *Object-Oriented Computing,* Gerald
    Peterson, Ed., IEEE Computer Society Press, 1987.\]

[^8]: *Neighbors* are all other sprites whose bounding boxes intersect

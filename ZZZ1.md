                ---
                title: 1. Chapter 1: ![](/snap-manual/assets/images/image3.png){width="5.477777777777778in" height="4.501388888888889in"} Table of Contents {#table-of-contents .TOCHeading}

                layout: home
                has_children: true
                has_toc: false
                nav_order: 2
                ---


I\. Blocks, Scripts, and Sprites 5

Hat Blocks and Command Blocks 6

A. Sprites and Parallelism 8

Costumes and Sounds 8

Inter-Sprite Communication with Broadcast 9

B. Nesting Sprites: Anchors and Parts 10

C. Reporter Blocks and Expressions 10

D. Predicates and Conditional Evaluation 12

E. Variables 13

Global Variables 14

Script Variables 15

Renaming variables 15

Transient variables 16

F. Debugging 17

The pause button 17

Breakpoints: the pause all block 17

Visible stepping 18

G. Etcetera 18

H. Libraries 25

II\. Saving and Loading Projects and Media 37

A. Local Storage 37

B. Creating a Cloud Account 37

C. Saving to the Cloud 38

D. Loading Saved Projects 38

E. **If you lose your project, do this first!** 39

F. Private and Public Projects 39

III\. Building a Block 40

A. Simple Blocks 40

Custom Blocks with Inputs 42

Editing Block Properties 43

B. Recursion 43

C. Block Libraries 44

D. Custom blocks and Visible Stepping 45

IV\. First class lists 46

A. The list Block 46

B. Lists of Lists 47

C. Functional and Imperative List Programming 48

D. Higher Order List Operations and Rings 49

E. Table View vs. List View 51

Comma-Separated Values 54

Multi-dimensional lists and JSON 54

F. Hyperblocks 55

V. Typed Inputs 59

A. Scratch's Type Notation 59

B. The Snap! Input Type Dialog 59

Procedure Types 60

Pulldown inputs 61

Input variants 63

Prototype Hints 64

Title Text and Symbols 64

VI\. Procedures as Data 65

A. Call and Run 65

Call/Run with inputs 65

Variables in Ring Slots 66

B. Writing Higher Order Procedures 66

Recursive Calls to Multiple-Input Blocks 68

C. Formal Parameters 69

D. Procedures as Data 70

E. Special Forms 71

Special Forms in Scratch 72

VII\. Object Oriented Programming with Sprites 73

A. First Class Sprites 73

B. Permanent and Temporary Clones 74

C. Sending Messages to Sprites 74

Polymorphism 75

D. Local State in Sprites: Variables and Attributes 76

E. Prototyping: Parents and Children 76

F. Inheritance by Delegation 77

G. List of attributes 78

H. First Class Costumes and Sounds 79

Media Computation with Costumes 79

Media Computation with Sounds 82

VIII\. OOP with Procedures 85

A. Local State with Script Variables 85

B. Messages and Dispatch Procedures 86

C. Inheritance via Delegation 87

D. An Implementation of Prototyping OOP 88

IX\. The Outside World 91

A. The World Wide Web 91

B. Hardware Devices 92

C. Date and Time 92

X. Continuations 93

A. Continuation Passing Style 94

B. Call/Run w/Continuation 97

Nonlocal exit 99

XI\. Metaprogramming 101

A. Reading a block 101

B. Writing a block 102

C. Macros 105

XII\. User Interface Elements 107

A. Tool Bar Features 107

The Snap*!* Logo Menu 107

The File Menu 108

The Cloud Menu 113

The Settings Menu 114

Visible Stepping Controls 117

Stage Resizing Buttons 118

Project Control Buttons 118

B. The Palette Area 119

Buttons in the Palette 119

Context Menus for Palette Blocks 119

Context Menu for the Palette Background 120

C. The Scripting Area 122

Sprite Appearance and Behavior Controls 122

Scripting Area Tabs 122

Scripts and Blocks Within Scripts 122

Controls in the Costumes Tab 126

The Paint Editor 128

Controls in the Sounds Tab 130

D. Keyboard Editing 130

Starting and stopping the keyboard editor 130

Navigating in the keyboard editor 130

Editing a script 131

Running the selected script 132

E. Controls on the Stage 132

Sprites 132

Variable watchers 134

The stage itself 135

F. The Sprite Corral and Sprite Creation Buttons 135

G. Preloading a Project when Starting Snap! 136

H. Mirror Sites 137

Appendix A. Snap*!* color library 138

Introduction to Color 138

Crayons and Color Numbers 139

Perceptual Spaces: HSV and HSL 142

Mixing Colors 144

tl;dr 145

Subappendix: Geeky details on fair hue 145

Subappendix: Geeky details on color numbers 146

Appendix B. APL features 148

Boolean values 150

Scalar functions 150

Mixed functions 151

Higher order functions 157

Index ............................................................. 159

Copyright © 2020 Jens Mönig and Brian Harvey.

![Macintosh
HD:Users:bh:Desktop:cc.png](/snap-manual/assets/images/image4.png){width="0.6111111111111112in"
height="0.2152777777777778in"} This work is licensed under a [Creative
Commons Attribution-NonCommercial-ShareAlike 4.0 International
License](https://creativecommons.org/licenses/by-nc-sa/4.0/).

Acknowledgements {#acknowledgements .TOCHeading}
================

**[W]{.smallcaps}**e have been extremely lucky in our mentors. Jens cut
his teeth in the company of the Smalltalk pioneers: Alan Kay, Dan
Ingalls, and the rest of the gang who invented personal computing and
object oriented programming in the great days of Xerox PARC. He worked
with John Maloney, of the MIT Scratch Team, who developed the Morphic
graphics framework that's still at the heart of Snap*!*.

***The brilliant design of Scratch, from the Lifelong Kindergarten Group
at the MIT Media Lab, is crucial to* Snap*!. Our earlier version, BYOB,
was a direct modification of the Scratch source code.* Snap*! is a
complete rewrite, but its code structure and its user interface remain
deeply indebted to Scratch. And the Scratch Team, who could have seen us
as rivals, have been entirely supportive and welcoming to us.***

Brian grew up at the MIT and Stanford Artificial Intelligence Labs,
learning from Lisp inventor John McCarthy, Scheme inventors Gerald J.
Sussman and Guy Steele, and the authors of the world's best computer
science book, *Structure and Interpretation of Computer Programs,* Hal
Abelson and Gerald J. Sussman with Julie Sussman, among many other
heroes of computer science. (Brian was also lucky enough, while in high
school, to meet Kenneth Iverson, the inventor of APL.)

***In the glory days of the MIT Logo Lab, we used to say, "Logo is Lisp
disguised as BASIC." Now, with its first class procedures, lexical
scope, and first class continuations,* Snap*! is Scheme disguised as
Scratch.***

Four people have made such massive contributions to the implementation
of Snap*!* that we have officially declared them members of the team:
Michael Ball and Bernat Romagosa, in addition to contributions
throughout the project, have primary responsibility for the web site and
cloud storage. Joan Guillén i Pelegay has contributed very careful and
wise analysis of outstanding issues, including help in taming the
management of translations to non-English languages. Jadga Hügle, has
energetically contributed to online mini-courses about Snap*!* and
leading workshops for kids and for adults. Jens, Jadga, and Bernat are
paid to work on Snap*!* by SAP, which also supports our computing needs.

We have been fortunate to get to know an amazing group of brilliant
middle school(!) and high school students through the Scratch Advanced
Topics forum, several of whom (since grown up) have contributed code to
Snap*!*: Kartik Chandra, Nathan Dinsmore, Connor Hudson, Ian Reynolds,
and Deborah Servilla. Many more have contributed ideas and alpha-testing
bug reports. UC Berkeley students who've contributed code include Achal
Dave. Kyle Hotchkiss, Ivan Motyashov, and Yuan Yuan. Contributors of
translations are too numerous to list here, but they're in the
"About..." box in Snap*!* itself.

This material is based upon work supported in part by the National
Science Foundation under Grants No[.]{.smallcaps} 1138596, 1143566, and
1441075; and in part by MioSoft, Arduino.org, SAP, and YC Research. Any
opinions, findings, and conclusions or recommendations expressed in this
material are those of the author(s) and do not necessarily reflect the
views of the National Science Foundation or other funders.

[\
]{.smallcaps}**[Snap*!* Reference Manual]{.underline}**

**Version 8.0**

Snap*!* (formerly BYOB) is an extended reimplementation of Scratch
([http://scratch.mit.edu]{.underline}) that allows you to Build Your Own
Blocks. It also features ﬁrst class lists, ﬁrst class procedures, first
class sprites, first class costumes, first class sounds, and first class
continuations. These added capabilities make it suitable for a serious
introduction to computer science for high school or college students.

In this manual we sometimes make reference to Scratch, e.g., to explain
how some Snap*!* feature extends something familiar in Scratch. It's
very helpful to have some experience with Scratch before reading this
manual, but not essential.

To run Snap*!*[,]{.smallcaps} open a browser window and connect to
http://snap.berkeley.edu/run. The Snap*!* community web site at
http://snap.berkeley.edu is not part of this manual's scope.

Blocks, Scripts, and Sprites

---
title: 56 Tool Bar Features

layout: home
has_children: false
has_toc: true
nav_order: 57
---


Holding down the Shift key while clicking on any of the menu buttons
gives access to an extended menu with options, shown in red, that are
experimental or for use by the developers. We're not listing those extra
options here because they change frequently and you shouldn't rely on
them. But they're not secrets.

### The Snap*!* Logo Menu

The Snap*!* logo at the left end of the tool bar is clickable. It shows
a menu of options about Snap*!* itself:

![](/snap-manual/assets/images/image988.png){width="2.3292213473315835in"
height="1.02in"}

The About option displays information about Snap*!* itself, including
version numbers for the source modules, the implementors, and the
license (AGPL: you can do anything with it except create proprietary
versions, basically).

The Reference manual option downloads a copy of the latest revision of
this manual in PDF format.

The Snap! website option opens a browser window pointing to
snap.berkeley.edu, the web site for Snap*!*.

The Download source option opens a browser window displaying the Github
repository of the source files for Snap*!*. At the bottom of the page
are links to download the latest official release. Or you can navigate
around the site to find the current development version. You can read
the code to learn how Snap*!* is implemented, host a copy on your own
computer (this is one way to keep working while on an airplane), or make
a modified version with customized features. (However, access to cloud
accounts is limited to the official version hosted at Berkeley.)

### The File Menu

![](/snap-manual/assets/images/image384.png){width="0.3194444444444444in"
height="0.18055555555555555in"}The file icon shows a menu mostly about
saving and loading projects. You may not see all these options, if you
don't have multiple sprites, scenes, custom blocks, and custom
categories.

The Notes option opens a window in which you can type notes about the
project: How to use it, what it does, whose project you modified to
create it, if any, what other sources of ideas you used, or any other
information about the project. This text is saved with the project, and
is useful if you share it with other users.

The New option starts a new, empty project. Any project you were working
on before disappears, so you are asked to confirm that this is really
what you want. (It disappears only from the current working Snap*!*
window; you should save the current project, if you want to keep it,
before using New.)

Note the \^N at the end of the line. This indicates that you can type
control-N as a shortcut for this menu item. Alas, this is not the case
in every browser. Some Mac browsers require command-N (⌘N) instead,
while others open a new browser window instead of a new project. You'll
have to experiment. In general, the keyboard shortcuts in Snap*!* are
the standard ones you expect in other software.

![](/snap-manual/assets/images/image989.png){width="2.8895833333333334in"
height="2.097916666666667in"}The Open... option shows a project open
dialog box in which you can choose a project to open:

In this dialog, the three large buttons at the left select a source of
projects: Cloud means your Snap*!* account's cloud storage. Examples
means a collection of sample projects we provide. Computer is for
projects saved on your own computer; when you click it, this dialog is
replaced with your computer's system dialog for opening files. The text
box to the right of those buttons is an alphabetical listing of projects
from that source; selecting a project by clicking shows its thumbnail (a
picture of the stage when it was saved) and its project notes at the
right.

![](/snap-manual/assets/images/image990.png){width="2.7243055555555555in"
height="1.9777777777777779in"}The search bar at the top can be used to
find a project by name or text in the project notes. So in this example:

![](/snap-manual/assets/images/image991.png){width="2.723611111111111in"
height="1.9777777777777779in"}I was looking for my ice cream projects
and typed "crea" in the search bar, then wondered why "ferris" matched.
But then when I clicked on ferris I saw this:

My search matched the word "re*crea*te" in the project notes.

The six buttons at the bottom select an action to perform on the
selected project. In the top row, Recover looks in your cloud account
for older versions of the chosen project. ***If your project is damaged,
don't keep saving broken versions! Use Recover first thing.*** You will
see a list of saved versions; choose one to open it. Typically, you'll
see the most recent version before the last save, and the newest version
saved before today. Then come buttons Share/Unshare and
Publish/Unpublish. The labelling of the buttons depends on your
project's publication status. If a project is neither shared nor
published (the ones in lightface type in the project list), it is
private and nobody can see it except you, its owner. If it is shared
(boldface in the project list), then when you open it you'll see a URL
like this one:

https://snap.berkeley.edu/snapsource/snap.html\#present:Username=bh&ProjectName=count%20change

but with your username and project name. ("%20" in the project name
represents a space, which can't be part of a URL.) Anyone who knows this
URL can see your project. Finally, if your project is ***published***
(***bold italic*** in the list), then your project is shown on the
Snap*!* web site for all the world to see. (In all of these cases, you
are the only one who can *write* to (save) your project. If another user
saves it, a separate copy will be saved in that user's account. Projects
remember the history of who created the original version and any other
"remix" versions along the way.

In the second row, the first button, Open, loads the project into
Snap*!* and closes the dialog box. The next button (if Cloud is the
source) is Delete, and if clicked it deletes the selected project.
Finally, the Cancel button closes the dialog box without opening a
project. (It does not undo any sharing, unsharing, or deletion you've
done.)

Back to the File menu, the Save menu option saves the project to the
same source and same name that was used when opening the project. (If
you opened another user's shared project or an example project, the
project will be saved to your own cloud account. You must be logged in
to save to the cloud.)

![](/snap-manual/assets/images/image992.png){width="3.236111111111111in"
height="2.3493055555555555in"}The Save as... menu option opens a dialog
box in which you can specify where to save the project:

This is much like the Open dialog, except for the horizontal text box at
the top, into which you type a name for the project. You can also
publish, unpublish, share, unshare, and delete projects from here. There
is no Recover button.

The Import... menu option is for bringing some external resource into
the current project, or it can load an entirely separate project, from
your local disk. You can import costumes (any picture format that your
browser supports), sounds (again, any format supported by your browser),
and block libraries or sprites (XML format, previously exported from
Snap*!* itself). Imported costumes and sounds will belong to the
currently selected sprite; imported blocks are global (for all sprites).
Using the Import option is equivalent to dragging the file from your
desktop onto the Snap*!* window.

Depending on your browser, the Export project... option either directly
saves to your disk or opens a new browser tab containing your complete
project in XML notation (a plain text format). You can then use the
browser's Save feature to save the project as an XML file, which should
be named *something*.xml so that Snap*!* will recognize it as a project
when you later drag it onto a Snap*!* window. This is an alternative to
saving the project to your cloud account: keeping it on your own
computer. It is equivalent to choosing Computer from the Save dialog
described earlier.

The Export summary... option creates a web page, in HTML, with all of
the information about your project: its name, its project notes, a
picture of what's on its stage, definitions of global blocks, and then
per-sprite information: name, wardrobe (list of costumes), and local
variables and block definitions. The page can be converted to PDF by the
browser; it's intended to meet the documentation requirements of the
Advanced Placement Computer Science Principles create task.

The Export blocks... option is used to create a block library. It
presents a list of all the global (for all sprites) blocks in your
project, and lets you select which to export. It then opens a browser
tab with those blocks in XML format, or stores directly to your local
disk, as with the Export project option. Block libraries can be imported
with the Import option or by dragging the file onto the Snap*!* window.
This option is shown only if you have defined custom blocks.

The Unused blocks... option presents a listing of all the global custom
blocks in your project that aren't used anywhere, and offers to delete
them. As with Export blocks, you can choose a subset to delete with
checkboxes. This option is shown only if you have defined custom blocks.

The Hide blocks... option shows *all* blocks, including primitives, with
checkboxes. This option does not remove any blocks from your project,
but it does hide selected block in your palette. The purpose of the
option is to allow teachers to present students with a simplified
Snap*!* with some features effectively removed. The hiddenness of
primitives is saved with each project, so students can load a shared
project and see just the desired blocks. But users can always unhide
blocks by choosing this option and unclicking all the checkboxes.
(Right-click in the background of the dialog box to get a menu from
which you can check all boxes or uncheck all boxes.)

The New category... option allows you to add your own categories to the
palette. It opens a dialog box in which you specify a name *and a color*
for the category. (A lighter version of the same color will be used for
the zebra coloring feature.)

The Remove a category... option appears only if you've created custom
categories. It opens a very small, easy-to-miss menu of category names
just under the file icon in the menu bar. If you remove a category that
has blocks in it, all those blocks are also removed.

![](/snap-manual/assets/images/image993.png){width="1.1666666666666667in"
height="0.19791666666666666in"}The next group of options concern the
*scenes* feature, new in Snap*!* 7.0. A scene is a complete project,
with its own stage, sprites, and code, but several can be merged into
one project, using the block to bring another scene onscreen. The
Scenes... option presents a menu of all the scenes in your project,
where the File menu was before you clicked it. The New scene option
creates a new, empty scene, which you can rename as you like from its
context menu. Add scene... is like Import... but for scenes. (A complete
project can be imported as a scene into another project, so you have to
specify that you're importing the project *as a scene* rather than
replacing the current project.)

The Libraries... option presents a menu of useful, optional block
libraries:![](/snap-manual/assets/images/image385.png){width="7.401388888888889in"
height="3.238888888888889in"}

When you click on the one-line description of a library, you are shown
the actual blocks in the library and a longer explanation of its
purpose. You can browse the libraries to find one that will satisfy your
needs. The libraries are described in detail in Section I.H, page 25.

![](/snap-manual/assets/images/image994.png){width="4.28125in"
height="3.2395833333333335in"}The Costumes... option opens a browser
into the costume library:

You can import a single costume by clicking it and then clicking the
Import button. Alternatively, you can import more than one costume by
double-clicking each one, and then clicking Cancel when done. Notice
that some costumes are tagged with "svg" in this picture; those are
vector-format costumes that are not (yet) editable within Snap*!*.

If you have the stage selected in the sprite corral, rather than a
sprite, the Costumes... option changes to a Backgrounds... option, with
different choices in the browser:

![](/snap-manual/assets/images/image995.png){width="4.28125in"
height="3.2395833333333335in"}The costume and background libraries
include both bitmap (go jagged if enlarged) and vector (enlarge
smoothly) images. Thanks to Scratch 2.0/3.0 for most of these images!
Some older browsers refuse to import a vector image, but instead convert
it to bitmap.

The Sounds... option opens the third kind of media browser:

![](/snap-manual/assets/images/image996.png){width="4.28125in"
height="3.2395833333333335in"}The Play buttons can be used to preview
the sounds.

Finally, the Undelete sprites... option appears only if you have deleted
a sprite; it allows you to recover a sprite that was deleted by accident
(perhaps intending to delete only a costume).

### The Cloud Menu

![](/snap-manual/assets/images/image997.png){width="1.4368055555555554in"
height="0.7597222222222222in"}![](/snap-manual/assets/images/image998.png){width="0.2916666666666667in"
height="0.16666666666666666in"}![](/snap-manual/assets/images/image489.png){width="0.6645833333333333in"
height="0.1673611111111111in"}The cloud icon shows a menu of options
relating to your Snap*!* cloud account. If you are not logged in, you
see the outline icon and get this menu:

Choose Login... if you have a Snap*!* account and remember your
password. Choose Signup... if you don't have an account. Choose Reset
Password... if you've forgotten your password or just want to change it.
You will then get an email, at the address you gave when you created
your account, with a new temporary password. Use that password to log
in, then you can choose your own password, as shown below. Choose Resend
Verification Email... if you have just created a Snap*!* account but
can't find the email we sent you with the link to verify that it's
really your email. (If you still can't find it, check your spam folder.
If you are using a school email address, your school may block incoming
email from outside the school.) The Open in Community Site option
appears only if you have a project open; it takes you to the community
site page about that project.

![](/snap-manual/assets/images/image1001.png){width="1.6111111111111112in"
height="0.6527777777777778in"}If you are already logged in, you'll see
the solid icon
![](/snap-manual/assets/images/image1002.png){width="0.2916666666666667in"
height="0.16666666666666666in"} and get this menu:

Logout is obvious, but has the additional benefit of showing you who's
logged in. Change password... will ask for your old password (the
temporary one if you're resetting your password) and the new password
you want, entered twice because it doesn't echo. Open in Community Site
is the same as above.

###  The Settings Menu

![](/snap-manual/assets/images/image1003.png){width="1.2479166666666666in"
height="2.5833333333333335in"}![](/snap-manual/assets/images/image1004.png){width="0.2916666666666667in"
height="0.16666666666666666in"}The settings icon shows a menu of Snap*!*
options, either for the current project or for you permanently,
depending on the option:

The Language... option lets you see the Snap*!* user interface (blocks
and messages) in a language other than English. (Note: Translations have
been provided by Snap*!* users. If your native language is missing, send
us an email!)

The Zoom blocks\... option lets you change the size of blocks, both in
the palettes and in scripts. The standard size is 1.0 units. The main
purpose of this option is to let you take very high-resolution pictures
of scripts for use on posters. It can also be used to improve
readability when projecting onto a screen while lecturing, but bear in
mind that it doesn't make the palette or script areas any wider, so your
computer's command-option-+ feature may be more practical. Note that a
zoom of 2 is gigantic! Don't even try 10.

The Fade blocks... option opens a dialog in which you can change the
appearance of blocks:

![](/snap-manual/assets/images/image1005.png){width="7.4847222222222225in"
height="2.577777777777778in"}Mostly this is a propaganda aid to use on
people who think that text languages are somehow better or more grown up
than block languages, but some people do prefer less saturated block
colors. You can use the pulldown menu for preselected fadings, use the
slider to see the result as you change the fading amount, or type a
number into the text box once you've determined your favorite value.

The Stage size... option lets you set the size of the *full-size* stage
in pixels. If the stage is in half-size or double-size (presentation
mode), the stage size values don't change; they always reflect the
full-size stage.

The Microphone resolution... option sets the buffer size used by the
microphone block in Settings. "Resolution" is an accurate name if you
are getting frequency domain samples; the more samples, the narrower the
range of frequencies in each sample. In the time domain, the buffer size
determines the length of time over which samples are collected.

The remaining options let you turn various features on and off. There
are three groups of checkboxes. The first is for temporary settings not
saved in your project nor in your user preferences.

The JavaScript extensions option enables the use of the JavaScript
function block. Because malicious projects could use JavaScript to
collect private information about you, or to delete or modify your saved
projects, you must enable JavaScript *each time* you load a project that
uses it.

![](/snap-manual/assets/images/image1015.png){width="1.1895833333333334in"
height="0.18958333333333333in"}![](/snap-manual/assets/images/image1016.png){width="1.229861111111111in"
height="0.25972222222222224in"}The Extension blocks option adds two
blocks to the palette:

These blocks provide assorted capabilities to official libraries that
were formerly implemented with the JavaScript function block. This
allows these libraries to run without requiring the JavaScript
extensions option. Details are subject to change.

![](/snap-manual/assets/images/image1017.png){width="1.104861111111111in"
height="2.0833333333333335in"}![](/snap-manual/assets/images/image1018.png){width="1.6388888888888888in"
height="0.4131944444444444in"}Input sliders provides an alternate way to
put values in numeric input slots; if you click in such a slot, a slider
appears that you can control with the mouse:

The range of the slider will be from 25 less than the input's current
value to 25 more than the current value. If you want to make a bigger
change than that, you can slide the slider all the way to either end,
then click on the input slot again, getting a new slider with a new
center point. But you won't want to use this technique to change the
input value from 10 to 1000, and it doesn't work at all for non-integer
input ranges. This feature was implemented because software keyboard
input on phones and tablets didn't work at all in the beginning, and
still doesn't work perfectly on Android devices, so sliders provide a
workaround. It has since found another use in providing "lively"
response to input changes; if Input sliders is checked, reopening the
settings menu will show an additional option called Execute on slider
change. If this option is also checked, then changing a slider in the
scripting area automatically runs the script in which that input
appears. The project live-tree in the Examples collection shows how this
can be used; it features a fractal tree custom block with several
inputs, and you can see how each input affects the picture by moving a
slider.

Turbo mode makes many projects run much faster, at the cost of not
keeping the stage display up to date. (Snap*!* ordinarily spends most of
its time drawing sprites and updating variable watchers, rather than
actually carrying out the instructions in your scripts.) So turbo mode
isn't a good idea for a project with glide blocks or one in which the
user interacts with animated characters, but it's great for drawing a
complicated fractal, or computing the first million digits of 𝜋, so that
you don't need to see anything until the final result. While in turbo
mode, the button that normally shows a green flag instead shows a green
lightning bolt. (But when ⚑ clicked hat blocks still activate when the
button is clicked.)

Visible stepping enables the slowed-down script evaluation described in
Chapter I. Checking this option is equivalent to clicking the footprint
button above the scripting area. You don't want this on except when
you're actively debugging, because even the fastest setting of the
slider is still slowed a lot.

Log pen vectors tells Snap*!* to remember lines drawn by sprites as
exact vectors, rather than remember only the pixels that the drawing
leaves on the stage. This remembered vector picture can be used in two
ways: First, right-clicking on a pen trails block gives an option to
relabel it into a pen vectors block which, when run, reports the logged
lines as a vector (svg) costume. Second, right-clicking on the stage
when there are logged vectors shows an extra option, svg..., that
exports a picture of the stage in vector format. Only lines are logged,
not color regions made with the fill block.

The next group of four are user preference options, preserved when you
load a new project. Long form input dialog, if checked, means that
whenever a custom block input name is created or edited, you immediately
see the version of the input name dialog that includes the type options,
default value setting, etc., instead of the short form with just the
name and the choice between input name and title text. The default
(unchecked) setting is definitely best for beginners, but more
experienced Snap*!* programmers may find it more convenient always to
see the long form.

Plain prototype labels eliminates the plus signs between words in the
Block Editor prototype block. This makes it harder to add an input to a
custom block; you have to hover the mouse where the plus sign would have
been, until a single plus sign appears temporarily for you to click on.
It's intended for people making pictures of scripts in the block editor
for use in documentation, such as this manual. You probably won't need
it otherwise.

Clicking sound causes a really annoying sound effect whenever one block
snaps next to another in a script. Certain very young children, and our
colleague Dan Garcia, like this, but if you are such a child you should
bear in mind that driving your parents or teachers crazy will result in
you not being allowed to use Snap*!*. It might, however, be useful for
visually impaired users.

Flat design changes the "skin" of the Snap*!* window to a really hideous
design with white and pale-grey background, rectangular rather than
rounded buttons, and monochrome blocks (rather than the shaded, somewhat
3D-looking normal blocks). The monochrome blocks are the reason for the
"flat" in the name of this option. The only thing to be said for this
option is that, because of the white background, it may blend in better
with the rest of a web page when a Snap*!* project is run in a frame in
a larger page. (I confess I used it to make the picture of blocks faded
all the way to just text two pages ago, though.)

The final group of settings change the way Snap*!* interprets your
program; they are saved with the project, so anyone who runs your
project will experience the same behavior. Thread safe scripts changes
the way Snap*!* responds when an event (clicking the green flag, say)
starts a script, and then, while the script is still running, the same
event happens again. Ordinarily, the running process stops where it is,
ignoring the remaining commands in the script, and the entire script
starts again from the top. This behavior is inherited from Scratch, and
some converted Scratch projects depend on it; that's why it's the
default. It's also sometimes the right thing, especially in projects
that play music in response to mouse clicks or keystrokes. If a note is
still playing but you ask for another one, you want the new one to start
right then, not later after the old process finishes. But if your script
makes several changes to a database and is interrupted in the middle,
the result may be that the database is inconsistent. When you select
Thread safe scripts, the same event happening again in the middle of
running a script is simply ignored. (This is arguably still not the
right thing; the event should be remembered and the script run again as
soon as it finishes. We'll probably get around to adding that choice
eventually.) Keyboard events (when \_\_ key pressed) are always
thread-safe.

Flat line ends affects the drawing of thick lines (large pen width).
Usually the ends are rounded, which looks best when turning corners.
With this option selected, the ends are flat. It's useful for drawing a
brick wall or a filled rectangle.

Codification support enables a feature that can translate a Snap*!*
project to a text-based (rather than block-based) programming language.
The feature doesn't know about any particular other language; instead,
you can provide a translation for each primitive block using these
special blocks:

![](/snap-manual/assets/images/image1019.png){width="3.120644138232721in"
height="0.5451388888888888in"}

Using these primitive blocks, you can build a block library to translate
into any programming language. Watch for such libraries to be added to
our library collection (or contribute one). To see some examples, open
the project "Codification" in the Examples project list. Edit the blocks
map to Smalltalk, map to JavaScript, etc., to see examples of how to
provide translations for blocks.

![](/snap-manual/assets/images/image1021.png){width="2.209722222222222in"
height="4.969444444444444in"}![](/snap-manual/assets/images/image1022.png){width="1.38in"
height="4.79in"}The Single palette option puts all blocks, regardless of
category, into a single palette. It's intended mainly for use by
curriculum developers building *Parsons problems:* projects in which
only a small set of blocks are provided, and the task is to arrange
those blocks to achieve a set goal. In that application, this option is
combined with the hiding of almost all primitive blocks. (See page 119.)
When Single palette is turned on, two additional options (initially on)
appear in the settings menu; the Show categories option controls the
appearance of the palette category names such as
![](/snap-manual/assets/images/image1023.png){width="0.36in" height="0.16in"}
and ![A picture containing logo Description automatically
generated](/snap-manual/assets/images/image1024.png){width="0.33in"
height="0.18in"}, while the Show buttons option controls the appearance
of the ![](/snap-manual/assets/images/image1025.png){width="0.61in"
height="0.16in"} and
![](/snap-manual/assets/images/image1026.png){width="0.53in" height="0.16in"}
buttons in the palette.

The HSL pen color model option changes the set pen, change pen, and pen
blocks to provide menu options hue, saturation, and lightness instead of
hue, saturation, and brightness (a/k/a value). Note: the name
"saturation" means something different in HSL from in HSV! See Appendix
A for all the information you need about colors.

The Disable click-to-run option tells Snap*!* to ignore user mouse
clicks on blocks and scripts if it would ordinarily run the block or
script. (Right-clicking and dragging still work, and so does clicking in
an input slot to edit it.) This is another Parsons problem feature; the
idea is that there will be buttons displayed that run code only in
teacher-approved ways. But kids can uncheck the checkbox. ☺︎

### Visible Stepping Controls

![](/snap-manual/assets/images/image121.png){width="0.37916666666666665in"
height="0.21666666666666667in"}After the menu buttons you'll see the
project name. After that comes the footprint button used to turn on
visible stepping and, when it's on, the slider to control the speed of
stepping.

### Stage Resizing Buttons

![](/snap-manual/assets/images/image1027.png){width="0.37916666666666665in"
height="0.21666666666666667in"}![](/snap-manual/assets/images/image1028.png){width="0.37916666666666665in"
height="0.21666666666666667in"}![](/snap-manual/assets/images/image1029.png){width="0.37916666666666665in"
height="0.21666666666666667in"}![](/snap-manual/assets/images/image1030.png){width="0.37916666666666665in"
height="0.21666666666666667in"}Still in the tool bar, but above the left
edge of the stage, are two buttons that change the size of the stage.
The first is the shrink/grow button. Normally it looks like this:
Clicking the button displays the stage at half-normal size horizontally
and vertically (so it takes up ¼ of its usual area). When the stage is
half size the button looks like this: and clicking it returns the stage
to normal size. The main reason you'd want a half size stage is during
the development process, when you're assembling scripts with wide input
expressions and the normal scripting area isn't wide enough to show the
complete script. You'd typically then switch back to normal size to try
out the project. The next presentation mode button normally looks like
this: Clicking the button makes the stage double size in both dimensions
and eliminates most of the other user interface elements (the palette,
the scripting area, the sprite corral, and most of the tool bar). When
you open a shared project using a link someone has sent you, the project
starts in presentation mode. While in presentation mode, the button
looks like this: Clicking it returns to normal (project development)
mode.

### Project Control Buttons {#project-control-buttons .ListParagraph}

Above the right edge of the stage are three buttons that control the
running of the project.

![](/snap-manual/assets/images/image1031.png){width="0.38in"
height="0.22in"}Technically, the green flag is no more a project control
than anything else that can trigger a hat block: typing on the keyboard
or clicking on a sprite. But it's a convention that clicking the flag
should start the action of the project from the beginning. It's only a
convention; some projects have no flag-controlled scripts at all, but
respond to keyboard controls instead. Clicking the green flag also
deletes temporary clones.

![](/snap-manual/assets/images/image1032.png){width="0.35in"
height="0.2in"}Whenever any script is running (not necessarily in the
current sprite), the green flag is lit: .

![](/snap-manual/assets/images/image1033.png){width="0.35in"
height="0.2in"}![](/snap-manual/assets/images/image1034.png){width="1.3590277777777777in"
height="0.8840277777777777in"}Shift-clicking the button enters Turbo
mode, and the button then looks like a lightning bolt: . Shift-clicking
again turns Turbo mode off.

![](/snap-manual/assets/images/image1038.png){width="0.37916666666666665in"
height="0.21666666666666667in"}Scripts can simulate clicking the green
flag by broadcasting the special message
![](/snap-manual/assets/images/image1039.png){width="0.3055555555555556in"
height="0.3055555555555556in"}.

![](/snap-manual/assets/images/image1040.png){width="0.37916666666666665in"
height="0.21666666666666667in"}![](/snap-manual/assets/images/image1041.png){width="0.37916666666666665in"
height="0.21666666666666667in"}The pause button suspends running all
scripts. If clicked while scripts are running, the button changes shape
to become a play button: Clicking it while in this form resumes the
suspended scripts. There is also a pause all block in the Control
palette that can be inserted in a script to suspend all scripts; this
provides the essence of a breakpoint debugging capability. The use of
the pause button is slightly different in visible stepping mode,
described in Chapter I.

![](/snap-manual/assets/images/image1042.png){width="0.5486111111111112in"
height="0.17708333333333334in"}The stop button stops all scripts, like
the stop all block. It does *not* prevent a script from starting again
in response to a click or keystroke; the user interface is always
active. There is one exception: generic when blocks will not fire after
a stop until some non-generic event starts a script. The stop button
also deletes all temporary clones.

 The Palette Area

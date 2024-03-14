                ---
                title: 62 Preloading a Project when Starting Snap*!*

                layout: home
                has_children: false
                has_toc: true
                nav_order: 63
                ---


There are several ways to include a pointer to a project in the URL when
starting Snap*!* in order to load a project automatically. You can think
of such a URL as just running the project rather than as running
Snap*!*, especially if the URL says to start in presentation mode and
click the green flag. The general form is

http://snap.berkeley.edu/run\#***verb***:***project***&***flag***&***flag***...

The "verb" above can be any of open, run, cloud, present, or dl. The
last three are for shared projects in the Snap*!* cloud; the first two
are for projects that have been exported and made available anywhere on
the Internet.

Here's an example that loads a project stored at the Snap*!* web site
(not the Snap*!* cloud!):

http://snap.berkeley.edu/run\#open:http://snap.berkeley.edu/snapsource/Examples/vee.xml

The project file will be opened, and Snap*!* will start in edit mode
(with the program visible). Using \#run: instead of \#open: will start
in presentation mode (with only the stage visible) and will "start" the
project by clicking the green flag. ("Start" is in quotation marks
because there is no guarantee that the project includes any scripts
triggered by the green flag. Some projects are started by typing on the
keyboard or by clicking a sprite.)

If the verb is run, then you can also use any subset of the following
flags:

&editMode Start in edit mode, not presentation mode.

&noRun Don't click the green flag.

&hideControls Don't show the row of buttons above the stage (edit mode,
green flag, pause, stop).

&lang=fr Set language to (in this example) French.

&noCloud Don't allow cloud operations from this project (for running
projects from unknown

sources that include JavaScript code)

&noExitWarning When closing the window or loading a different URL, don't
show the browser

"are you sure you want to leave this page" message.

&blocksZoom=n Like the Zoom blocks option in the Settings menu.

The last of these flags is intended for use on a web page in which a
Snap*!* window is embedded.

Here's an example that loads a shared (public) project from the Snap*!*
cloud:

http://snap.berkeley.edu/run\#present:Username=jens&ProjectName=tree%20animation

(Note that "Username" and "ProjectName" are TitleCased, even though the
flags such as "noRun" are camelCased. Note also that a space in the
project name must be represented in Unicode as %20.) The verb present
behaves like run: it ordinarily starts the project in presentation mode,
but its behavior can be modified with the same four flags as for run.
The verb cloud (yes, we know it's not a verb in its ordinary use)
behaves like open except that it loads from the Snap*!* cloud rather
than from the Internet in general. The verb dl (short for "download")
does not start Snap*!* but just downloads a cloud-saved project to your
computer as an .xml file. This is useful for debugging; sometimes a
defective project that Snap*!* won't run can be downloaded, edited, and
then re-saved to the cloud.

Mirror Sites

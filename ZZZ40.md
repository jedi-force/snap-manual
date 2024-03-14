                ---
                title: 40 First Class Costumes and Sounds

                layout: home
                has_children: false
                has_toc: true
                nav_order: 41
                ---


Costumes and sounds don't have methods, as sprites do; you can't ask
them to do things. But they *are* first class: you can make a list of
them, put them in variables, use them as input to a procedure, and so
on. My \[costumes\] and my \[sounds\] report lists of them.

### Media Computation with Costumes

![](/snap-manual/assets/images/image783.png){width="1.6319444444444444in"
height="0.1875in"}The components of a costume are its name, width,
height, and pixels. The block gives access to these components using its
left menu. From its right menu you can choose the current costume, the
Turtle costume, or any costume in the sprite's wardrobe. Since costumes
are first class, you can also drop an expression whose value is a
costume, or a list of costumes, on that second input slot. (Due to a
misfeature, even though you can select Turtle in the right menu, the
block reports 0 for its width and height, and an empty string for the
other components.) The costume's width and height are in its standard
orientation, regardless of the sprite's current direction. (This is
different from the *sprite's* width and height, reported by the my
block.)

But the really interesting part of a costume is its bitmap, a list of
*pixels*. (A pixel, short for "picture element," represents one dot on
your display.) Each pixel is itself a list of four items, the red,
green, and blue components of its color (in the range 0-255) and what is
standardly called its "transparency" but should be called its opacity,
also in the range 0-255, in which 0 means that the pixel is invisible
and 255 means that it's fully opaque: you can't see anything from a
rearward layer at that point on the stage. (Costume pixels typically
have an opacity of 0 only for points inside the bounding box of the
costume but not actually part of the costume; points in the interior of
a costume typically have an opacity of 255. Intermediate values appear
mainly at the edge of a costume, or at sharp boundaries between colors
inside the costume, where they are used to reduce "jaggies": the
stairstep-like shape of a diagonal line displayed on an array of
discrete rectangular screen coordinates. Note that the opacity of a
*sprite* pixel is determined by combining the costume's opacity with the
sprite's ghost effect. (The latter really is a measure of transparency:
0 means opaque and 100 means invisible.)

![](/snap-manual/assets/images/image784.png){width="6.100694444444445in"
height="1.3895833333333334in"}The bitmap is a one-dimensional list of
pixels, not an array of *height* rows of *width* pixels each. That's why
the pixel list has to be combined with the dimensions to produce a
costume. This choice partly reflects the way bitmaps are stored in the
computer's hardware and operating system, but also makes it easy to
produce transformations of a costume with map:

In this simplest possible transformation, the red value of all the
pixels have been changed to a constant 150. Colors that were red in the
original (such as the logo printed on the t-shirt) become closer to
black (the other color components being near zero); the blue jeans
become purple (blue plus red); perhaps counterintuitively, the white
t-shirt, which has the maximum value for all three color components,
loses some of its red and becomes cyan, the color opposite red on the
color wheel. In reading the code, note that the function that is the
first input to map is applied to a single pixel, whose first item is its
red component. Also note that this process works only on bitmap
costumes; if you call pixels of on a vector costume (one with "svg" in
the corner of its picture), it will be converted to pixels first.

![](/snap-manual/assets/images/image790.png){width="2.2569444444444446in"
height="0.2847222222222222in"}One important point to see here is that a
bitmap (list of pixels) is not, by itself, a costume. The new costume
block creates a costume by combining a bitmap, a width, and a height.
But, as in the example above, switch to costume will accept a bitmap as
input and will automatically use the width and height of the current
costume. Note that there's no name input; costumes computed in this way
are all named costume. Note also that the use of switch to costume does
*not* add the computed costume to the sprite's wardrobe; to do that, say

![](/snap-manual/assets/images/image791.png){width="7.508333333333334in"
height="1.2090277777777778in"}Here's a more interesting example of color
manipulation:

![](/snap-manual/assets/images/image797.png){width="4.5625in"
height="0.40694444444444444in"}Each color value is constrained to be 0,
80, 160, or 240. This gives the picture a more cartoonish look.
Alternatively, you can do the computation taking advantage of
hyperblocks:

Here's one way to exchange red and green values:

![](/snap-manual/assets/images/image798.png){width="7.5in"
height="0.6555555555555556in"}![](/snap-manual/assets/images/image804.png){width="0.9583333333333334in"
height="0.18055555555555555in"}It's the list that determines the
rearrangement of colors: green➔red, red➔green, and the other two
unchanged. That list is inside another list because otherwise it would
be selecting *rows* of the pixel array, and we want to select columns.
We use pixels of costume current rather than costume apple because the
latter is always a red apple, so this little program would get stuck
turning it green, instead of alternating colors.

![](/snap-manual/assets/images/image805.png){width="5.569444444444445in"
height="0.4236111111111111in"}![](/snap-manual/assets/images/image809.png){width="1.7222222222222223in"
height="0.22916666666666666in"}The stretch block takes a costume as its
first input, either by selecting a costume from the menu or by dropping
a costume-valued expression such as onto it. The other two inputs are
percents of the original width and height, as advertised, so you can
make fun house mirror versions of costumes:

The resulting costumes can be used with switch to costume and so on.

![](/snap-manual/assets/images/image305.png){width="5.330729440069991in"
height="0.3541666666666667in"}Finally, you can use pictures from your
computer's camera in your projects using these blocks:

![](/snap-manual/assets/images/image813.png){width="1.4722222222222223in"
height="0.24305555555555555in"}Using the video on block turns on the
camera and displays what it sees on the stage, regardless of the inputs
given. The camera remains on until you click the red stop button, your
program runs the stop all block, or you turn it off explicitly with the
block. The video image on the stage is partly ghosted, to an extent
determined by the set video transparency block, whose input really is
transparency and not opacity. (Small numbers make the video more
visible.) By default, the video image is mirrored, like the selfie
camera on your cell phone: When you raise your left hand, your image
raises its right hand. You can control this
![](/snap-manual/assets/images/image814.png){width="1.4027777777777777in"
height="0.24305555555555555in"}mirroring with the block.

![](/snap-manual/assets/images/image815.png){width="1.2041666666666666in"
height="1.6125in"}The video snap on block then takes a still picture
from the camera, and trims it to fit on the selected sprite. (Video snap
on stage means to use the entire stage-sized rectangle.) For example,
here's a camera snapshot trimmed to fit Alonzo:

![](/snap-manual/assets/images/image816.png){width="2.670138888888889in"
height="1.2986111111111112in"}The "Video Capture" project in the
Examples collection repeatedly takes such trimmed snapshots and has the
Alonzo sprite use the current snapshot as its costume, so it looks like
this:

![](/snap-manual/assets/images/image817.png){width="2.6666666666666665in"
height="2.0in"}![](/snap-manual/assets/images/image818.png){width="3.3333333333333335in"
height="2.5in"}(The picture above was actually taken with transparency
set to 50, to make the background more visible for printing.) Because
the sprite is always still in the place where the snapshot was taken,
its costume exactly fits in with the rest of the full-stage video. If
you were to add a move 100 steps block after the switch to costume,
you'd see something like this:

This time, the sprite's costume was captured at one position, and then
the sprite is shown at a different position. (You probably wouldn't want
to do this, but perhaps it's helpful for explanatory purposes.)

![](/snap-manual/assets/images/image819.png){width="7.375694444444444in"
height="1.6423611111111112in"}What you *would* want to do is push the
sprite around the stage:

![](/snap-manual/assets/images/image825.png){width="3.0902777777777777in"
height="1.9236111111111112in"}(Really these should be Jens's picture;
it's his project. But he's vacationing. ☺) Video motion compares two
snapshots a moment apart, looking only at the part within the given trim
(here myself, meaning the current sprite, not the person looking into
the camera), to detect a difference between them. It reports a number,
measuring the number of pixels through which some part of the picture
has moved. Video direction also compares two snapshots to detect motion,
but what it reports is the direction (in the point in direction sense)
of the motion. So the script above moves the sprite in the direction in
which it's being pushed, but only if a significant amount of motion is
found; otherwise the sprite would jiggle around too much. And yes, you
can run the second script without the first to push a balloon around the
stage.

### Media Computation with Sounds {#media-computation-with-sounds .ListParagraph}

The starting point for computation with sound is the microphone block.
It starts by recording a brief burst of sound from your microphone. (How
brief? On my computer, 0.010667 seconds, but you'll see shortly how to
ﬁnd out or control the sample size on your computer.)

![](/snap-manual/assets/images/image826.png){width="1.9652777777777777in"
height="0.2569444444444444in"}![](/snap-manual/assets/images/image827.png){width="5.999305555555556in"
height="2.620138888888889in"}Just as the *pixel* is the smallest piece
of a picture, the *sample* is the smallest piece of a sound. It says
here: that on my computer, 48,000 samples are recorded per second, so
each sample is 1/48,000 of a second. The value of a sample is between -1
and 1, and represents the sound pressure on the microphone---how hard
the air is pushing---at that instant. (You can skip the next page or so
if you know about Fourier analysis.) Here's a picture of 400 samples:

In this graph, the *x* axis represents the time at which each sample was
measured; the *y* axis measures the value of the sample at that time.
The first obvious thing about this graph is that it has a lot of ups and
downs. The most basic up-and-down function is the *sine wave:*

Every periodic function (more or less, any sample that sounds like music
rather than sounding like static) is composed of a sum of sine waves of
different frequencies.

Look back at the graph of our sampled sound. There is a green dot every
seven samples. There's nothing magic about the number seven; I tried
different values until I found one that looked right. What "right" means
is that, for the first few dots at least, they coincide almost perfectly
with the high points and low points of the graph. Near the middle
(horizontally) of the graph, the green dots don't seem anywhere near the
high and low points, but if you find the very lowest point of the graph,
about 2/3 of the way along, the dots start lining up almost perfectly
again.

The red graph above shows two *cycles* of a sine wave. One cycle goes
up, then down, then up again. The amount of time taken for one cycle is
the *period* of the sine function. If the green dots match both ups and
downs in the captured sound, then two dots---14 samples, or 14/48000 of
a second---represent the period. The first cycle and a half of the graph
looks like it could be a pure sine wave, but after that, the tops and
bottoms don't line up, and there are peculiar little jiggles, such as
the one before the fifth green dot. This happens because sine waves of
different periods are added together.

It turns out to be more useful to measure the reciprocal of the period,
in our case, 48000/14 or about 3429 *cycles per second.* Another name
for "cycles per second" is "Hertz," abbreviated Hz, so our sound has a
component at 3249 Hz. As a musical note, that's about an A (a little
flat), four octaves above middle C. (Don't worry too much about the note
being a little off; remember that the 14-sample period was just
eyeballed and is unlikely to be exactly right.)

Four octaves above middle C is really high! That would be a
shrill-sounding note. But remember that a complex waveform is the sum of
multiple sine waves at different frequency. Here's a different
up-and-down regularity:

![](/snap-manual/assets/images/image828.png){width="2.795138888888889in"
height="1.2222222222222223in"}![](/snap-manual/assets/images/image829.png){width="2.7847222222222223in"
height="1.0486111111111112in"}It's not obvious, but in the left part of
the graph, the signal is more above the *x* axis than below it. Toward
the right, it seems to be more below than above the axis. At the very
right it looks like it might be climbing again.

The period of the red sine wave is 340 samples, or 340/48000 second.
That's a frequency of about 141 Hz, about D below middle C. Again, this
is measuring by eyeball, but likely to be close to the right frequency.

All this eyeballing doesn't seem very scientific. Can't we just get the
computer to find all the relevant frequencies? Yes, we can, using a
mathematical technique called *Fourier analysis.* (Jean-Baptiste Joseph
Fourier, 1768--1830, made many contributions to mathematics and physics,
but is best known for working out the nature of periodic functions as a
sum of sine waves.) Luckily we don't have to do the math; the microphone
block will do it for us, if we ask for microphone spectrum:

![](/snap-manual/assets/images/image830.png){width="7.493055555555555in"
height="1.4861111111111112in"}These are frequency spectra from (samples
of) three different songs. The most obvious thing about these graphs is
that their overall slope is downward; the loudest frequency is the
lowest frequency. That's typical of music.

The next thing to notice is that there's a regularity in the spacing of
spikes in the graph. This is partly just an artifact; the frequency
(horizontal) axis isn't continuous. There are a finite number of
"buckets" (default: 512), and all the frequencies within a bucket
contribute to the amplitude (vertical axis) of that bucket. The spectrum
is a list of that many amplitudes. But the patterns of alternating
rising and falling values are real; the frequencies that are multiples
of the main note being sampled will have higher amplitude than other
frequencies.

Samples and spectrum are the two most detailed representations of a
sound. But the microphone block has other, simpler options also:

volume the instantaneous volume when the block is called

note the MIDI note number (as in play note) of the main note heard

frequency the frequency in Hz of the main note heard

sample rate the number of samples being collected per second

![](/snap-manual/assets/images/image258.png){width="2.9166666666666665in"
height="0.28125in"}resolution the size of the array in which data are
collected (typically 512, must be a power of 2)

The block for sounds that corresponds to new picture for pictures is

Its first input is a list of samples, and its second input specifies how
many samples occupy one second.

 OOP with Procedures
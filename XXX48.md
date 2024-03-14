---
title: 48 Hardware Devices

layout: home
has_children: false
has_toc: true
nav_order: 49
---


Another JavaScript security restriction prevents Snap*!* from having
direct access to devices connected to your computer, such as sensors and
robots. (Mobile devices such as smartphones may also have useful devices
built in, such as accelerometers and GPS receivers.) The url block is
also used to interface Snap*!* with these external capabilities.

The idea is that you run a separate program that both interfaces with
the device and provides a local HTTP server that Snap*!* can use to make
requests to the device. *Unlike* Snap*!* *itself, these programs have
access to anything on your computer, so you have to trust the author of
the software!* Our web site, snap.berkeley.edu, provides links to
drivers for several devices, including, at this writing, the Lego NXT,
Finch, Hummingbird, and Parallax S2 robots; the Nintendo Wiimote and
Leap Motion sensors, the Arduino microcomputer, and Super-Awesome
Sylvia's Water Color Bot. The same server technique can be used for
access to third party software libraries, such as the speech synthesis
package linked on our web site.

Most of these packages require some expertise to install; the links are
to source code repositories. This situation will improve with time.

Date and Time

---
title: 47 The World Wide Web

layout: home
has_children: false
has_toc: true
nav_order: 48
---


The input to the url block is the URL (Uniform Resource Locator) of a
web page. The block reports the body of the Web server's response (minus
HTTP header), *without interpretation.* This means that in most cases
the response is a description of the page in HTML (HyperText Markup
Language) notation. Often, especially for commercial web sites, the
actual information you're trying to find on the page is actually at
another URL included in the reported HTML. The Web page is typically a
very long text string, and so the primitive split block is useful to get
the text in a manageable form, namely, as a list of lines:

![](/snap-manual/assets/images/image871.png){width="6.520833333333333in"
height="4.277777777777778in"}

The second input to split is the character to be used to separate the
text string into a list of lines, or one of a set of common cases (such
as line, which separates on carriage return and/or newline characters.

This might be a good place for a reminder that list-view watchers scroll
through only 100 items at a time. The downarrow near the bottom right
corner of the speech balloon in the picture presents a menu of
hundred-item ranges. (This may seem unnecessary, since the scroll bar
should allow for any number of items, but doing it this way makes
Snap*!* much faster.) In table view, the entire list is included.

If you include a protocol name in the input to the url block (such as
http:// or https://), that protocol will be used. If not, the block
first tries HTTPS and then, if that fails, HTTP.

A security restriction in JavaScript limits the ability of one web site
to initiate communication with another site. There is an official
workaround for this limitation called the CORS protocol (Cross-Origin
Resource Sharing), but the target site has to allow snap.berkeley.edu
explicitly, and of course most don't. To get around this problem, you
can use third-party sites ("cors proxies") that are not limited by
JavaScript and that forward your requests.

Hardware Devices

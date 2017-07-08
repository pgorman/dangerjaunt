# Danger Jaunt to Wonder Vault #

[Read it now!](https://github.com/pgorman/dangerjaunt/blob/master/dangerjaunt.md)

**Danger Jaunt to Wonder Vault** is a fantasy roleplaying game "retro-clone" --- a set of rules based on early versions of the original pen and paper roleplaying game, as allowed by the Open Gaming License.

What sets **Danger Jaunt to Wonder Vault** apart from similar games?

- short page count, suitable for saddle-stitched booklets
- compact page size, available as both US digest (5.5 x 8.5) and A5
- concise writing style
- despite brevity, all key game elements included
- written in Markdown (easy to edit)
- easily output as PDF or HTML (by Pandoc)

## Requirements ##

The `dangerjaunt.md` Markdown text file is readable in any text editor or web browser.
To build the book as a PDF and HTML document requires:

- a POSIX shell (e.g. /bin/sh)
- Perl 5
- Pandoc
- a version of LaTeX with pdfTeX

The PDF uses the following LaTeX font packages:

- The New PX Palladio clone (newpxtext, newpxmath)
- Antykwa Toruńska (antt)

## Making It Your Own ##

- Make your changes to `dangerjaunt.md`.
- Generate the PDF's and HTML by running `./makebook.sh`.

## License ##

The text of **Danger Jaunt to Wonder Vault** is licensed under the terms of the Open Gaming License.

The auxiliary and build scripts are licensed under the Simplified BSD License:

Copyright (c) 2015, Paul Gorman
All rights reserved.

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

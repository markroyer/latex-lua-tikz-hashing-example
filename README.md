# latex-lua-tikz-hashing-example

A latex example using lua and tikz to create hash table diagrams.

The `hashing.tex` file contains examples diagrams of drawing hash
tables using lua and tikz.

This may be useful if someone is interested in creating complex strings
from the lua instead of using latex directly.

The functions for creating the tikz arrays are located in the file
`array.lua` which is loaded near the beginning of the latex document.

## Screenshots

A few example screenshots are shown below.

![Insert 45](https://raw.githubusercontent.com/wiki/markroyer/latex-lua-tikz-hashing-example/hashing1.png
"Insert 45")

![Insert 8](https://raw.githubusercontent.com/wiki/markroyer/latex-lua-tikz-hashing-example/hashing2.png
"Insert 8")

## Setup

Make sure that you have the Debian `texlive` and `texlive-luatex`
packages installed.

For debian and/or emacs users, I find that for it's useful to have the `lua-mode`
package installed for editing lua files.

## Usage

You can build the PDF document by typing

```
make
```

in the root of the repository. The file `hashing.pdf` is the
generated output.

Typing

```
make clean
```

will remove all generated files.

## License

The project is licensed under the terms of the
[GPL3](https://www.gnu.org/licenses/gpl-3.0.en.html) license.

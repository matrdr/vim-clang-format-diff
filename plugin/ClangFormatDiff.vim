vim9script

# Open a diff window with the "clang-formatted" version of a file
# Last Change:  2024 Sep 21
# Maintainer:   Matthias Rader <matthias.rader@outlook.at>

# License:      This file is placed in the public domain.

import autoload '../autoload/SetPreviousBuffersSyntax.vim'

command ClangFormatDiff
	\ diffthis | vnew +read\ ++edit\ !clang-format\ # | :0d _
	\ | diffthis | setlocal buftype=nofile bufhidden=hide
	\ noswapfile |
	\ call SetPreviousBuffersSyntax.SetPreviousBuffersSyntax()
	\ | wincmd p

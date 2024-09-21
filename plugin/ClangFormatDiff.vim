vim9script

# Open a diff window with the "clang-formatted" version of a file
# Last Change:  2024 Sep 21
# Maintainer:   Matthias Rader <matthias.rader@outlook.at>

# License:      This file is placed in the public domain.

command ClangFormatDiff
	\ diffthis | vnew +read\ ++edit\ !clang-format\ # | :0d _
	\ | diffthis | setlocal buftype=nofile bufhidden=hide
	\ noswapfile |
	\ call g:SetPreviousBuffersSyntax#SetPreviousBuffersSyntax()
	\ | wincmd p

vim9script

# Open a diff window with the "clang-formatted" version of a file
# Last Change:  2024 Sep 21
# Maintainer:   Matthias Rader <matthias.rader@outlook.at>

# License:      This file is placed in the public domain.

export def SetPreviousBuffersSyntax()
	const previousBufNumber = winbufnr(winnr('#'))
	const previousBufInfo = getbufinfo(previousBufNumber)

	const previousSyntax = previousBufInfo[0]['variables']['current_syntax']

	execute "setf " .. previousSyntax
enddef

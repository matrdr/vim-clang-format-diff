# About
This plugin allows you to view a diff with the `clang-format`ted version of your
code within vim, using only one single vim command.

This may be useful if you do not want `clang-format` to refactor the code for
you or if you are trying to test some options for your `.clang-format` file.

# Usage
Invoke the command `ClangFormatDiff` while having the buffer that contains the
file that you would like to see in its formatted version.

The plugin will then split the current buffer vertically, show the
`clang-format`ted version of the file in the new buffer and activate vim's diff
functionality on both buffers.

This works quite similar to vim's `DiffOrig` command with the added benefit that
the split buffer retains syntax highlighting (I had to learn vim script extra
for that feature 😆).

# Install
Download or `git clone` this repository into the `~/.vim/pack/*/start/` or the
`~/.vim/pack/*/opt/` directory (on Windows it is usually
`%USERPROFILE%\vimfiles` instead of `~/.vim`).

If you chose to place it in the `opt` directory, you have to load the plugin
manually from your `vimrc` file using `packadd vim-clang-format-diff`. If you
put it in the `start` directory it is loaded automatically.

# Pkg-Desc

So.. I couldn't figure out how to get info on remote, uninstalled packages out of the `pkg`-command on freebsd, so I found myself `cat`-ing (or `bat`-ing, rather) the pkg-desc text file in`/usr/ports/something/somepkg/` alot whenever I needed a short description of the files.

So I wrote a script for doing that instead! 

Simply go e.g.:
`pkg-desc.sh editors/emacs`
for information on emacs. 

## Note
It's even slightly clever in that it searches (`find`) the ports tree for you if you don't specify a category or whatever, and it can't find the package you wrote. 

## Also note
Currently is set to use `bat`, not `cat`, change if you don't have/want bat installed. 

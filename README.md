# MidiGurdy Documentation

This repository contains the sources for the online and printed versions of the MidiGurdy manual.


## How to build

$ make clean-all

French version:
$ make clean
$ make -e DOCLANG=fr -e SPHINXOPTS="-D language='fr'" release

English version:
$ make clean
$ make -e DOCLANG=en -e SPHINXOPTS="-D language='en'" release

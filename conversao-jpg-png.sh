#!/bin/bash

IMGS_PATH=~/Downloads/imagens-livros

for img in $@
do
	convert $IMGS_PATH/$img.jpg $IMGS_PATH/$img.png
done

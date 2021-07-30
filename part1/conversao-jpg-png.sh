#!/bin/bash

to_convert_image(){
cd ~/Downloads/imagens-livros

if [ ! -d png ]
then
	mkdir png
fi

for img in *.jpg
do
	local img_name=$(ls $img | awk -F. '{ print $1 }')
	convert $img png/$img_name.png
done
}

to_convert_image 2>errors.txt
if [ $? -eq 0 ]
then
	echo "Images were converted successfully"
else
	echo "Images cannot be converted"
fi

#!/bin/bash

to_convert_image(){
	local image_path=$1
	local image_name=$(ls $image_path | awk -F. '{ print $1 }')
	
	convert $image_name.jpg $image_name.png
}

to_read_dir(){
	cd $1
	for item in *
	do
		local item_path=$(find ~/Downloads/imagens-novos-livros -name $item)
		if [ -d $item_path ]
		then
			to_read_dir $item_path
		else
			to_convert_image $item_path
		fi
	done
}

to_read_dir ./imagens-novos-livros 2>errors_2.txt
if [ $? -eq 0 ]
then
	echo "Images were converted successfully"
else
	echo "Images cannot be converted"
fi

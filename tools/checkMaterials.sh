#!/bin/bash

if [ -z "$1" ] || [ -z "$2" ]; then
	echo "syntax: $0 materials_list materials_dir"
fi

for file in "$2/"*; do
	file=$(basename $(dirname $file))/$(basename $file)
	file="${file%.*}"
	file="${file%_normal}"
	file="models/${file%_skin*}"
	files="$files$file\n"
done

files=$(echo -ne "$files" | sort | uniq)

while read -r material; do
	res=$(grep -w "$material" "$1")
	if [ -z "$res" ]; then
		echo "material $material does not exist in materials list!"
	fi
done <<< "$files"
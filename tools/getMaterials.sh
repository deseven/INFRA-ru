#!/bin/bash


studiomdl="/Volumes/Boot Camp/Steam/steamapps/common/infra/bin/studiomdl.exe"
mapDir="/Users/deseven/Downloads/INFRA vmf"
resDir="Z:\Volumes\Data\infra-res\pak01_dir"
gameDir="Z:\Volumes\Boot Camp\Steam\steamapps\common\infra\infra"

models=$(grep -h '"model"' "$mapDir/"*.vmf | grep ".mdl" | cut -f4 -d'"' | sort | uniq | tr '/' '\')

while read -r model; do
	#echo "$model" >&2
	materials="$materials"$(wine "$studiomdl" -quiet -nowarnings -game "$gameDir" -mdlreport "${resDir}\\${model}" 2>/dev/null | grep "material: " | tr -d ' ' | cut -f2 -d':')
done <<< "$models"

echo "$materials" | sort | uniq
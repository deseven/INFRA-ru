#!/bin/bash

export DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH:$HOME/.bin
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$DIR"

BLUE='\033[1;34m'
PURPLE='\033[1;35m'
NC='\033[0m'

echo -e "${BLUE}cleaning old stuff...${NC}"
rm -f infra/resource/*.dat
rm -rf infra_russian
rm -f infra-ru.7z

cp -r infra_russian_src infra_russian

echo -e "${BLUE}compiling closecaption:${NC}"
wine "source_captioncompiler\captioncompiler.exe" "closecaption_russian.txt" -game "infra_russian" 2>/dev/null
echo -e "${BLUE}compiling gameui:${NC}"
wine "source_captioncompiler\captioncompiler.exe" "gameui_russian.txt" -game "infra_russian" 2>/dev/null
echo -e "${BLUE}compiling infra:${NC}"
wine "source_captioncompiler\captioncompiler.exe" "INFRA_russian.txt" -game "infra_russian" 2>/dev/null
echo -e "${BLUE}compiling subtitles:${NC}"
wine "source_captioncompiler\captioncompiler.exe" "subtitles_russian.txt" -game "infra_russian" 2>/dev/null

#mkdir -p infra_russian/pak01/materials/models/{items,props_building_detail,props_central,props_city,props_clutter} infra_russian/pak01/materials/{decals,vgui}

defaultFlag="NOLOD"
defaultFormat="DXT5"
commands=""

convert logo.png -gravity South -background none -font Tahoma -pointsize 16 -fill '#eeeeee' -annotate +0+60 "russian localization rev.$(git rev-parse --short HEAD), built on $(date '+%d.%m.%Y %H:%I:%S')" infra_russian/pak01/materials/vgui/logo.png

echo -e "${BLUE}making VTFs...${NC}"
while IFS= read -r -d '' file; do
	override=$(grep "$file" vtf-definitions.csv | head -1 | tr -d '\040\011\012\015')
	if [ ! -z "$override" ]; then
		overrideFlag=$(echo "$override" | cut -f2 -d",")
		overrideFormat=$(echo "$override" | cut -f3 -d",")
		echo -e "${PURPLE}overriding convertion params for ${file}: ${overrideFlag} ${overrideFormat}${NC}"
		commands="$commands"'wine "vtflib/VTFCmd.exe" -file "'$file'" -flag "'$overrideFlag'" -format "'$overrideFormat'" -alphaformat "'$overrideFormat'" 2>/dev/null'$'\n'
	else
		commands="$commands"'wine "vtflib/VTFCmd.exe" -file "'$file'" -flag "'$defaultFlag'" -format "'$defaultFormat'" -alphaformat "'$defaultFormat'" 2>/dev/null'$'\n'
	fi
done < <(find infra_russian -type f \( -iname "*.png" -o -iname '*.tga' \) -print0)

echo "$commands" | parallel ::::
total=$(echo "$commands" | wc -l | xargs)
echo -e "${PURPLE}built $total textures${NC}" 

find infra_russian -type f ! -name '*.vtf' ! -name '*.res' ! -name '*.dat' ! -name '*.txt' -delete
rm -f infra_russian/gameinfo.txt infra_russian/resource/subtitles_english.txt > /dev/null 2>&1

echo -e "${BLUE}making VPK...${NC}"
if [ ! -f "pak01.publickey.vdf" ] || [ ! -f "pak01.privatekey.vdf" ]; then
	vpk generate_keypair pak01
fi
vpk -M -k pak01.publickey.vdf -K pak01.privatekey.vdf "$DIR/infra_russian/pak01"

rm -rf infra_russian/pak01

echo -e "${BLUE}packing distro...${NC}"
#zip -q -9 -r infra-ru infra_russian
7za a -r -t7z -mx9 infra-ru.7z infra_russian

echo -e "${BLUE}all done!${NC}"
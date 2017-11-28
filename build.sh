#!/bin/bash

export DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH:$HOME/.bin
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$DIR"

BLUE='\033[1;34m'
PURPLE='\033[1;35m'
NC='\033[0m'

echo -e "${BLUE}cleaning old stuff...${NC}"
rm -f infra/resource/*.dat
rm -rf infra_dlc1
rm -f infra-ru.zip infra-ru-override.zip
rm -f pak01.publickey.vdf pak01.privatekey.vdf

cp -r infra_dlc1_src infra_dlc1

echo -e "${BLUE}compiling closecaption:${NC}"
wine "source_captioncompiler\captioncompiler.exe" "closecaption_russian.txt" -game "infra_dlc1" 2>/dev/null
echo -e "${BLUE}compiling gameui:${NC}"
wine "source_captioncompiler\captioncompiler.exe" "gameui_russian.txt" -game "infra_dlc1" 2>/dev/null
echo -e "${BLUE}compiling infra:${NC}"
wine "source_captioncompiler\captioncompiler.exe" "INFRA_russian.txt" -game "infra_dlc1" 2>/dev/null
echo -e "${BLUE}compiling subtitles:${NC}"
wine "source_captioncompiler\captioncompiler.exe" "subtitles_russian.txt" -game "infra_dlc1" 2>/dev/null

#mkdir -p infra_dlc1/pak01/materials/models/{items,props_building_detail,props_central,props_city,props_clutter} infra_dlc1/pak01/materials/{decals,vgui}

defaultFlag="NOLOD"
defaultFormat="DXT1"

echo -e "${BLUE}making VTFs...${NC}"
while IFS= read -r -d '' file; do
	echo "$file"
	override=$(grep "$file" vtf-definitions.csv | head -1 | tr -d '\040\011\012\015')
	if [ ! -z "$override" ]; then
		overrideFlag=$(echo "$override" | cut -f2 -d",")
		overrideFormat=$(echo "$override" | cut -f3 -d",")
		echo -e "${PURPLE}overriding convertion params for ${file}: ${overrideFlag} ${overrideFormat}${NC}"
		wine "vtflib/VTFCmd.exe" -file "$file" -flag "${overrideFlag}" -nothumbnail -recurse -format "${overrideFormat}" -alphaformat "${overrideFormat}" 2>/dev/null
	else
		wine "vtflib/VTFCmd.exe" -file "$file" -flag "${defaultFlag}" -nothumbnail -recurse -format "${defaultFormat}" -alphaformat "${defaultFormat}" 2>/dev/null
	fi
done < <(find infra_dlc1 -type f -name "*.png" -print0)

find infra_dlc1 -type f ! -name '*.vtf' ! -name '*.res' ! -name '*.dat' ! -name '*.txt' -delete
rm -f infra_dlc1/gameinfo.txt infra_dlc1/resource/subtitles_english.txt > /dev/null 2>&1

echo -e "${BLUE}making VPK...${NC}"
vpk generate_keypair pak01
vpk -M -k pak01.publickey.vdf -K pak01.privatekey.vdf "$DIR/infra_dlc1/pak01"

rm -rf infra_dlc1/pak01

echo -e "${BLUE}packing distros...${NC}"
zip -q -9 -r infra-ru infra platform infra_dlc1

echo -e "${BLUE}all done!${NC}"
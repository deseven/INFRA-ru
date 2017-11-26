#!/bin/bash

export DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH:$HOME/.bin
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$DIR"

BLUE='\033[1;34m'
NC='\033[0m'

echo -e "${BLUE}cleaning old stuff...${NC}"
rm -f infra/resource/*.dat
rm -rf infra_dlc1
rm -f infra-ru.zip infra-ru-override.zip
rm -f pak01.publickey.vdf pak01.privatekey.vdf

echo -e "${BLUE}compiling closecaption:${NC}"
wine "source_captioncompiler\captioncompiler.exe" "closecaption_russian.txt" -game "infra" 2>/dev/null
echo -e "${BLUE}compiling gameui:${NC}"
wine "source_captioncompiler\captioncompiler.exe" "gameui_russian.txt" -game "infra" 2>/dev/null
echo -e "${BLUE}compiling infra:${NC}"
wine "source_captioncompiler\captioncompiler.exe" "INFRA_russian.txt" -game "infra" 2>/dev/null
echo -e "${BLUE}compiling subtitles:${NC}"
wine "source_captioncompiler\captioncompiler.exe" "subtitles_russian.txt" -game "infra" 2>/dev/null

#mkdir -p infra_dlc1/pak01/materials/models/{items,props_building_detail,props_central,props_city,props_clutter} infra_dlc1/pak01/materials/{decals,vgui}

cp -r infra_dlc1_src infra_dlc1

echo -e "${BLUE}making VTFs...${NC}"
wine "vtflib/VTFCmd.exe" -folder "infra_dlc1\*.png" -flag "NOLOD" -nothumbnail -recurse 2>/dev/null
find infra_dlc1 -type f ! -name '*.vtf' -delete

echo -e "${BLUE}making VPK...${NC}"
vpk generate_keypair pak01
vpk -M -k pak01.publickey.vdf -K pak01.privatekey.vdf "$DIR/infra_dlc1/pak01"

rm -rf infra_dlc1/pak01

echo -e "${BLUE}packing distros...${NC}"
zip -q -9 -r infra-ru infra platform infra_dlc1 -x *.txt*

echo -e "${BLUE}all done!${NC}"
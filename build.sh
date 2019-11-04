#!/bin/bash

DEBUG=false
defaultFlag="NOLOD"
defaultFormat="DXT5"

exec 3>&1
exec 4>&2

if [ "$DEBUG" == "false" ]; then
	exec 1>/dev/null
	exec 2>/dev/null
fi

export DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH:$HOME/.bin
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$DIR"

BLUE='\033[1;34m'
PURPLE='\033[1;35m'
RED='\033[1;31m'
NC='\033[0m'

echo -e "${BLUE}[cleaning up]${NC}" 1>&3
rm -f infra/resource/*.dat
rm -f infra_russian/pak01/materials/vgui/logo.vtf
rm -rf infra_russian/pak0*.vpk
rm -f infra-ru.7z
if [ "$1" == "clean" ] || [ "$1" == "release" ]; then
	rm -rf infra_russian
fi

rsync -am --include='*.png' --include='*.tga' --include='*.vtf' --include='*.txt' --include='*/' --exclude='*' infra_russian_src/ infra_russian/

echo -e "${BLUE}[compiling closecaption]${NC}" 1>&3
wine "source_captioncompiler\captioncompiler.exe" "closecaption_russian.txt" -game "infra_russian"
echo -e "${BLUE}[compiling gameui]${NC}" 1>&3
wine "source_captioncompiler\captioncompiler.exe" "gameui_russian.txt" -game "infra_russian"
echo -e "${BLUE}[compiling infra]${NC}" 1>&3
wine "source_captioncompiler\captioncompiler.exe" "INFRA_russian.txt" -game "infra_russian"
echo -e "${BLUE}[compiling subtitles]${NC}" 1>&3
wine "source_captioncompiler\captioncompiler.exe" "subtitles_russian.txt" -game "infra_russian"

if [ "$1" != "release" ]; then
	convert logo.png -gravity South -background none -font Tahoma -pointsize 16 -fill '#eeeeee' -annotate +0+60 "russian localization rev.$(git rev-parse --short HEAD), built on $(date '+%d.%m.%Y %H:%I:%S')" infra_russian/pak01/materials/vgui/logo.png
fi

echo -e "${BLUE}[making VTFs]${NC}" 1>&3
while IFS= read -r -d '' file; do
	if [ -f "${file%%.*}.vtf" ]; then
		echo -e "${PURPLE}skipping $file (VTF found)${NC}" 1>&3
		continue
	fi
	commands+="while [ ! -f \"${file%%.*}.vtf\" ]; do echo \"$(basename ${file} .${file##*.})\";"
	override=$(grep "$file" vtf-definitions.csv | head -1 | tr -d '\040\011\012\015')
	if [ ! -z "$override" ]; then
		overrideFlag=$(echo "$override" | cut -f2 -d",")
		overrideFormat=$(echo "$override" | cut -f3 -d",")
		echo -e "${PURPLE}overriding convertion params for ${file}: ${overrideFlag} ${overrideFormat}${NC}"
		commands+="wine \"vtflib/VTFCmd.exe\" -file \"$file\" -flag \"$overrideFlag\" -format \"$overrideFormat\" -alphaformat \"$overrideFormat\" 2>/dev/null"
	else
		commands+="wine \"vtflib/VTFCmd.exe\" -file \"$file\" -flag \"$defaultFlag\" -format \"$defaultFormat\" -alphaformat \"$defaultFormat\" 2>/dev/null"
	fi
	commands+=";done"$'\n'
	commands_check+="[ -f \"${file%%.*}.vtf\" ] || echo -e \"${RED} = = = file ${file%%.*}.vtf does not exist = = =${NC}\" 1>&3"$'\n'

done < <(find infra_russian -type f \( -iname '*.png' -o -iname '*.tga' \) -print0)

echo "$commands" | parallel --bar :::: 2>&3
echo "$commands_check" | parallel ::::
total=$(find infra_russian -type f -iname '*.vtf' | grep -c '')
echo -e "${PURPLE}$total total textures${NC}" 1>&3

find infra_russian -type f ! -name '*.vtf' ! -name '*.res' ! -name '*.dat' ! -name '*.txt' -delete
rm -f infra_russian/gameinfo.txt infra_russian/resource/subtitles_english.txt

echo -e "${BLUE}[making VPK]${NC}" 1>&3
if [ ! -f "pak01.publickey.vdf" ] || [ ! -f "pak01.privatekey.vdf" ]; then
	vpk generate_keypair pak01
fi
vpk -M -k pak01.publickey.vdf -K pak01.privatekey.vdf "$DIR/infra_russian/pak01"

echo -e "${BLUE}[packing distro]${NC}" 1>&3
7za a -r -t7z -xr!pak01 -mx9 infra-ru.7z infra_russian

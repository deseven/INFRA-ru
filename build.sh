#!/bin/bash

BLUE='\033[1;34m'
NC='\033[0m'

echo -e "${BLUE}cleaning old stuff...${NC}"
rm -f infra/resource/*.dat
rm -f infra-ru.zip infra-ru-override.zip

echo -e "${BLUE}compiling closecaption:${NC}"
wine "source_captioncompiler\captioncompiler.exe" "closecaption_russian.txt" -game "infra" 2>/dev/null
echo -e "${BLUE}compiling gameui:${NC}"
wine "source_captioncompiler\captioncompiler.exe" "gameui_russian.txt" -game "infra" 2>/dev/null
echo -e "${BLUE}compiling infra:${NC}"
wine "source_captioncompiler\captioncompiler.exe" "INFRA_russian.txt" -game "infra" 2>/dev/null
echo -e "${BLUE}compiling subtitles:${NC}"
wine "source_captioncompiler\captioncompiler.exe" "subtitles_russian.txt" -game "infra" 2>/dev/null

echo -e "${BLUE}packing distros...${NC}"
zip -q -9 -r infra-ru infra platform -x *.txt*

mv "infra/resource/closecaption_russian.dat" "infra/resource/closecaption_english.dat" 2>/dev/null
mv "infra/resource/gameui_russian.dat" "infra/resource/gameui_english.dat" 2>/dev/null
mv "infra/resource/INFRA_russian.dat" "infra/resource/INFRA_english.dat" 2>/dev/null
mv "infra/resource/subtitles_russian.dat" "infra/resource/subtitles_english.dat" 2>/dev/null

zip -q -9 -r infra-ru-override infra platform -x *.txt*

mv "infra/resource/closecaption_english.dat" "infra/resource/closecaption_russian.dat" 2>/dev/null
mv "infra/resource/gameui_english.dat" "infra/resource/gameui_russian.dat" 2>/dev/null
mv "infra/resource/INFRA_english.dat" "infra/resource/INFRA_russian.dat" 2>/dev/null
mv "infra/resource/subtitles_english.dat" "infra/resource/subtitles_russian.dat" 2>/dev/null

echo -e "${BLUE}all done!${NC}"
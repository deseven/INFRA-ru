#!/bin/bash

rm -f infra/resource/*.dat
rm -f infra-ru.zip infra-ru-override.zip

wine "source_captioncompiler\captioncompiler.exe" "closecaption_russian.txt" -game "infra"
wine "source_captioncompiler\captioncompiler.exe" "gameui_russian.txt" -game "infra"
wine "source_captioncompiler\captioncompiler.exe" "INFRA_russian.txt" -game "infra"
wine "source_captioncompiler\captioncompiler.exe" "subtitles_russian.txt" -game "infra"

zip -9 -r infra-ru infra platform -x *.txt*

mv "infra/resource/closecaption_russian.dat" "infra/resource/closecaption_english.dat"
mv "infra/resource/gameui_russian.dat" "infra/resource/gameui_english.dat"
mv "infra/resource/INFRA_russian.dat" "infra/resource/INFRA_english.dat"
mv "infra/resource/subtitles_russian.dat" "infra/resource/subtitles_english.dat"

zip -9 -r infra-ru-override infra platform -x *.txt*

mv "infra/resource/closecaption_english.dat" "infra/resource/closecaption_russian.dat"
mv "infra/resource/gameui_english.dat" "infra/resource/gameui_russian.dat"
mv "infra/resource/INFRA_english.dat" "infra/resource/INFRA_russian.dat"
mv "infra/resource/subtitles_english.dat" "infra/resource/subtitles_russian.dat"

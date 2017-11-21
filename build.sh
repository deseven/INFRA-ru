#!/bin/bash

rm -f infra/resource/*.dat
rm -f release.zip

wine "source_captioncompiler\captioncompiler.exe" "closecaption_russian.txt" -game "infra"
wine "source_captioncompiler\captioncompiler.exe" "gameui_russian.txt" -game "infra"
wine "source_captioncompiler\captioncompiler.exe" "INFRA_russian.txt" -game "infra"
wine "source_captioncompiler\captioncompiler.exe" "subtitles_russian.txt" -game "infra"

zip -r release infra platform -x *.txt*

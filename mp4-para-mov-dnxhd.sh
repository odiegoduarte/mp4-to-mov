#!/bin/bash

# Criado por Diego Duarte 2021
# Shell script que converte vídeos MP4 para MOV em lotes, usando o ffmpeg.
# Link do projeto no Github https://github.com/odiegoduarte/mp4-to-mov


function print_centered {
     [[ $# == 0 ]] && return 1

     declare -i TERM_COLS="$(tput cols)"
     declare -i str_len="${#1}"
     [[ $str_len -ge $TERM_COLS ]] && {
          echo "$1";
          return 0;
     }

     declare -i filler_len="$(( (TERM_COLS - str_len) / 2 ))"
     [[ $# -ge 2 ]] && ch="${2:0:1}" || ch=" "
     filler=""
     for (( i = 0; i < filler_len; i++ )); do
          filler="${filler}${ch}"
     done

     printf "%s%s%s" "$filler" "$1" "$filler"
     [[ $(( (TERM_COLS - str_len) % 2 )) -ne 0 ]] && printf "%s" "${ch}"
     printf "\n"

     return 0
}


echo -e
print_centered "-"  "-" 
print_centered "> Convertendo vídeo de MP4 para MOV preset PRORES profile 0 <"
print_centered "-"  "-" 
echo -e

set -e
origdir="./Original"
shopt -s extglob nullglob

if [ ! -d "$origdir" ];
then
echo "Creating $origdir directory."
mkdir "$origdir"
fi

for vid in *.mp4; do  
noext="${vid%.mp4}"    
ffmpeg -i "$vid" -acodec pcm_s16le -vcodec dnxhd -profile:v dnxhr_hq -pix_fmt yuv422p "${noext// /_}.mov"
mv "$vid" "$origdir"

done

echo -e
print_centered "-"  "-" 
print_centered "> Convertido para .MOV preset DNX HD <"
print_centered "-"  "-" 
echo -e
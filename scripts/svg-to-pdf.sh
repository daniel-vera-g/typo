#!/bin/sh

# Convert an svg file to pdf:
# https://superuser.com/questions/381125/how-do-i-convert-an-svg-to-a-pdf-on-linux
inkscape "$1" --export-pdf="$2"
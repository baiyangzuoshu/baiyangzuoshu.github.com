#!/bin/sh
#需要先安装brew install imagemagick
#需要先安装brew install webp
for FILE in *.jpg
do
    magick $FILE ${FILE}.webp
done

for FILE in *.png
do
    magick $FILE ${FILE}.webp
done

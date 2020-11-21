#!/bin/bash
#brew install imagemagick
#brew install webp

function    travFolder(){
    echo "travFolder"
    flist=`ls $1`
    cd $1
    #echo $flist
    for f in $flist
    do
        if test -d $f
        then
            #echo "dir:$f"
            travFolder $f
        else
            #echo "file:$f"
            magick $f ${f}.webp && rm $f
        fi
    done
    cd ../
}

dir=.
travFolder $dir

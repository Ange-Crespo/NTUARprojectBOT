#!/bin/bash


data="data"

mkdir -p $data

if [ -d $1 ] ; then
    echo "$1 is a directory we will unzip every file of this directory"

    for files in $1/*
    do
        echo "Processing files"
        lbzip2 -d $files
    done
fi
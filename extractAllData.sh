#!/bin/bash

bzip2 -dk enwiki-latest-pages-articles.xml.bz2

if [ -d $1 ] ; then
    echo "$PASSED is a directory we will unzip every file of this directory";

    for files in $1/*
        echo "Processing $files"
        lbzip2 -d $files
        
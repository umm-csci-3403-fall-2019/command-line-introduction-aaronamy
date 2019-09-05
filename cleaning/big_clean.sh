#!/bin/bash

archive=$1 #This is the compressed archive we're going to work with.
archiveName=${archive%.*} #We'll use this to navigate to the directory that contains our extracted files.
directory=$2 #This is the scratch directory we're going to work in.
tar -xf "$archive" -C "$directory" #We uncompress and extract the input archive to the input directory.
home="$PWD" #We'll keep track of this in case we need to go back to this location later.
cd "$directory"/"$archiveName"
grep -lrIZ "DELETE ME!" . | xargs -0 rm -f --
cd "$directory"
tar -zcf "$home"/cleaned_"$archive" "$archiveName" #We compress the archive, renaming it and sending it to the appropriate place.

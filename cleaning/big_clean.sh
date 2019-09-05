#!/bin/bash

archive=$1 #This is the compressed archive we're going to work with.
directory=$2 #This is the scratch directory we're going to work in.
tar -xvf "$archive" -C "$directory" #We uncompress and extract the input archive to the input directory.

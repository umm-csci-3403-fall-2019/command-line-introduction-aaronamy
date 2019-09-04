#!/bin/bash

n=$1 #We're using the function NthPrime, so we'll call our input n.
directory=$2
tar -xf NthPrime.tgz -C "$directory" #We extract the archive to the input directory.
cd "$directory"/NthPrime || exit #We enter the directory where the files were extracted to, or exit if for some reason that directory doesn't exist.
gcc -o NthPrime main.c nth_prime.c #We compile and link the C code in one step.
./NthPrime "$n" #We call the program we created using our input n.

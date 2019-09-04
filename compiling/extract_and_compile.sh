#!/bin/bash

n=$1
directory=$2
tar -xf NthPrime.tgz -C $directory
cd $directory/NthPrime
gcc -o NthPrime main.c nth_prime.c
./NthPrime $n

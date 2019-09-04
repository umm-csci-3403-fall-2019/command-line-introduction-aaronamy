#!/bin/bash

primeNumber=$1
directory=$2
tar -xvf NthPrime.tgz -C $directory
cd $directory/NthPrime
gcc -o NthPrime main.c nth_prime.c

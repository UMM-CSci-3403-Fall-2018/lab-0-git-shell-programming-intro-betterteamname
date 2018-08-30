#! /bin/bash

Number=$1
Directory=$2
Location='/home/score022/Documents/csci3403/lab-0-git-shell-programming-intro-betterteamname/compiling/NthPrime.tgz'

mkdir $Directory
tar xvfz NthPrime.tgz -C $Directory

cd $Directory
cd NthPrime

gcc -Wall nth_prime.h nth_prime.c main.c -o NthPrime

./NthPrime $Number

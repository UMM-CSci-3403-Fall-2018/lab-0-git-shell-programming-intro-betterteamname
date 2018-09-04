#! /bin/bash

Name=$1
Directory=$2

Here=$(pwd)

mkdir $Directory
tar xfz $Name -C $Directory

cd $Directory

grep -rl "DELETE ME" . | xargs rm

NewName="cleaned_$Name"
NewDir=${1%.*}

tar -czf $NewName $NewDir
mv $NewName $Here

#!/bin/sh -l

# echo "Hello $1"
# time=$(date)
# echo "time=$time" >> $GITHUB_OUTPUT

cd $1 || exit
pip install -t ./package -r requirements.txt
cd package || exit
zip -r ../sample-lambda-$GITHUB_SHA.zip .
cd ..
zip sample-lambda-$GITHUB_SHA.zip *.py
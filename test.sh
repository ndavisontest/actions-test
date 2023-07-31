#!/bin/bash

GH=$(git config --get http.https://github.com/.extraheader | base64 | tr -d '\n')

echo $GH

echo $GH | gh auth login --with-token


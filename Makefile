GITHUB_TOKEN="${GITHUB_TOKEN}"

test:
	echo "${GITHUB_TOKEN}" | base64

.PHONY: clean test

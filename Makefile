test:
	go test -v -cover -coverprofile cp.out -p 1 -race ${FLAGS} ${TEST_PKGS}

.PHONY: clean test

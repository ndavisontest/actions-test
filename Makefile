test:
	git checkout -b blabla3
	echo "hello" > hello.txt
	git add hello.txt
	git commit -m "Hello"
	git push origin blabla3

.PHONY: clean test


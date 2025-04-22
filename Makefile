test:
	git checkout -b blabla2
	echo "hello" > hello.txt
	git add hello.txt
	git commit -m "Hello"
	git push origin blabla2

.PHONY: clean test




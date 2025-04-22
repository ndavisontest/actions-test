test:
	git config --global user.email "you@example.com"
	git config --global user.name "Your Name"
	git checkout -b blabla3
	echo "hello" > hello.txt
	git add hello.txt
	git commit -m "Hello"
	git push origin blabla3

.PHONY: clean test



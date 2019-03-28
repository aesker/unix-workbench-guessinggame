all:	README.md

README.md:
	touch README.md
	echo "Title of Project: guessinggame.sh" > README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
	date >> README.md

clean:
	rm README.md


.PHONY: test

README.rst: README.md
	pandoc -f markdown -t rst < README.md > README.rst

test:
	nosetests -v -s --with-coverage --cover-package=teena ${NOSE_OPTS}

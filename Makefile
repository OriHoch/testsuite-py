.PHONY: all develop list test

all: list

install-git:
	pip install --upgrade -r requirements.git.txt

install-pypi:
	pip install --upgrade -r requirements.pypi.txt

list:
	@grep '^\.PHONY' Makefile | cut -d' ' -f2- | tr ' ' '\n'

test:
	behave -s --tags=-wip features/datapackage
	behave -s --tags=-wip features/jsontableschema

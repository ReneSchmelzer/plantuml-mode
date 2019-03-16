#
# Programs used in the make goals
#
export CASK ?= cask
export EMACS ?= emacs

#
# General configuration
#
export CASK_DIR ?= `${CASK} package-directory`
export BATCH     = --batch -q -l .emacs/init.el

all: version test

version:
	$(EMACS) $(BATCH) --version

test: install unit

unit:
	${CASK} exec ert-runner

install:
	${CASK} install

dev-package:
	$(EMACS) -q --script ./create-plantuml-mode-dev-package.el

dist-clean:
	rm -Rf .emacs.d
	rm -Rf .cask

clean:
	rm -Rf dist/*

.PHONY: all test unit install clean

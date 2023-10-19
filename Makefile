#!/usr/bin/env make

SHELL := /bin/zsh
BREW := $(shell if command -v brew &> /dev/null; then echo "brew"; else echo "/opt/homebrew/bin/brew"; fi)
HOMESHICK := $(shell if command -v homeshick &> /dev/null; then echo "homeshick"; else echo "/opt/homebrew/Cellar/homeshick/2.0.1/bin/homeshick"; fi)

.PHONY: *

brew:
	$(BREW) bundle

castle:
	$(HOMESHICK) --batch clone $(shell git config --local remote.origin.url)
	$(HOMESHICK) link
	exec $(SHELL) -l

init:
	direnv allow

install:
	/bin/bash -c ./install_packages.sh

lint:
	pre-commit run -a

#!/usr/bin/env zsh

GPG_TTY=$(tty)
export GPG_TTY

gpgconf --launch gpg-agent

#!/usr/bin/env zsh

for file in pkg/*.sh; do
    # shellcheck disable=1090
    # This variable is generated from glob so it's expected to be unknown in this file.
    [ -f "$file" ] && . "$file"
done
unset file

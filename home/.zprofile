#!/usr/bin/env bash

### Managed .profile.d
for file in "$HOME"/.profile.d/*.sh; do
    # shellcheck disable=1090
    [ -f "$file" ] && . "$file"
done
unset file

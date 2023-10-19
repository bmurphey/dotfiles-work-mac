#!/usr/bin/env zsh

if [[ -n "${INSTALL_OMZ}" ]]; then
    if [[ "$ZSH" =~ "oh-my-zsh" ]]; then
        echo "oh-my-zsh already installed; skipping."
    else
        echo "Installing oh-my-zsh."
        sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    fi
else
    echo "Not opted into oh-my-zsh install; skipping."
fi

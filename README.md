# Dotfiles Bootstrap for MacOS (Apple Silicon)

This repo is intended to make bootstrapping a new machine easier and to keep track of config files that have been customized.

## Bootstrap

Install homebrew:

```sh
/bin/zsh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Install initial dependencies:

```sh
/opt/homebrew/bin/brew install gcc gh homeshick
```

## Setup

Run the following Make targets (take a look at the `Makefile` to see what they do):

```sh
export INSTALL_OMZ=1 # if you want to install Oh My Zsh
make install
make brew
make castle
```

To verify everything is set up correctly:

```sh
ll ~   # You should see lots of symlinks in your home directory
command -v direnv     # This should return: /opt/homebrew/bin/direnv
command -v homeshick  # This should return: homeshick
make init  # This should kick off the repo's direnv script
```
To install vim plugins for linters etc., run:

```sh
vim temp
```

to open a temporary file, then type:

```sh
:PlugInstall
```

Once it says the installation is finished, type:

```sh
:q!
```

To quit without saving.

If you've reached this point, you're all finished!

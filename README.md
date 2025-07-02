# dotfiles ☕

This directory contains the dotfiles for my system and development workflow.

## Requirements

Make sure the following tools are installed on your system. The commands below use Homebrew for macOS, substitute with your preferred package manager for Linux or Windows.

### Git

```
brew install git
```

### Stow

```
brew install stow
```

## Installation

1. Check out the dotfiles repo in your $HOME directory using git

```
$ git clone git@github.com:aliffamir/dotfiles.git
$ cd dotfiles
```

2. Use GNU stow to create symlinks

```
$ stow .
```

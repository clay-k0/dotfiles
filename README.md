## My Dotfiles
- - -

Here's the list of my dotfiles that I manage with [stow](https://www.gnu.org/software/stow/).
Right now, it's only config files for my M1 MBP, but once 
I (eventually) setup Linux, it'll include those as well.

## Requirements

Ensure you have the following installed:

### Git

Git can be installed using your preferred package manager

For example, using `pacman`:

```sh
pacman -S brew
```

or `brew`:

```sh
brew install git
```

### Stow

Stow can also be installed using your favorite package manager

For example, using `pacman`:

```sh
pacman -S stow
```

or `brew`:

```sh
brew install stow
```

## Installation

Clone this repo in your $HOME directory and navigate to it using the following commands:

```sh
git clone https://github.com/clay-k0/dotfiles.git 
cd dotfiles
```

If anyone other than me uses this, make sure to remove remove `.git`:

```sh
rm -rf .git
```

Then, use GNU stow to create symlinks

```sh
stow .
```

## Usage

### Non-nested Dotfiles

If you copy a non-nested dotfile to this directory (i.e., from `~/{.tmux.conf}` to `~/dotfiles/{.tmux.conf}`), continue using `stow .` to create symlinks.


### Nested Dotfiles

However, if you copy a nested directory containing dotfile(s) in here (i.e. from `~/.config/{starship}` into `~/dotfiles/.config/{starship}`), use the `stow --adopt .` command instead.

Note that this command will also take care of the above mentioned non-nested dotfiles.

## Troubleshooting: Conflicting Changes

If you run into conflicting changes, you can rollback using the `git restore .` command


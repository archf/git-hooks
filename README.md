# git-hooks

A simple script to manage your hooks.

## Do I need this?

Rerunning `git init` within a git repository will cause new files in git
`templatedir` currently missing in `.git` to be added.

This means that files `/.git/hooks/*` files are not **updated**. You have to
manually delete a file to force a new copy into the git repo though. This
script streamline this process.

## How it work!

Just like this:

1. Lookup your `.gitconfig` for the `templatedir` parameter. You can retreive
   current value using `git config --global init.templatedir` command. If
   `templatedir` does exist, it will then look for hooks in
   `<templatedir>/hooks/*`
2. For each file:
  * a backup will be done in current repository `.git/hooks.old` if it already
  exists in `.git/hooks`
  * file `.git/hooks/` is updated

## Usage

run `git hooks` to show detected hooks in your configured `templatedir` as well
as the help menu.

```bash
git hooks
    A custom git command to managed the personal hooks of a user
    see https://github.com/archf/bin

   (no command) Default behavior is to show the list of hooks
                 found in the sure templatedir and show this help

commands:

git hooks (show | install | restore )

    show        List hooks found in 'templatedir'

    install     Install hooks found in a templatedir into a given repo
                The command should be run from within a repository
                Any found hooks are moved to .git/hooks.old'

    restore     Restore hooks moved to '.git/hooks.old' back to '.git/hooks'

    -h |--help  Show this help menu
```

## FAQ

How to locate your current templatedir?

```bash
git config --global init.templatedir
```

# Installation

Put this script somewhere in your path. I like to install those scripts in
`~/bin` whilst `~/bin` is in your path.

A Makefile is provided to do just that.

Clone this repository.

```bash
git clone git@github.com:archf/git-hooks.git
```
And create symlink to script inside git repository.

```bash
make install
```

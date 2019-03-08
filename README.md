# git-hooks

A simple script to manage your hooks.

## Why do I need this?

Rerunning `git init` within an existing git repository will result in only
git 'templatedir' **new hooks** actually missing in `.git/hooks` to be added.
Thus, exising hooks are not updated!

You would have to manually delete a file to force a new copy into the git
repository. This script streamline this process.

## How does it work!

In this order

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
GIT HOOKS
  A custom git command to manage a git repository hooks.
  See https://github.com/archf/git-hooks.

USAGE
  git hooks [OPTIONS] CMD

OPTIONS
  -h|--help   Show this help menu.
  -f|--force  Force hook update.

CMD
  show        List git 'templatedir' available hooks.
  install     Install hooks found inside git 'templatedir' in repository.
              Current hooks are backed up to '.git/hooks.old'. If the hook is
              already found in '.git/hooks.old' it will be skipped unless you
              delete it manually or use the --force option.
  restore     Restore previous set of hooks from '.git/hooks.old'.
  help        Show this help menu.
```

## FAQ

How to locate your current 'templatedir'?

```bash
git config --global init.templatedir
```

# Installation

Clone this repository somewhere and put this script in your PATH.

```bash
git clone git@github.com:archf/git-hooks.git
```

Personally I like to install those kind of scripts in
`~/bin` whilst `~/bin` is in your PATH.

Quickly add a symlink in `~/bin`:

```bash
make install
```

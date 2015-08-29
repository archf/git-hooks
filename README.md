# git-hooks

A simple script to manage your hooks. This is potentially obsolete as i discovered one could safely rerun git init to fetch missing template content in an existing repository. You have to manually delete a file to force a new copy into the git repo though. This script could be a workaroud.

# How it work!

Just like this:

1. lookup your .gitconfig for the templatedir parameter
2. if it does exist it will look for hooks in \${templatedir}/hooks
3. for each file:
  * a backup will be done in .git/hooks.old if it already exists in .git/hooks
  * the file will be copied in .git.hooks:

Why copy? Becauses it allows you to append a command at the end of one of
your hooks to execute scripts that exist in the repo you just cloned.

Before you start, run `git hooks` to show detected hows and the help menu.

# Installation

Put it somewhere in your path. I like to install those scripts in `~/bin` whilst `~/bin` is in your path.

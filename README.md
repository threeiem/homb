~/.homb
====

# Homb uses fresh and bash

This project is to migrate our dotfiles for use with 
<a href="http://freshshell.com/">fresh</a>. This project is currently migrating
to fresh. There is years of cruft and hackery we need to clean out to integrate 
these with fresh. Homb is currently setup for bash only.

## Install Homb

We need to install fetch manually at this point. Here is how:

```
git clone https://github.com/threeiem/homb ~/.homb

```

Homb is seperate, but migrating to fresh so for now we need to source the 
bash resource file for it begin working. This will be baked into fresh 
later.

```
# Homb dotfiles
if [ -f "${HOME}/.homb/bash/rc" ]; then
  source "${HOME}/.homb/bash/rc"
fi

```

## Install fresh

Install fresh with the following:

```
bash -c "`curl -sL get.freshshell.com`"

```

Once fresh is downloaded add this to your ~/.bashrc file...


```
# fresh dotfiles
if [ -f "${HOME}/.fresh/build/shell.sh" ]; then
  source "${HOME}/.fresh/build/shell.sh"
fi

```

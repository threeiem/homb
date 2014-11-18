.homb
====

# .homb uses fresh and bash

.homb is a project for migratng dotfiles for use with 
<a href="http://freshshell.com/">fresh</a>. This project is currently migrating
to fresh. There is years of cruft and hackery we need to clean out to integrate 
these with fresh. .homb is currently setup for bash only.

## Install .homb

We need to install fetch manually at this point. Here is how:

```
git clone https://github.com/threeiem/homb ~/.homb

```

.homb is seperate, but migrating to fresh so for now we need to source the 
bash resource file for it begin working. This will be baked into fresh 
later.

```
# .homb dotfiles
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

Common Problems
======

* <b>Not using bash!</b> 
..* Homb is for bash only. Sorry, maybe another time.

* <b>Non-Interactive Bash</b> 
..* Check to see if you are running an interative shell (that loads ~/.bash_profile) Do this with this command

```
shopt login_shell
```

..* Use the bash -l flag if you are using something like konsole.

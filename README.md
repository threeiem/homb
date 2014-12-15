Homb
====

# Welcome Homb 

The Homb project is set of shell extensions for console applications. It is 
intended for use with <a href="http://freshshell.com/">fresh</a> for managing 
application configurations. 

Currently we have only tested with newer versions of bash on CentOS/Redhat.

## Install Homb

Homb works only with newer versions of bash and also needs git. 

### Just Homb

For this example we install Homb into the ~/.homb directory. Here is how to 
clone .homb into your "${HOME}" or "~" directory.

```
git clone https://github.com/threeiem/homb ~/.homb
```
Now add this line to your ~/.bash_profile file. <b>Do NOT add this line to the
~/.bashrc file!</b> The .homb project is intended for interactive shells only.

```
export HOMBASE="${HOME}/.homb"
source $HOMBASE/rc
```

### Homb with Fresh

The Homb project works with <a href="http://freshshell.com/">fresh</a> to handle
the application configuration files. Fresh is the right hand for .homb and 
functions poorly without <a href="http://freshshell.com/">fresh</a>.

### Install fresh

Install  <a href="http://freshshell.com/">fresh</a> with the following:

```
bash -c "`curl -sL get.freshshell.com`"
```

### Configure Bash (~/.bash_profile)

Once  <a href="http://freshshell.com/">fresh</a> is downloaded add this to your
~/.bash_profile file (not ~/.bashrc).

```
# Set $HOMBASE before source of Fresh's shell.sh
export HOMBASE="${HOME}/.homb"
fpath="${HOME}/.fresh/build/shell.sh" && test -f $fpath && source $fpath

```
### Configure (~/.freshrc)

Add this to the .freshrc file. The location of this file can be configured so we
are using ~/.freshrc in the home directory.

## Common Problems

* <b>Not using bash!</b> Homb is for <b><u>bash only</u></b>. Sorry, maybe another time.

* <b>Non-Interactive Bash</b> Check to see if you are running an interative shell. Check with this command...

```
shopt login_shell
```

* <b>Graphical Does Not Mean Interactive</b> Some terminal programs like konsole do not start bash interactively. For konsole you will need to modify the profile. Here is the command to run bash interactively.

```
bash -l
```


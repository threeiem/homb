.homb
====

# Welcome .homb 

The .homb project is set of shell extensions for console applications. It also
uses <a href="http://freshshell.com/">fresh</a> for managing application 
configurations. Currently we only support newer versions of bash on Linux.

## Install .homb

Git is required for .homb to work. For this example we install .homb into the
~/.homb directory. Here is how to clone .homb into your "${HOME}" or "~" 
directory.

```
git clone https://github.com/threeiem/homb ~/.homb
```

## Configure .homb

Now add this line to your ~/.bash_profile file. <b>Do NOT add this line to the
~/.bashrc file!</b> The .homb project is intended for interactive shells only.

```
HRC="${HOME}/.homb/rc" && test -f $HRC && source $HRC;unset HRC
```

## Fresh and .homb

The .homb project is seperate, but depends on fresh to handle the application
configuration files. Fresh is the right hand for .homb and functions poorly 
without <a href="http://freshshell.com/">fresh</a>.

### Install fresh

Install  <a href="http://freshshell.com/">fresh</a> with the following:

```
bash -c "`curl -sL get.freshshell.com`"
```

### Configure fresh

Once  <a href="http://freshshell.com/">fresh</a> is downloaded add this to your ~/.bash_profile file.


```
FSH="${HOME}/.fresh/build/shell.sh" && test -f $FSH && source $FSH;unset FSH
```

## Schedule

* Development for bash on Mac OSX will begin in early spring, 2015.
* Development for zsh on Linux will begin in later summer 2015.


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


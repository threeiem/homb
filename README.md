.homb
====

# Welcome .homb 

The .homb project is set of shell extensions for console applications. It also
uses <a href="http://freshshell.com/">fresh</a> for managing application 
configurations. Currently we only support newer versions of bash on Linux.
Development for bash on Mac OSX will begin in early spring.

## Install .homb

For this example we install .homb into ~/.homb  Clone .homb into your ${HOME} 
directory "~". Git is required for .homb to work.

```
git clone https://github.com/threeiem/homb ~/.homb

```

## Configure .homb

Now add this line to your ~/.bash_profile file. Do NOT add this line to .bashrc!

```
hombrc="${HOME}/.homb/rc" && test -f $hombrc && source $hombrc

```

# Fresh and .homb

The .homb project is seperate, but depends on fresh to handle the application
configuration files. Fresh is the right hand for .homb and functions poorly 
without <a href="http://freshshell.com/">fresh</a>.

## Install fresh

Install  <a href="http://freshshell.com/">fresh</a> with the following:

```
bash -c "`curl -sL get.freshshell.com`"

```

## Configure fresh

Once  <a href="http://freshshell.com/">fresh</a> is downloaded add this to your ~/.bash_profile file.


```
if [ -f "${HOME}/.fresh/build/shell.sh" ]; then source "${HOME}/.fresh/build/shell.sh" fi

hFresh="${HOME}/.fresh/build/shell.sh" && test -f $hFresh && source $hFresh

```

# Common Problems

* <b>Not using bash!</b> Homb is for <b><u>bash only</u></b>. Sorry, maybe another time.

* <b>Non-Interactive Bash</b> Check to see if you are running an interative shell. Check with this command...

```
shopt login_shell
```

* <b>Graphical Does Not Mean Interactive</b> Some terminal programs like konsole do not start bash interactively. For konsole you will need to modify the profile. Here is the command to run bash interactively.

```
bash -l
```


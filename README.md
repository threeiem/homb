Homb
====

# Welcome Homb 

The Homb project is set of bash extensions for applications. It is intended 
for use with <a href="http://freshshell.com/">fresh</a> for managing application
configurations, including Homb itself. Homb can be installed standalone or with
fresh (recommended). Homb leaves all the application configurations to Fresh 
while Homb extends applications with various completions, helpers, and tools.
See the <a href="https://github.com/threeiem/homb/wiki">wiki</a> for details on
how to use Homb.

Homb only works with newer versions of bash and also relies on 
<a href="http://git-scm.com/">git</a>. Currently we have tested Homb with newer
versions of bash on CentOS/Redhat and flavors of Ubuntu.

# Installing Homb with Fresh 

The Homb project works best with Fresh. 
## Install fresh

Install  <a href="http://freshshell.com/">fresh</a> with the following:
```
bash -c "`curl -sL get.freshshell.com`"
```

## Configure Bash (~/.bash_profile)

Once  <a href="http://freshshell.com/">fresh</a> is downloaded add this to your
~/.bash_profile file (not ~/.bashrc).
```
# Set $HOMBASE before source of Fresh's shell.sh
export HOMBASE="${HOME}/.homb"
fpath="${HOME}/.fresh/build/shell.sh" && test -f $fpath && source $fpath
```
## Configure (~/.freshrc)

Add this to the .freshrc file. In this example we are using "~/.homb/" as the 
setting for the $HOMBASE environment variable in the .bash_profile file.
```
fresh threeiem/homb . --file=~/.homb/
```


# Homb Alone

For this example we install Homb into the ~/.homb directory. Here is how to 
clone .homb into your "${HOME}" or "~" directory.
```
git clone https://github.com/threeiem/homb ~/.homb
```

Now add this line to your ~/.bash_profile file. <b>DO NOT ADD THIS LINE TO THE
~/.bashrc FILE!</b> The .homb project is intended for interactive shells only.
```
export HOMBASE="${HOME}/.homb" && test -e $HOMBASE/rc && source $HOMBASE/rc
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


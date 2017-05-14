Homb
====

[![Join the chat at https://gitter.im/threeiem/homb](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/threeiem/homb?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

# Welcome Homb 

The Homb is set of extensions for bash with all the gory details using 
[fresh](http://freshshell.com/ "Nothing is fresher than this."). 
[Fresh](http://freshshell.com/ "...the freshest.") is required for managing 
configurations, including configuring Homb. Homb leaves all the application 
configurations to Fresh while Homb extends applications with various 
completions, helpers, and tools. See the 
[wiki](https://github.com/threeiem/homb/wiki "Under construction like a mofo!") for details on how to use Homb.

Homb only works with newer versions of bash and also relies on heavily on
[git](http://git-scm.com/ "Git you some."). Currently we have tested Homb with newer
versions of bash on CentOS/Redhat and flavors of Debian (Ubuntu and Raspbian).

# Installing Homb with Fresh 

The Homb project **only works with Fresh**. (Fresh is totally worth setting up.) 
 
## Install fresh

Install  [fresh](http://freshshell.com/ "...so so fresh.") with the following:

```
bash -c "`curl -sL get.freshshell.com`"
```

## Configure Bash (~/.bash_profile)

Once  <a href="http://freshshell.com/">fresh</a> is downloaded add this to your
~/.bash_profile file (not ~/.bashrc).

```
export HOMBASE="${HOME}/.homb"
export FASHO="${HOME}/.fresh/build/shell.sh" && test -f $FASHO && source $FASHO
```
## Configure (~/.freshrc)

Add this to the .freshrc file. In this example we are using "~/.homb/" as the 
setting for the $HOMBASE environment variable in the .bash_profile file.

```
# fresh make me a homb
fresh threeiem/homb . --file=~/.homb/

# fresh load homb
fresh threeiem/homb rc
```


# Homb Alone

The Homb project used to work alone, but now it **requires
[fresh](http://freshshell.com/) to be installed**.


# Common Problems

* Not using bash? **Homb is for bash only.** Save that corn shell for taco night.

* **Non-Interactive Bash** Check to see if you are running an interative shell. Check with this command...
```
shopt login_shell
```

* **Graphical Does Not Mean Interactive** Some terminal programs like konsole do not start bash interactively. For konsole you will need to modify the profile. Here is the command to run bash interactively.
```
bash -l
```


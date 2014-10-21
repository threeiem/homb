###############################################################################
# Bash Shell Resouce File
#
# Contains all the magic for Bash shell with Homb. This all pivots on what is 
# set in the "HOMBACE" variable. All the functions are defined in 
# $HOMBASE/bashlib for this file.
#
###############################################################################
HOMBACE="${HOME}/.homb" # NO TRAILING SLASH

# Load the bashlib library
BASHLIB="${HOMBACE}/bashlib" && test -f $BASHLIB && source $BASHLIB



# Leave if it's not teh bash.
bash_happy|| return;

# Include other resource files
#-------------------------------------------------------------------------------
clood aliases
clood completion.tmux
clood completion.drush
clood bashlib


# Main user
#
# This section is for customizations for the specific user.
#------------------------------------------------------------------------------- 
lookup_name="phil.cogbill"
umask 0002


################################################################################
# Shell variables
################################################################################
export PAGER="less"
export EDITOR="vim"
export LC_ALL="C"
export LANG="en_US.UFT-8"
export IRCNAME="Federal Holiday"
export DISPLAY_CONNECT="${DISPLAY}"
export CUSTOM_SSH_AUTH_SOCK=${HOME}/.ssh/ssh_auth_sock


# History File Specifics
#-------------------------------------------------------------------------------
export HISTTIMEFORMAT="%F %T - "
export HISTFILESIZE="4000000"
export HISTSIZE="4000000"
export HISTCONTROL="ignoredups"

# VCS variables
#-------------------------------------------------------------------------------
export SVN_EDITOR="vim"

# Pick the prompt based on the system
#------------------------------------------ -------------------------------------
export BASIC_PROMPT='\u@\h \$ ' #basic prompt

CRAZY_PROMPT='\[\033[1;34;40m\]\u\[\033[0;37;40m\]@\[\033[1;37;40m\]\h\[\033[0;37;40m\][\[\033[0;32;40m\]\w\[\033[0;37;40m\]]\n\$ '; 

ADMIN_PROMPT='\[\033[3;31;40m\]\u\[\033[0;37;40m\]@\[\033[1;37;40m\]\h\[\033[0;37;40m\][\[\033[0;31;40m\]\w\[\033[0;37;40m\]]\n\$ '; 

# Check what promt to load so we don't have to change this file for each user.  
#------------------------------------------------------------------------------- 
if [ $USER != $lookup_name ]
then
  CRAZY_PROMPT=$ADMIN_PROMPT
fi

# Export the value
export CRAZY_PROMPT


if [ $(test_socket_link "${CUSTOM_SSH_AUTH_SOCK}") ]; then

  export SSH_AUTH_SOCK="${CUSTOM_SSH_AUTH_SOCK}"

fi



# Switch the prompt based on the terminal we are using.
#------------------------------------------------------------------------------- 
case $TERM in

  ansi*)
    if [ $USER = $lookup_name ]
    then
	    PS1=$CRAZY_PROMPT
    else
      PS1=$ADMIN_PROMPT
    fi
    ;;

  screen*)
	  PS1=$CRAZY_PROMPT
    ;;

  linux*)
	  PS1=$CRAZY_PROMPT
    ;;

  xterm*)
	  PS1=$CRAZY_PROMPT
    ;;

  putty-*)
	  PS1=$CRAZY_PROMPT
	  ;;

  *)
    PS1=$BASIC_PROMPT
    ;;

esac


# Export the path (important)
#-------------------------------------------------------------------------------
export PATH=$PATH

# vim:syntax=sh

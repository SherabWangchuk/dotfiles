#
# General bash-settings
#
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

export PS1="[\[\033[0m\]\[\033[1;31m\]\w\[\033[0m\]] $ "
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

alias mykinit='kinit -l 7d mdemmer@CERN.CH'
alias updatedb='source ~/updatedb.sh'
alias ll='ls -la -G'
alias grep='grep --color=auto'
alias cl='clear'
alias ..='cd ..'

alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'



alias mount-eve='sshfs eve:/home/mdemmer /Users/mdemmer/Desktop/eve -o auto_cache,reconnect,volname=EVE,noappledouble,follow_symlinks'
alias mount-klaus='sshfs klaus:/home/mdemmer /Users/mdemmer/Desktop/klaus -o auto_cache,reconnect,volname=KLAUS,noappledouble,follow_symlinks'
alias mount-phido='sshfs phido3:/home/mdemmer /Users/mdemmer/Desktop/phido -o auto_cache,reconnect,volname=PhiDO,noappledouble,follow_symlinks'
alias mount-fhgfs='sshfs eve:/fhgfs /Users/mdemmer/Desktop/fhgfs -o auto_cache,reconnect,volname=FHGFS,noappledouble,follow_symlinks'
alias mount-fhgfshome='sshfs eve:/fhgfs/users/mdemmer /Users/mdemmer/Desktop/fhgfs_home -o auto_cache,reconnect,volname=FHGFS_Home,noappledouble,follow_symlinks'
alias mount-storage03='sshfs eve:/net/storage03/data/users/mdemmer /Users/mdemmer/Desktop/storage03 -o auto_cache,reconnect,volname=storage03_home,noappledouble,follow_symlinks'

alias unmount-eve='umount -f /Users/mdemmer/Desktop/eve'
alias unmount-klaus='umount -f /Users/mdemmer/Desktop/klaus'
alias unmount-phido='umount -f /Users/mdemmer/Desktop/phido'
alias unmount-fhgfs='umount -f /Users/mdemmer/Desktop/fhgfs'
alias unmount-fhgfshome='umount -f /Users/mdemmer/Desktop/fhgfs_home'




#
# Settings for ROOT
#
PATH=`echo $PATH | perl -e 'while(<>){s/[^:]*root[^:]*://g;print;}'` # remove any ROOTs from path
LD_LIBRARY_PATH=`echo $LD_LIBRARY_PATH | perl -e 'while(<>){s/[^:]*root[^:]*://g;print;}'` # remove any ROOTs from lib path

export ROOTSYS=/Users/mdemmer/root
export PATH=$ROOTSYS/bin:$PATH
export LD_LIBRARY_PATH=$ROOTSYS/lib:$LD_LIBRARY_PATH
#export PYTHONPATH=$ROOTSYS/lib:$PYTHONPATH:/Users/mdemmer/OneDrive/Code/pid_resample/python
export DYLD_LIBRARY_PATH=$ROOTSYS/lib:$DYLD_LIBRARY_PATH

source $ROOTSYS/bin/thisroot.sh

# Settings for rootpy & Co
export PATH=$PATH:/Users/mdemmer/.local/bin
#
# Settings for LHCb-Software
#
export MYSITEROOT=$ROOTSYS


#
# Settings for DooSoftware
#

# DooCore
export DOOCORESYS="/Users/mdemmer/DooSoftware/DooCore"
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$DOOCORESYS/lib
export DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH:$DOOCORESYS/lib
export PATH=$PATH:$DOOCORESYS/bin

# DooFit
export DOOFITSYS="/Users/mdemmer/DooSoftware/DooFit"
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$DOOFITSYS/lib
export DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH:$DOOFITSYS/lib
export PATH=$PATH:$DOOFITSYS/bin

# DooSelection
export DOOSELECTIONSYS="/Users/mdemmer/DooSoftware/DooSelection"
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$DOOSELECTIONSYS/lib
export DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH:$DOOSELECTIONSYS/lib
export PATH=$PATH:$DOOSELECTIONSYS/bin



#
# HISTORY SETTINGS
#

# don't put duplicate lines in the history. See bash(1) for more options
# don't overwrite GNU Midnight Commander's setting of `ignorespace'.
export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups

# ... or force ignoredups and ignorespace
export HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# append when showing new prompt instead at closing
export PROMPT_COMMAND='history -a'

export HISTFILE=~/.bash_history
export HISTFILESIZE=1000
export HISTSIZE=$HISTFILESIZE

#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*


# added by Anaconda 2.2.0 installer
export PATH="/Users/mdemmer/anaconda/bin:$PATH"

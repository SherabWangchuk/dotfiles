export PS1="[\w] $ "

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

#
# ALIASES
#

alias ll='ls -l -G'


#
# PATH
#

PATH=`echo $PATH | perl -e 'while(<>){s/[^:]*root[^:]*://g;print;}'` # remove any ROOTs from path
LD_LIBRARY_PATH=`echo $LD_LIBRARY_PATH | perl -e 'while(<>){s/[^:]*root[^:]*://g;print;}'` # remove any ROOTs from lib path


#
# ENV.VARIABLES
#

export ROOTSYS=/Users/mdemmer/Library/root

export PATH=$ROOTSYS/bin:$PATH
export LD_LIBRARY_PATH=$ROOTSYS/lib:$LD_LIBRARY_PATH
#export PYTHONPATH=$ROOTSYS/lib:$PYTHONPATH
export MYSITEROOT=/Applications/LHCb_Software

# DooSoftware
#export DOOCORESYS=/DooSoftware/DooCore
#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$DOOCORESYS/lib
#export PATH=$PATH:$DOOCORESYS/bin

source ~/root/bin/thisroot.sh

#PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

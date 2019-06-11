# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

xrdb ~/.Xresources

source /usr/share/git-core/contrib/completion/git-prompt.sh
# export PS1='\[\033[01;32m\]\u@\h\[\033[00m\] \[\033[01;34m\]\W\[\033[00m\]\[\033[01;33m\]$(declare -F __git_ps1 &>/dev/null && __git_ps1 " (%s)")\[\033[00m\] '

export PS1='\[\033[01;31m\]\u\[\033[00m\]\[\033[01;38m\]@\h \W\[\033[00m\]\[\033[01;33m\]$(declare -F __git_ps1 &>/dev/null && __git_ps1 " (%s)")\[\033[00m\] # '

# alternative prompt
# export PS1='\[\033[01;32m\][\u@\h\[\033[00m\] \W\[\033[01;33m\]$(declare -F __git_ps1 &>/dev/null && __git_ps1 " (%s)")\[\033[00m\]\[\033[01;32m\]]\$\[\033[00m\] '

export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWSTASHSTATE=true

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# bochs command for ifi subject IN3151 Operative systems
export PATH=$PATH:/hom/inf3151/tools/bin
alias bochsdgb='bochs -f /uio/hume/student-u01/sohaibn/.bochsrc_debug'

# User specific aliases and functions
alias ifi="ssh -YC sohaibn@login.ifi.uio.no"
alias ifi_"sql=psql -h dbpg-ifi-kurs -U sohaibn -d sohaibn" # Foretrukket
alias ifi_sql_fdb="psql -h dbpg-ifi-kurs -U sohaibn -d fdb" # Når du skal jobbe med filmdatabasen

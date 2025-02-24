# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=100000
HISTFILESIZE=200000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

# new line
NEWLINE_BEFORE_PROMPT="yes"

if [ "$color_prompt" = yes ]; then
#PS1="\[\033[0;38;5;123m\]\342\224\214\342\224\200\$([[ \$? != 0 ]] && echo \"[\[\033[0;38;5;123m\]\342\234\227\[\033[0;38;5;123m\]]\342\224\200\")[$(if [[ ${EUID} == 0 ]]; then echo '\[\033[01;31m\]root\[\033[01;33m\]@\[\033[01;96m\]\h'; else echo '\[\033[0;37m\]\u\[\033[01;33m\]@\[\033[01;96m\]\h'; fi)\[\033[0;38;5;123m\]]\342\224\200[\[\033[0;38;5;231m\]\w\[\033[0;38;5;123m\]]\n\[\033[0;38;5;123m\]\342\224\224\342\224\200\342\224\200\342\225\274 \[\033[0m\]\[\e[01;33m\]\\$ \[\e[0m\]"

<<<<<<< HEAD
PS1="\[\033[0;38;5;117m\]\342\224\214\342\224\200\$([[ \$? != 0 ]] && echo \"[\[\033[0;38;5;204m\]\342\234\227\[\033[0;38;5;117m\]]\342\224\200\")[\[\033[0;38;5;117m\]\$(get_tun0_ip)\[\033[0;38;5;117m\]]\342\224\200[\[\033[0;38;5;231m\]\u\[\033[0;38;5;117m\]@\[\033[0;38;5;210m\]\h\[\033[0;38;5;117m\]]\342\224\200[\[\033[0;38;5;231m\]\w\[\033[0;38;5;117m\]]\n\[\033[0;38;5;117m\]\342\224\224\342\224\200\342\224\200\342\225\274 \[\033[0m\]\[\e[01;38;5;117m\]\\$ \[\e[0m\]"
=======
PS1='${debian_chroot:+($debian_chroot)}┌─[\[\033[0;38;5;192m\]\u\[\033[0;33m\]@\[\033[38;5;117m\]\h\[\033[00m\]]─\[\033[38;5;250m\][\[\033[0;38;5;192m\]\w\[\033[38;5;250m\]]\]\n└──╼\[\033[0;33m\] $ \[\033[00m\]'
#PS1='${debian_chroot:+($debian_chroot)}\[\033[38;5;250m\]┌─[\[\033[0;34m\]\u\[\033[0;34m\]@\[\033[0;34m\]\h\[\033[38;5;250m\]]─\[\033[38;5;250m\][\[\033[0;33m\]\w\[\033[38;5;250m\]]\]\n└──╼\[\033[0;34m\] $ \[\033[00m\]'
>>>>>>> 103b622 (updated)


else
    PS1='┌──[\u@\h]─[\w]\n└──╼ \$'
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
PS1="\[\033[0;38;5;117m\]\342\224\214\342\224\200\$([[ \$? != 0 ]] && echo \"[\[\033[0;38;5;204m\]\342\234\227\[\033[0;38;5;117m\]]\342\224\200\")[\[\033[0;38;5;117m\]\$(get_tun0_ip)\[\033[0;38;5;117m\]]\342\224\200[\[\033[0;38;5;231m\]\u\[\033[0;38;5;117m\]@\[\033[0;38;5;210m\]\h\[\033[0;38;5;117m\]]\342\224\200[\[\033[0;38;5;231m\]\w\[\033[0;38;5;117m\]]\n\[\033[0;38;5;117m\]\342\224\224\342\224\200\342\224\200\342\225\274 \[\033[0m\]\[\e[01;38;5;117m\]\\$ \[\e[0m\]"

    #PS1="\[\033[0;31m\]\342\224\214\342\224\200\$([[ \$? != 0 ]] && echo \"[\[\033[0;37m\]\342\234\227\[\033[0;31m\]]\342\224\200\")[$(if [[ ${EUID} == 0 ]]; then echo '\[\033[01;31m\]root\[\033[01;33m\]@\[\033[01;96m\]\h'; else echo '\[\033[0;39m\]\u\[\033[01;33m\]@\[\033[01;96m\]\h'; fi)\[\033[0;31m\]]\342\224\200[\[\033[0;37m\]\w\[\033[0;31m\]]\n\[\033[0;31m\]\342\224\224\342\224\200\342\224\200\342\225\274 \[\033[0m\]\[\e[01;33m\]\\$ \[\e[0m\]"
    ;;
*)
    ;;
esac

[ "$NEWLINE_BEFORE_PROMPT" = yes ] && PROMPT_COMMAND="echo"

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -lh'
alias la='ls -lha'
alias l='ls -CF'
alias em='emacs -nw'
alias _='sudo'
alias _i='sudo -i'
alias fucking='sudo'
alias please='sudo'

# Set 'man' colors
if [ "$color_prompt" = yes ]; then
	man() {
	env \
	LESS_TERMCAP_mb=$'\e[01;31m' \
	LESS_TERMCAP_md=$'\e[01;31m' \
	LESS_TERMCAP_me=$'\e[0m' \
	LESS_TERMCAP_se=$'\e[0m' \
	LESS_TERMCAP_so=$'\e[01;44;33m' \
	LESS_TERMCAP_ue=$'\e[0m' \
	LESS_TERMCAP_us=$'\e[01;32m' \
	man "$@"
	}
fi

function hex-encode()
{
  echo "$@" | xxd -p
}

function hex-decode()
{
  echo "$@" | xxd -p -r
}

function rot13()
{
  echo "$@" | tr 'A-Za-z' 'N-ZA-Mn-za-m'
}

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
#if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
#    . /etc/bash_completion
#fi

# ALIAS
alias grepref='clear ; cat $HOME/references/grepref'
alias ncref='clear ; cat $HOME/references/ncref'
alias ftpref='clear ; cat $HOME/references/ftpref'
alias smbref='clear ; cat $HOME/references/smbref'
alias gobusterref='clear ; cat $HOME/references/gobusterref'
alias common='clear ; cat $HOME/references/common'
alias awkref='clear ; cat $HOME/references/awkref'
alias venomref='clear ; cat $HOME/references/venomref'
alias breakout='clear ; cat $HOME/references/breakout'
alias ref='clear ; ls -l $HOME/references'
alias revshells='clear ; cat $HOME/references/revshells'
alias nfsref='clear ; cat $HOME/references/nfsref'
alias passcrackref='clear ; cat $HOME/references/passcrackref'
alias smtpref='clear ; cat $HOME/references/smtpref'
alias gobusterref='clear ; cat $HOME/references/gobusterref'
alias nmapref='clear ; cat $HOME/references/nmapref'

# Makes text green while its being typed
#export PS1="$PS1\[\033[0;32m\]"
#trap 'echo -ne "\033[0m"' DEBUG

# add this to .bash_profile
#if [ -f ~/.bashrc ]; then
#    source ~/.bashrc
#fi

bind 'set completion-ignore-case on'
alias vi='/usr/local/bin/nvim'

# Function to get tun0 IP address
get_tun0_ip() {
  ip a show tun0 2>/dev/null | grep -oP '(?<=inet )[\d.]+'
}
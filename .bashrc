unset TMP
unset TEMP

# Don't wait for job termination notification
set -o notify

# Ignore some controlling instructions
# HISTIGNORE is a colon-delimited list of patterns which should be excluded.
# The '&' is a special pattern which suppresses duplicate entries.
export HISTIGNORE=$'[ \t]*:&:[fb]g:exit'
# export HISTIGNORE=$'[ \t]*:&:[fb]g:exit:ls' # Ignore the ls command as well

# Whenever displaying the prompt, write the previous line to disk
# export PROMPT_COMMAND="history -a"

export HISTFILESIZE=1000


# Aliases
alias bash-i='bash --login -i'

alias less='less -r'
alias rm='rm -i'
alias whence='type -a'
alias ls='ls -F --color=tty'
alias dir='ls --color=auto --format=vertical'
alias vdir='ls --color=auto --format=long'
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'

alias cp='cp -i'
alias mv='mv -i'
alias c:='cd /cygdrive/c'
alias grep='grep --color'
alias vi='vim'
alias cls='clear'

alias mysql='mysql -h 127.0.0.1'
alias scr='screen'

# SSH shortcuts
alias blitz='ssh update@itunix.blitzgamesstudios.com'

# Make bash 8bit clean
set meta-flag On
set input-meta On
set output-meta On
set convert-meta Off

PS1="[\[\e]0;\w\a\]\[\e[32m\]\u@\h \[\e[33m\]\w\[\e[0m\]]\$ "


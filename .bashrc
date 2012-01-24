# # --------------------------------------------------------------------
# # path
# # --------------------------------------------------------------------
if [ -x /usr/libexec/path_helper ]; then
        eval `/usr/libexec/path_helper -s`
fi
export PATH=$PATH:$HOME/bin:.

# # --------------------------------------------------------------------
# # globals
# # --------------------------------------------------------------------
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
export EDITOR='vim'
export PAGER='less'

# # --------------------------------------------------------------------
# # prompt setup & colours
# # --------------------------------------------------------------------
PS1="[\[\e]0;\w\a\]\[\e[32m\]\u \[\e[33m\]\w\[\e[0m\]]\$ "

ANG='en_GB.UTF-8'
LC_ALL='en_GB.UTF-8'
LC_CTYPE=C
TZ="Europe/Warsaw"

# # --------------------------------------------------------------------
# # aliases
# # --------------------------------------------------------------------
alias blitz='ssh update@itunix.blitzgamesstudios.com'
alias scr='screen'
alias synergy_client='~/bin/synergyc -name mmusial-mcb 10.0.0.100'
#alias synergy_client='~/bin/synergyc -name mmusial-mcb 192.169.1.100'

alias cd..='cd ..'
alias ..='cd ..'
alias ll='ls -al'
alias ql="qlmanage -p 2>/dev/null" # preview a file using QuickLook
alias wget='curl -C - -O'

# # --------------------------------------------------------------------
# # functions
# # --------------------------------------------------------------------
man_p () {
    man -t "${1}" | open -f -a /Applications/Preview.app
}

man_mate () {
  MANWIDTH=160 MANPAGER='col -bx' man $@ | mate
}

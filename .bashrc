if [ -x /usr/libexec/path_helper ]; then
        eval `/usr/libexec/path_helper -s`
fi
export PATH=$PATH:$HOME/bin:.
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

alias blitz='ssh update@itunix.blitzgamesstudios.com'
alias scr='screen'
alias synergy_client='~/bin/synergyc -name mmusial-mcb 10.0.0.100'
#alias synergy_client='~/bin/synergyc -name mmusial-mcb 192.169.1.100'

alias ..='cd ..'
alias ls='ls -al'
alias ql="qlmanage -p 2>/dev/null" # preview a file using QuickLook
alias wget='curl -C - -O'

PS1="[\[\e]0;\w\a\]\[\e[32m\]\u \[\e[33m\]\w\[\e[0m\]]\$ "


man_p () {
    man -t "${1}" | open -f -a /Applications/Preview.app
}

man_mate () {
  MANWIDTH=160 MANPAGER='col -bx' man $@ | mate
}

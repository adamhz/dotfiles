source /usr/share/zsh-antigen/antigen.zsh
export WORKON_HOME="$HOME/.virtualenvs"
source /usr/local/bin/virtualenvwrapper.sh

antigen use oh-my-zsh
antigen bundle command-not-found
antigen bundle git
antigen bundle virtualenvwrapper

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions

antigen bundle mollifier/cd-gitroot

antigen apply

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=990000
SAVEHIST=990000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename "$HOME/.zshrc"

autoload -Uz compinit
compinit

alias gpff='git pull --ff-only origin master'
alias gprb='git pull --rebase origin master'
alias gprbi='git pull --rebase=interactive origin master'

alias cdu='cd-gitroot'

export VISUAL=vim
export EDITOR="$VISUAL"

export GOPATH=$HOME/go
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin

 #End of lines added by compinstall

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/adamhz/google-cloud-sdk/path.zsh.inc' ]; then source '/home/adamhz/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/adamhz/google-cloud-sdk/completion.zsh.inc' ]; then source '/home/adamhz/google-cloud-sdk/completion.zsh.inc'; fi

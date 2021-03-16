source /opt/homebrew/share/antigen/antigen.zsh
#export WORKON_HOME="$HOME/.virtualenvs"
#source /usr/local/bin/virtualenvwrapper.sh

antigen use oh-my-zsh
antigen bundle command-not-found
antigen bundle git
#antigen bundle virtualenvwrapper

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

#autoload -Uz compinit
#compinit

alias gpff='git pull --ff-only origin master'
alias gprb='git pull --rebase origin master'
alias gprbi='git pull --rebase=interactive origin master'

alias vc='vim -c NERDTree'
alias tdm='tmux display-message -p "#{window_layout}"'

alias cdu='cd-gitroot'

export VISUAL=vim
export EDITOR="$VISUAL"

export GOPATH=$HOME/go
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# enables color in the terminal bash shell
export CLICOLOR=1

# Shell command
alias ls='ls -G'
alias ll='ls -la'
alias la='ls -a'
alias vi='vim'
alias grep='grep --color'

# Git
alias g='git'

# Terraform
alias tf='terraform'

# Export Golang path
export GOROOT="/usr/local/go"
export GOPATH="/Users/${USER}/go"
export GOBIN=$GOPATH/bin
export GO111MODULE=on

# Pyenv
export PATH="/Users/jenting/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# Github
export GIT_TERMINAL_PROMPT=1

# Docker
alias docker-rmi-none="docker rmi $(docker images -q -f dangling=true)"
alias docker-rm-stop="docker rm $(docker ps -a -q)"
alias docker-rmc-all="docker rm $(docker ps -a -q)"
alias docker-rmi-all="docker rmi $(docker images -q)"

# Tab
alias settab="tabset"

# K8s
source <(kubectl completion bash)

# AWS
export AWS_DEFAULT_PROFILE=default

# Exa
alias ls="exa"

# Bash autocomplete
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Aliases in this file are bash and zsh compatible

# Don't change. The following determines where ASDF is installed.
asdf=$HOME/.asdf

# Get operating system
platform='unknown'
unamestr=$(uname)
if [[ $unamestr == 'Linux' ]]; then
  platform='linux'
elif [[ $unamestr == 'Darwin' ]]; then
  platform='darwin'
fi

# NeoVim
alias vim='nvim'

# Show human friendly numbers and colors
alias df='df -h'
alias du='du -h'

if [[ $platform == 'linux' ]]; then
  alias ll='ls -alh --color=auto'
  alias ls='ls --color=auto'
elif [[ $platform == 'darwin' ]]; then
  alias ll='ls -alGh'
  alias ls='ls -Gh'
fi

alias ae='vim $asdf/zsh/aliases.zsh' # edit alises
alias ar='source $asdf/zsh/aliases.zsh' # reload aliases

# common shell functions
alias l='ls -alh'

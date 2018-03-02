export PYENV_ROOT="$HOME/.asdf/pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

if [ "$(command -v pyenv)" ]; then
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
fi
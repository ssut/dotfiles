zstyle ':prezto:load' pmodule \
  'autosuggestions' \
  'syntax-highlighting' \
  'history-substring-search' \
  'ssh'

zstyle -a ':prezto:load' pmodule 'pmodules'
pmodload "$pmodules[@]"
unset pmodules


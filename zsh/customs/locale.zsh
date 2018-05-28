if [ -z "$LANG" ]; then
  export LANG="en_US.UTF-8"
fi

if [ -z "$LC_CTYPE" ]; then
  export LC_CTYPE="$LANG"
  export LC_ALL="$LANG"
fi

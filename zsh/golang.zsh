export GOPATH="$HOME/go"
if [ -d "/usr/local/opt/go" ]; then
  export GOROOT=/usr/local/opt/go/libexec
elif [ -d "/usr/local/go" ]; then
  export GOROOT=/usr/local/go
fi
export PATH=$PATH:$GOPATH/bin:$GOROOT/bin
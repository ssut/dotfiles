# # ssh-agent configuration
# if [ -z "$(pgrep ssh-agent)" ]; then
#     rm -rf /tmp/ssh-*
#     eval $(ssh-agent -s)
# else
#     export SSH_AGENT_PID=$(pgrep ssh-agent)
#     # because prezto overrides all commands to run as noglob
#     export SSH_AUTH_SOCK=`/usr/bin/find /tmp/ssh-* -name 'agent.*' | head -n 1`
# fi
#
# if [ "$(ssh-add -l)" = "The agent has no identities." ]; then
#   ssh-add
# fi
#export SSH_AUTH_SOCK=/Users/ssut/Library/Containers/com.maxgoedjen.Secretive.SecretAgent/Data/socket.ssh

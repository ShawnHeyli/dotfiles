if [ 0 -eq $(pgrep -c ssh-agent) ]
  eval (ssh-agent -c) > /dev/null
  set -Ux SSH_AGENT_PID $SSH_AGENT_PID
  set -Ux SSH_AUTH_SOCK $SSH_AUTH_SOCK
end
starship init fish | source

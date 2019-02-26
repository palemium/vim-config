alias simplewebserver='while true; do echo -e "HTTP/1.1 200 OK\n\n $(date)" | nc -l localhost $PORT; done'
alias uuidgen='uuidgen | tr "[:upper:]" "[:lower:]"'
alias dp='rlwrap perl -de1'
alias ovpn='sudo openvpn --config'
alias nodejs='node'
alias gst='git status'
alias gco='git checkout'
alias l='vi ~/LOG'
alias cls='clear; tmux clear-history'
alias mts='date +"%Y%m%d%H%M%S"'
alias pomodoro='echo "Pomodoro started at `date`";sleep 1500; osascript -e "display notification \"Pomodoro finished\" with title \"Pomodoro\""; echo "Pomodoro finished at `date`";'
alias pomodorobreak='echo "Break started at `date`"; sleep 300; osascript -e "display notification \"Break finished\" with title \"Break\""; echo "Break finished at `date`";'
export PS1='\W$ '
export EDITOR=vim

if [ -f /usr/local/etc/bash_completion ]; then
  . /usr/local/etc/bash_completion
fi



export PATH="/usr/local/opt/python/libexec/bin:$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

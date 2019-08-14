alias topdu='du -ah . | sort -rh | head -20'
read -d '' perlwebserver <<'EOF'
perl -Mojo -MJSON -E 'a(any '**' => sub { $c = shift; a->log->fatal(to_json({ url => "${\\$c->req->url}", headers => { %{ $c->req->headers->{headers} } }, body => $c->req->body, method => $c->req->method })); $c->render(text => time) })->start' daemon
EOF
alias sws="$perlwebserver"
alias uuidgen='uuidgen | tr "[:upper:]" "[:lower:]"'
alias dp='rlwrap dotenv perl -de1'
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

export HELM_TLS_ENABLE="true"
export TILLER_NAMESPACE="default-deploy"

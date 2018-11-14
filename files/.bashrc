export HISTCONTROL=ignoredups:erasedups  # no duplicate entries
export HISTSIZE=100000                   # big big history
export HISTFILESIZE=100000               # big big history

shopt -s histappend                      # append to history, don't overwrite it

# Save and reload the history after each command finishes
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

bind "set show-all-if-ambiguous On"

#shopt -s globstar

eval "$(rbenv init -)"
eval "$(nodenv init -)"

export RBENV_ROOT=/usr/local/var/rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
export PATH="/usr/local/opt/postgresql@9.6/bin:$PATH"

. ~/.zsh/aliases
. ~/.zsh/git

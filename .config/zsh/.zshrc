# Aliases
[ -f "${XDG_CONFIG_HOME}/shell/aliasrc" ] && source "${XDG_CONFIG_HOME}/shell/aliasrc"

# Enable case-insensitive completion
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
autoload -Uz compinit && compinit

# Starship prompt (should be last line)
[ "$TERM" != "linux" ] && eval "$(starship init zsh)"

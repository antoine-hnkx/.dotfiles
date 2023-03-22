# Enable case-insensitive completion
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
autoload -Uz compinit && compinit

# Disable command history if starting with space
setopt histignorespace

# Independant shell config
source "$XDG_CONFIG_HOME/shell/shellrc"
source "$XDG_CONFIG_HOME/shell/promtrc"

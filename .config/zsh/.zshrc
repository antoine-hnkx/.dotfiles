# Enable case-insensitive completion
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*' cache-path $XDG_CACHE_HOME/zsh/zcompcache
autoload -Uz compinit && compinit -d {$XDG_CACHE_HOME}/zsh/zcompdump-$ZSH_VERSION

# Disable command history if starting with space
setopt histignorespace

# Auto-complete dotfiles
setopt globdots

# Ctrl + R for reverse history search
bindkey '^R' history-incremental-search-backward

# Independant shell config
source "$XDG_CONFIG_HOME/shell/shellrc"

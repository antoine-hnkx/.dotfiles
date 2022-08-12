# Aliases
[ -f "${XDG_CONFIG_HOME}/shell/aliasrc" ] && source "${XDG_CONFIG_HOME}/shell/aliasrc"

# Starship prompt (should be last line)
[ "$TERM" != "linux" ] && eval "$(starship init zsh)"

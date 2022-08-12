# Simple tty prompt
export PS1="(%y%) [%n@%M]: "

# Default applications
export TERMINAL=alacritty
export BROWSER=google-chrome-stable
export EDITOR=vim
export SHELL=zsh

# Update PATH
export PATH="$PATH:$HOME/.local/bin"

# Disable Files
export LESSHISTFILE=-

# XDG Spec
export XDG_STATE_HOME=${XDG_STATE_HOME:="$HOME/.local/state"}
export XDG_DATA_HOME=${XDG_DATA_HOME:="$HOME/.local/share"}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:="$HOME/.cache"}
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:="$HOME/.config"}

# XDG Path Fixes
export XINITRC="$XDG_CONFIG_HOME/X11/xinitrc"
export XAUTHORITY="$XDG_RUNTIME_DIR/Xauthority"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export HISTFILE="$XDG_DATA_HOME/zsh/history"
export STARSHIP_CONFIG="$XDG_CONFIG_HOME/starship/starship.toml"
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME/java"

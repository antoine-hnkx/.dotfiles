{ pkgs, ... }: {
  programs.zsh.enable = true;
  programs.zsh.histFile = "$HOME/.config/zsh/history";
  users.defaultUserShell = pkgs.zsh;
}

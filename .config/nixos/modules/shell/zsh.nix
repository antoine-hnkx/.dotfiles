{ pkgs, ... }:

{
  programs.zsh.enable = true;
	programs.zsh.histFile = "$XDG_STATE_HOME/zsh/history";
  users.defaultUserShell = pkgs.zsh;
}

{ pkgs, ... }:

{  
  users.users.mob = {
    isNormalUser = true;
    description = "Mob";
    extraGroups = [ "networkmanager" "wheel" ]; # check if other groups necessary like video audio docker or whatever
    packages = with pkgs; [
      google-chrome
      vscode
      starship
      alacritty
      amberol
      inkscape
      bruno
      # TODO docker better-ls-thing lazygit fzf tldr btop-or-something-else ETC... check github stars + node with version manager + pnpm
    ];
  };
}
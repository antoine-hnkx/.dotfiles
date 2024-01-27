# Shared configuration
# TODO add software to pkgs list (system & user)
# TODO make google-chrome .desktop in ~/.local/share/applications/ with '--disable-features=...' 
#      add to dotfiles and path or find other way take inspo from /usr/local/share/applications/ or /usr/share/applications/
#      + make one for neovim to replace current one not opening, open with "allacritty -e nvim"
{ nixpkgs, ... }:

{
  # Enable flakes
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;
  # Disable text/html documentation and documentation desktop entries
  documentation.doc.enable = false;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "23.11"; # Did you read the comment?

}

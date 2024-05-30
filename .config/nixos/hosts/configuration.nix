# Shared configuration
{ nixpkgs, ... }: {
  # Force nix to respect XDG spec
  nix.settings.use-xdg-base-directories = true;
  # Enable flakes
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  # Enable garbage collector
  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 2d";
  };
  # Enable automatic nix store optimisation
  nix.optimise = {
    automatic = true;
    dates = [ "weekly" ];
  };
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;
  # Disable text/html documentation and related desktop entries (example: Nix Manual)
  documentation.doc.enable = false;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "23.11"; # Did you read the comment?
}

# Define hosts configurations

{ nixpkgs, ... }:
  {
    tuxedo = nixpkgs.lib.nixosSystem {
      specialArgs = {
        inherit nixpkgs;
      };
      modules = [
        ./configuration.nix
        ./tuxedo/configuration.nix
        ../modules/packages/system.nix
        ../modules/users/mob.nix
        ../modules/i18n/be_en.nix
        ../modules/fonts/jetbrains-mono.nix
        ../modules/shell/zsh.nix
        ../modules/networking/network-manager.nix
        ../modules/audio/pipewire.nix
        ../modules/wm/gnome.nix
        ../modules/bootloader/systemd-boot.nix
      ];
    };

    oberon = nixpkgs.lib.nixosSystem {
      specialArgs = {
        inherit nixpkgs;
      };
      modules = [
        ./configuration.nix
        ./oberon/configuration.nix
        ../modules/packages/system.nix
        ../modules/users/mob.nix
        ../modules/i18n/be_en.nix
        ../modules/fonts/jetbrains-mono.nix
        ../modules/shell/zsh.nix
        ../modules/networking/network-manager.nix
        ../modules/audio/pipewire.nix
        ../modules/wm/gnome.nix
        ../modules/bootloader/systemd-boot.nix
      ];
    };
  }
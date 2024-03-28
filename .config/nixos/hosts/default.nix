# Define hosts configurations

{ nixpkgs, ... }: {
  tuxedo = nixpkgs.lib.nixosSystem {
    specialArgs = {
      inherit nixpkgs;
    };
    system = "x86_64-linux";
    modules = [
      ./configuration.nix
      ./tuxedo/configuration.nix
      ../modules/packages/system.nix
      ../modules/users/mob.nix
      ../modules/i18n/be_en.nix
      ../modules/fonts/jetbrains-mono.nix
      ../modules/shell/zsh.nix
      ../modules/wm/gnome.nix
      ../modules/bootloader/systemd-boot.nix
      ../modules/services/audio.nix
      ../modules/services/bluetooth.nix
      ../modules/services/networking.nix
      ../modules/services/ssh.nix
      ../modules/services/docker.nix
      ../modules/services/postgresql.nix
    ];
  };

  oberon = nixpkgs.lib.nixosSystem {
    specialArgs = {
      inherit nixpkgs;
    };
    system = "x86_64-linux";
    modules = [
      ./configuration.nix
      ./oberon/configuration.nix
      ../modules/packages/system.nix
      ../modules/users/mob.nix
      ../modules/i18n/be_en.nix
      ../modules/fonts/jetbrains-mono.nix
      ../modules/shell/zsh.nix
      ../modules/wm/gnome.nix
      ../modules/bootloader/systemd-boot.nix
      ../modules/services/audio.nix
      ../modules/services/ssh.nix
      ../modules/services/docker.nix
      ../modules/services/postgresql.nix
    ];
  };
}

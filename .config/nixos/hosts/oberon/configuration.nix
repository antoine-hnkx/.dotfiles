# Oberon specific configuration

{ nixpkgs, pkgs, ... }:

{
  imports = [ ./hardware-configuration.nix ];
  networking.hostName = "oberon";

  environment.systemPackages = with pkgs; [
    ntfs3g
  ];
  boot.supportedFilesystems = [ "ntfs" ];
  # 1. mount ntfs drive
  # ---- sudo mount /dev/sda1 /mnt/Data -t ntfs3
  # 2. regenerate hardware-config.nix
  # ---- nixos-generate-config --show-hardware-config > /home/$USER/.config/nixos/hosts/$HOST/hardware-configuration.nix
}

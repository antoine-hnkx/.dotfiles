# Oberon specific configuration

{ nixpkgs, pkgs, ... }:

{
  imports = [ ./hardware-configuration.nix ];
  networking.hostName = "oberon";

  fileSystems."/mnt/Data".options = [ "rw" "uid=1000" ];
}

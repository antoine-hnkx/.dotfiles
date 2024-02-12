# Oberon specific configuration

{ nixpkgs, pkgs, ... }:

{
  imports = [ ./hardware-configuration.nix ];
  networking.hostName = "oberon";
}

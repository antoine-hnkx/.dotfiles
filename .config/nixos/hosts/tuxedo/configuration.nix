# Tuxedo specific configuration

{ nixpkgs, ... }:

{
  imports = [ ./hardware-configuration.nix ];
  networking.hostName = "tuxedo";
}

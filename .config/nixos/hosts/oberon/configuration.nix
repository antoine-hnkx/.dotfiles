# Oberon specific configuration

{ ... }: {
  imports = [ ./hardware-configuration.nix ];
  networking.hostName = "oberon";
}

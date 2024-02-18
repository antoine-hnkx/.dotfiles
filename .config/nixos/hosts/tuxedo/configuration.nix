# Tuxedo specific configuration

{ ... }: {
  imports = [ ./hardware-configuration.nix ];
  networking.hostName = "tuxedo";
}

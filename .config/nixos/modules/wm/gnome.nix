{ pkgs, ... }:

{
  services.xserver.enable = true;
  services.xserver.excludePackages = with pkgs; [
    xterm
  ];
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;

  programs.dconf.enable = true;

  environment.gnome.excludePackages = (with pkgs; [
    baobab
    #loupe
    evince
    snapshot
    gnome-console
    gnome-connections
    gnome-photos
    gnome-tour
  ]) ++ (with pkgs.gnome; [
    cheese
    epiphany
    geary
    tali
    totem
    iagno
    hitori
    atomix
    yelp
    simple-scan
    gnome-calculator
    gnome-calendar
    gnome-characters
    gnome-contacts
    gnome-initial-setup
    gnome-logs
    gnome-font-viewer
    gnome-maps
    gnome-music
    gnome-weather
    gnome-clocks
  ]);

  environment.systemPackages = with pkgs; [
    gnome.gnome-tweaks
    gnomeExtensions.dash-to-panel
    gnomeExtensions.arcmenu
    gnomeExtensions.gtk4-desktop-icons-ng-ding
    gnomeExtensions.noannoyance-fork
  ];
}

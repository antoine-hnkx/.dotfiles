{ pkgs, ... }: {
  services.xserver.enable = true;
  services.xserver.excludePackages = with pkgs; [
    xterm
  ];
  services.displayManager.gdm.enable = true;
  services.desktopManager.gnome.enable = true;

  programs.dconf.enable = true;

  environment.gnome.excludePackages = (with pkgs; [
    atomix
    baobab
    cheese
    epiphany
    evince
    geary
    hitori
    iagno
    simple-scan
    snapshot
    tali
    totem
    yelp
    gnome-calculator
    gnome-clocks
    gnome-console
    gnome-connections
    gnome-calendar
    gnome-characters
    gnome-contacts
    gnome-font-viewer
    gnome-initial-setup
    gnome-logs
    gnome-maps
    gnome-music
    gnome-photos
    gnome-tour
    gnome-user-share
    gnome-weather
  ]);

  environment.systemPackages = with pkgs; [
    gnome-tweaks
    gnomeExtensions.dash-to-panel
    gnomeExtensions.arcmenu
    gnomeExtensions.gtk4-desktop-icons-ng-ding
    # gnomeExtensions.noannoyance-fork # not in nixpkgs anymore
  ];
}

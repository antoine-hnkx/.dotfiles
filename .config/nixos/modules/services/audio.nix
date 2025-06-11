{ pkgs, ... }: {
  services.pulseaudio.enable = false;
  services.pipewire = {
    enable = true;
    pulse.enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
  };
  security.rtkit.enable = true;
  environment.systemPackages = with pkgs; [
    easyeffects
  ];
}

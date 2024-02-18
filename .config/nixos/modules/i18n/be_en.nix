{ ... }: {
  time.timeZone = "Europe/Brussels";
  console.keyMap = "be-latin1";
  services.xserver.layout = "be";

  i18n.defaultLocale = "en_US.UTF-8";
  i18n.extraLocaleSettings = {
    LC_MEASUREMENT = "fr_BE.UTF-8"; # TODO search web and redo locale to have everything in english but with french formats
    LC_MONETARY = "fr_BE.UTF-8";
    LC_NAME = "en_DK.UTF-8";
    LC_NUMERIC = "fr_BE.UTF-8";
    LC_PAPER = "fr_BE.UTF-8";
    LC_TELEPHONE = "fr_BE.UTF-8";
    LC_TIME = "en_DK.UTF-8";
  };
}

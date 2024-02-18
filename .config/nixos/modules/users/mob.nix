{ pkgs, ... }:

{
  users.users.mob = {
    uid = 1000;
    isNormalUser = true;
    description = "Mob";
    extraGroups = [ "networkmanager" "wheel" "docker" ];
    packages = with pkgs; [
      # Common software
      vivaldi
      alacritty
      vlc
      amberol
      libreoffice
      inkscape
      discord
      gcolor3

      # Prompt
      starship

      # Programming related
      (vscode-with-extensions.override {
        vscodeExtensions = with vscode-extensions; [
          bbenoist.nix
        ];
      })
      neovim
      github-desktop
      bruno
      beekeeper-studio

      # Programming environments
      nodejs
      nodePackages.pnpm
      jdk21
      awscli2

      # CLI Software
      yt-dlp
      ffmpeg
      mkvtoolnix-cli
      rclone
      rsync

      # CLI Utilities
      lazygit
      lazydocker
      k9s
      killall
      fzf
      mcfly
      du-dust
      dogdns
      httpie
      tealdeer
      fd
      eza
      bat
      viddy
      duf
      tokei
      bottom
    ];
  };
}

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
      inkscape
      discord
      gcolor3

      # Prompt
      starship

      # Programming related
      vscode
      neovim
      github-desktop
      bruno

      # Programming environments
      nodejs
      nodePackages.pnpm
      jdk21

      # CLI Software
      yt-dlp
      ffmpeg
      rclone
      rsync

      # CLI Utilities
      lazygit
      lazydocker
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

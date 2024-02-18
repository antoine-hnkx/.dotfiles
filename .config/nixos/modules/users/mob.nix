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
          amodio.toggle-excluded-files
          drcika.apc-extension
          enkia.tokyo-night
          esbenp.prettier-vscode
          jnoortheen.nix-ide
          mhutchie.git-graph
          PKief.material-icon-theme
        ];
      })
      neovim
      github-desktop
      bruno
      beekeeper-studio

      # Programming environments
      nixpkgs-fmt
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

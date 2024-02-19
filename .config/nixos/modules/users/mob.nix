{ pkgs, ... }: {
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
          dbaeumer.vscode-eslint
          enkia.tokyo-night
          esbenp.prettier-vscode
          jnoortheen.nix-ide
          mhutchie.git-graph
          pkief.material-icon-theme
        ] ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
          {
            name = "better-comments";
            publisher = "aaron-bond";
            version = "3.0.2";
            sha256 = "hQmA8PWjf2Nd60v5EAuqqD8LIEu7slrNs8luc3ePgZc=";
          }
          {
            name = "apc-extension";
            publisher = "drcika";
            version = "0.3.6";
            sha256 = "rpp4TUntnsfXi7O/pmgrM8B609v8QTDHuwGAVLfKycA=";
          }
          {
            name = "pretty-ts-errors";
            publisher = "yoavbls";
            version = "0.5.3";
            sha256 = "JSCyTzz10eoUNu76wNUuvPVVKq4KaVKobS1CAPqgXUA=";
          }
          {
            name = "toggle-excluded-files";
            publisher = "amodio";
            version = "2023.4.1012";
            sha256 = "j0zAAnaGIzKTlt8QXvaEGwRb8dWnGkcB/2/XVH+lHXQ=";
          }
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

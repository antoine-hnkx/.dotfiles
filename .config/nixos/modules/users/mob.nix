{ pkgs, ... }:

{
  users.users.mob = {
    uid = 1000;
    isNormalUser = true;
    description = "Mob";
    extraGroups = [ "networkmanager" "wheel" ]; # check if other groups necessary like video audio docker or whatever
    packages = with pkgs; [
      google-chrome
      vscode
      starship
      alacritty
	  vlc
      amberol
      inkscape
      bruno
	  discord
	  lazygit
	  lazydocker
	  docker
	  killall
	  fzf
	  yt-dlp
	  ffmpeg
	  asdf-vm
	  du-dust
	  dogdns
	  httpie
	  rclone
	  rsync
	  tldr
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

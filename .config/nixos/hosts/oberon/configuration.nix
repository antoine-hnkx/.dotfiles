# Oberon specific configuration

{ nixpkgs, pkgs, ... }:

{
  imports = [ ./hardware-configuration.nix ];
  networking.hostName = "oberon";

  environment.systemPackages = with pkgs; [
    ntfs3g
  ];
  boot.supportedFilesystems = [ "ntfs" ];

  # 1. mount ntfs drive `sudo mount /dev/sdb1 /mnt/Data -t ntfs3 -o rw,uid=1000`
	# 2. if mount fails, run ´sudo ntfsfix -d /dev/sdb1´ to remove dirty flag on partition. Then try to mount again. (Problem is caused by booting into windows)
  # 3. regenerate hardware-config.nix `nixos-generate-config --show-hardware-config > /home/$USER/.config/nixos/hosts/$HOST/hardware-configuration.nix`
  fileSystems."/mnt/Data".options = [ "rw" "uid=1000" ]; # "recover" (not working) Recover option -> Try to mount a partition which was not unmounted properly by Windows.
}

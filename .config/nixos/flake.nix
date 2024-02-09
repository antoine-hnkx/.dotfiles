{
  description = "NixOS configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs, ... }:
    {
      nixosConfigurations = (
        import ./hosts {
          inherit nixpkgs;
        }
      );
    };
}

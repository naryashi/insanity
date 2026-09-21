{
  description = "pure nix flake :3";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.home-manager.follows = "home-manager";
    };

    niri = {
      url = "github:sodiboo/niri-flake";
    };

    noctalia = {
      url = "github:noctalia-dev/noctalia";
    };

  };
  outputs =
    {
      self,
      nixpkgs,
      home-manager,
      niri,
      ...
    }@inputs:
    {

      system = [
        "x86_64-linux"
        "aarch64-linux"
        "x86_64-darwin"
        "aarch64-darwin"
      ];

      niri-flake.cache.enable = true;

      formatter.x86_64-linux = nixpkgs.legacyPackages."x86_64-linux".nixfmt-tree;

      nixosConfigurations.kinni = nixpkgs.lib.nixosSystem {
        specialArgs = { inherit inputs; };
        modules = [
          ./hosts/kinni/configuration.nix
          ./hosts/kinni/hardware.nix
          ./hosts/kinni/hardware-configuration.nix
          ./hosts/kinni/boot.nix

          home-manager.nixosModules.home-manager
          {
            home-manager = {
              users.naryashi = import ./hosts/kinni/home-manager/naryashi/home.nix;
              extraSpecialArgs = { inherit inputs; };
            };

            nix.settings = {
              experimental-features = [
                "nix-command"
                "flakes"
              ];

              auto-optimise-store = true;

            };
          }
        ];
      };

      homeConfigurations."naryashi@kinni" = home-manager.lib.homeManagerConfiguration {
        pkgs = nixpkgs.legacyPackages."x86_64-linux";
        modules = [ ./hosts/kinni/home-manager/naryashi/home.nix ];
        extraSpecialArgs = { inherit inputs; };
      };
    };
  nixConfig = {
    extra-substituters = [
      "https://cache.nixos.org/"
      "https://noctalia.cachix.org"
      "https://cache.nixos.org/"
    ];
    extra-trusted-public-keys = [
      "cache.nixos.org-1:6NCHdD59X431o0gWypbMrAURkbJ16ZPMQFGspcDShjY="
      "noctalia.cachix.org-1:pCOR47nnMEo5thcxNDtzWpOxNFQsBRglJzxWPp3dkU4="
      "nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs="
    ];
  };
}

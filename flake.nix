{
  description = "Building personal machines.";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    custom-flakes.url = "github:joliv3r/flakes";
    neovim.url = "gitlab:thejoliver/nvim";
  };

  outputs = { nixpkgs, ... } @ inputs:
  {
    nixosConfigurations.hilbert = nixpkgs.lib.nixosSystem {
      specialArgs = { inherit inputs; };
      modules = [
        ./hilbert.nix
      ];
    };

    nixosConfigurations.hausdorff = nixpkgs.lib.nixosSystem {
      modules = [
        ./hausdorff.nix
      ];
    };

    nixosConfigurations.runningman = nixpkgs.lib.nixosSystem {
      modules = [
        ./runningman.nix
      ];
    };
  };
}

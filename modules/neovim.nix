{ inputs, ... }:

{
  environment.systemPackages = [
    inputs.neovim.packages.x86_64-linux.default
  ];
}

{
  description = "NixOS configuration";

  inputs = {
    # Nixpkgs-unstable
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    
    # Disko
    disko.url = "github:nix-community/disko";
    disko.inputs.nixpkgs.follows = "nixpkgs";

    # Flake parts
    flake-parts.url = "github:hercules-ci/flake-parts";
    flake-parts.inputs.nixpkgs-lib.follows = "nixpkgs";
    
    # Home Manager
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    
    # CachyOS Kernel
    nix-cachyos-kernel.url = "github:xddxdd/nix-cachyos-kernel/release";
    nix-cachyos-kernel.inputs.nixpkgs.follows = "nixpkgs";
    
    # waterfox, TODO: do this myself
    waterfox.url = "github:Hythera/nix-waterfox";

    # Import Tree
    import-tree.url = "github:vic/import-tree";
  };

  outputs = { flake-parts, ... } @ inputs: flake-parts.lib.mkFlake { inherit inputs; } {
    imports = [
      inputs.home-manager.flakeModules.home-manager
      inputs.disko.flakeModules.default
      (inputs.import-tree ./modules)
      # TODO: Find a way to do this using a dendritic pattern
      ./templates/templates.nix
    ];
  };
}
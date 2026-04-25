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
    
    # Import Tree
    import-tree.url = "github:vic/import-tree";

  };

  outputs = { flake-parts, ... } @ inputs: flake-parts.lib.mkFlake 
    { inherit inputs; }
    (inputs.import-tree ./modules);
}
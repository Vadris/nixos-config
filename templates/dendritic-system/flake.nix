{
  description = "NixOS configuration using the dendritic pattern + home-manager & disko";

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

    # Flake Schemas (currently unused<q)
    flake-schemas.url = "github:DeterminateSystems/flake-schemas";

  };

  outputs = { flake-parts, flake-schemas, ... } @ inputs: flake-parts.lib.mkFlake { inherit inputs; } {
    # flake.schemas = flake-schemas.schemas;
    imports = [
      inputs.home-manager.flakeModules.home-manager
      inputs.disko.flakeModules.default
      (inputs.import-tree ./modules)
      
    ];
  };
}

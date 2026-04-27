{
  description = "NixOS configuration";

  inputs = {
    # Nixpkgs-unstable
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";

    # Flake parts
    flake-parts.url = "github:hercules-ci/flake-parts";
    flake-parts.inputs.nixpkgs-lib.follows = "nixpkgs";

    # Import Tree
    import-tree.url = "github:vic/import-tree";

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

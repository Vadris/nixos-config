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

  outputs = { flake-parts, flake-schemas, ... } @ inputs: flake-parts.lib.mkFlake 
    (inputs.import-tree ./modules);
}

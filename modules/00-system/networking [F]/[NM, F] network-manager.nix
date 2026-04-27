{ self, inputs, ... }: {
  flake.nixosModules.networkManager = { lib, pkgs, config, ... }: {
    networking.networkmanager = {
      enable = true;
      
    };
  };
}
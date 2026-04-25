{ self, inputs, ... }: {
  flake.nixosModules.networking.networkManager = { lib, pkgs, config, ... }: {
    networking.networkmanager = {
      enable = true;
      
    };
  };
}
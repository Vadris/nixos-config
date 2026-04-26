{ self, inputs, ... }: {
  flake.homeModules.fynn.programs.kitty = { pkgs, lib, config, ... }: {
    programs.kitty = {
      enable = true;
      
    };
  };
}
{ self, inputs, ... }: {
  flake.homeModules.fynn-kitty = { pkgs, lib, config, ... }: {
    programs.kitty = {
      enable = true;
      
    };
  };
}
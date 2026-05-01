{self, inputs, ...}:
{
  flake.homeModules.fynn-dark = { pkgs, lib, config, ... }: {
    imports = [
      self.homeModules.theme
    ];

    theme = {
      
    };
  };
}
{ self, inputs, ... }: { 
  flake.nixosModules.thunderbird = { pkgs, ...}: {
    enviroment.systemPackages = [
      pkgs.thunderbird
    ];
  };

  flake.homeModules.fynn-thunderbird = {
    programs.thunderbird = {
      enable = true;
    };
  }
}
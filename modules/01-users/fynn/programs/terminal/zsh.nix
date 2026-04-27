{ self, inputs, ... }: {
  flake.homeManagerModules.fynn.programms.zsh = { pkgs, lib, ... }: {
    programs.zsh = {
      enable = true;
      
      history.size = 10000;
      
      enableCompletion = true;
      autosuggestion.enable = true;
      syntaxHighlighting.enable = true;

      shellAliases = {
        soft-reboot = "systemctl soft-reboot"
      };

      plugins = [

      ];

    };
  }
}
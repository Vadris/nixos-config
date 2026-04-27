{ self, inputs, ... }: let 

in {
  flake.homeModules.fynn-zsh = { pkgs, lib, ... }: let 
    
  in {
    programs.zsh = {
      enable = true;
      
      history.size = 10000;

      dotDir = ".config/zsh";
      
      enableCompletion = true;
      autosuggestion.enable = true;
      syntaxHighlighting.enable = true;
      historySubStringSearch = true;

      shellAliases = {
        soft-reboot = "systemctl soft-reboot";
      };

      plugins = [
        {
          name = "nix-shell";
          src = "${pkgs.zsh-nix-shell}/share/zsh-nix-shell";
        }

      ];

    };
    
    programs.kitty = {
      shellIntegration.enableZshIntegration = true;
    };
  };
}
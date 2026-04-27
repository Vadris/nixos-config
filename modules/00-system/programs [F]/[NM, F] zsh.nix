{ self, inputs, ... }: let
  
in {
  flake.nixosModules.zsh = { pkgs, lib, config, ...}: let
    
  in {
    programs.zsh = {
      enable = true;
      enableCompletion = true;
      autosuggestions.enable = true;
      syntaxHighlighting.enable = true;

      shellAliases = {
        
      };

      histSize = 10000;
      histFile = "$HOME/.zsh_history";
    };
  };
}
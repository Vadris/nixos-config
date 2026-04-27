{ self, inputs, ... }: {
  flake.nixosModules.zsh = { pkgs, lib, config, ...}: {
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
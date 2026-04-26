{ self, inputs, ... }: {
  perSystem = {pkgs, config, ...}: {
    
    devShells.python3 = pkgs.mkShell {
      # Packages in enviroment
      packages = with pkgs; [
        conda
      ];
      # Enviroment Variables
      env = {

      };
      
      # Startup Script
      shellHook = ''
        conda-shell
      '';
    };
  };
}
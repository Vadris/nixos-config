{ self, inputs, ... }: {
  perSystem = {pkgs, config, ...}: {
    
    devShells.python3 = pkgs.mkShell {
      # Packages in enviroment
      packages = with pkgs; [
        python3
        conda
      ];
      # Enviroment Variables
      env = {

      };
      
      # Startup Script
      shellHook = ''

      '';
    };
  };
}
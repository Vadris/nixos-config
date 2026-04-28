{ self, inputs, ... }: {
  perSystem = {pkgs, config, ...}: {
    
    devShells.conda = pkgs.mkShell {
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
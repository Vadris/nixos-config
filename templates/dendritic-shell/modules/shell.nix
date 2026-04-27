{ self, inputs, ... }: {
  perSystem = {pkgs, config, ...}: {
    
    devShells."<NAME>" = pkgs.mkShell {
      # Packages in enviroment
      packages = with pkgs; [
        
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
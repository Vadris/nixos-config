{ self, inputs, ... }: {
  perSystem = {pkgs, config, ...}: {
    
    devShells.java21 = pkgs.mkShell {
      packages = with pkgs; [
        jdk21        
        gradle       
        maven
        jdt-language-server
      ];
      env = {
        JAVA_HOME = pkgs.jdk21.home;
      };
      
      shellHook = ''
        
      '';
    };
  };
}
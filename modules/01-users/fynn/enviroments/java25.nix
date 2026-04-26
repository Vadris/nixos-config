{ self, inputs, ... }: {
  perSystem = {pkgs, config, ...}: {
    
    devShells.java25 = pkgs.mkShell {
      packages = with pkgs; [
        jdk25        
        gradle       
        maven
        jdt-language-server
      ];
      env = {
        JAVA_HOME = pkgs.jdk25.home;
      };
      
      shellHook = ''
        
      '';
    };
  };
}
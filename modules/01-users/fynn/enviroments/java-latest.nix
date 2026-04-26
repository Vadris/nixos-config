{ self, inputs, ... }: {
  perSystem = {pkgs, config, ...}: {
    devShells.java-latest = pkgs.mkShell {
      packages = with pkgs; [
        jdk25        # The latest General Availability release
        gradle       # Or gradle, ant, etc.
        jdt-language-server
      ];
      env = {
        JAVA_HOME = pkgs.jdk26.home;
      };
      # 3. Automation on entry
      shellHook = ''
        echo "☕ Java Development Environment"
        java -version
      '';
    };
  };
}
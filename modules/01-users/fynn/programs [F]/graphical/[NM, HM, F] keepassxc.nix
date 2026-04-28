{ self, inputs, ... }: {
  flake.nixosModules.keepassxc = { pkgs, ...}: {
    enviroment.systemPackages = [
      pkgs.keepassxc
    ];
  };

  flake.homeModules.keepassxc = {
    programs.keepassxc = {
      enable = true;
      programs.keepassxc.autostart = true;
      programs.keepassxc.settings = {
        Browser.Enabled = true;
        FdoSecrets.Enabled = true;
        SSHAgent.Enabled = true;
        
        Security.IconDownloadFallback = true;

        GUI = {
          ApplicationTheme = "classic"; # User System Qt Theme
          HidePasswords = true;
          HideMenubar = false;
          MinimizeOnClose = true;
          MinimizeOnStartup = true;
          MinimizeToTray = true;
          ShowwTrayIcon = true;
          TrayIconAppearance = "monochorme-light";
        };
      };
    };
  };
}
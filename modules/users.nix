{ config, pkgs, ... }:

{
  users.users.fynn = {
    isNormalUser = true;
    
    createHome = true;
    home = "/home/fynn";
    
    description = "Fynn Jansen";

    group = "users";
    extraGroups = [ "wheel" "audio" "video" "networkmanager" "docker" ];
    
    useDefaultShell = true;
    enable = true;
  };

  # users.extraGroups.vboxusers.members = [ "fynn" ];
}
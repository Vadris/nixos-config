{ config, pkgs, ... }:

{
  # Select internationalisation properties.
  i18n = {
    consoleKeyMap = "de-latin1-nodeadkeys";
    defaultLocale = "en_US.UTF-8";
  };

  time.timeZone = "Europe/Berlin";

}
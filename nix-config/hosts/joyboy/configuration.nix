# Edit this configuration file to define what should be installed on
# your system. Help is available in the configuration.nix(5) man page, on
# https://search.nixos.org/options and in the NixOS manual (`nixos-help`).
{...}: {
  networking.hostName = "joyboy";
  networking.computerName = "Joi Boi";

  myNixOS = {
    bundles.darwin-desktop.enable = true;

    users = {
      nepjua = {
        userConfig = {...}: {
          myHomeManager = {
            bundles.tui.enable = true;
            bundles.gui.enable = false;
          };

          programs.git.userName = "Yasin Uslu";
          programs.git.userEmail = "nepjua@gmail.com";
        };
        userSettings = {};
      };
    };
  };
}

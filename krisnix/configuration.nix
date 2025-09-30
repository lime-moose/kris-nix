{ config, lib, pkgs, ... }:

{
  imports = [ 
    ./hardware-configuration.nix
    ./categories/display.nix
    ./categories/desktop.nix
    ./categories/packages.nix
    ./categories/user.nix
    ./categories/miscellaneous.nix
    ./categories/virtualisation.nix
  ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.kernelPackages = pkgs.linuxPackages_latest;
  
  networking.hostName = "krisnix";
  networking.networkmanager.enable = true;
  
  time.timeZone = "Asia/Kolkata";
  i18n.defaultLocale = "en_GB.UTF-8";
  console.keyMap = "uk";

  system.stateVersion = "25.05";
}

{ pkgs, ... } : 

{
  services.xserver.enable = true;
  services.xserver.xkb.layout = "gb";
  services.xserver.excludePackages = with pkgs; [ xterm ];
}

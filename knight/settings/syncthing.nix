{
  services.syncthing.settings.gui.user = "knight";
  services.syncthing.settings.gui.theme = "Black";
  services.syncthing.settings.devices = {
    "droid" = {id = "O52DHX6-IGYXPGB-5UJSHFZ-PXMVLJB-RIOMPRG-6AVXTVG-7C5JWMB-SA362QA";};
  };

  services.syncthing.settings.folders = {
    "Sync" = {
      path = "/home/knight/Sync";
      devices = [ "droid" ];
    };
  };
}

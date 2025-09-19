{
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";
  inputs.home-manager.url = "github:nix-community/home-manager/release-25.05";
  inputs.home-manager.inputs.nixpkgs.follows = "nixpkgs";


  outputs = { self, nixpkgs, home-manager, ... }: {
    nixosConfigurations.krisnix = nixpkgs.lib.nixosSystem {
      modules = [ 
        ./krisnix/configuration.nix

	home-manager.nixosModules.home-manager 
	{
	  home-manager.useUserPackages = true;
	  home-manager.useGlobalPkgs = true;
	  home-manager.backupFileExtension = "backup";
	  home-manager.users.knight = import ./knight/home.nix;
	}
      ];
    };
  };
}

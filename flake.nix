{
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  inputs.home-manager.url = "github:nix-community/home-manager";
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

{ pkgs, ... } :

{
  # QEMU, libvirt & virt-manager
  services.spice-vdagentd.enable = true;
  programs.virt-manager.enable = true;
  virtualisation.spiceUSBRedirection.enable = true;
  virtualisation.libvirtd.enable = true;
  virtualisation.libvirtd.qemu.package = pkgs.qemu_kvm;
  virtualisation.libvirtd.qemu.runAsRoot = true;
  virtualisation.libvirtd.qemu.swtpm.enable = true;
  virtualisation.libvirtd.qemu.ovmf = {
    enable = true;
    packages = [(pkgs.OVMF.override {
      secureBoot = true;
      tpmSupport = true;
      }).fd];
  };

  # podman
  virtualisation.containers.enable = true;
  virtualisation.podman.enable = true;
  virtualisation.podman.dockerCompat = true;
  virtualisation.podman.defaultNetwork.settings.dns_enable = true;
}

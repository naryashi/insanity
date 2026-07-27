{
  pkgs,
  ...
}:
{
  #CONTAINER
  environment.systemPackages = with pkgs; [
    docker
    docker-compose
    podman
    podman-compose
    buildah
    distroshelf
    distrobox
    devpod
    lazydocker
    toolbox
    #for podman
    runc
    conmon
    skopeo
    slirp4netns
    fuse-overlayfs
    catatonit

        (distrobox.overrideAttrs (oldAttrs: {
      postInstall = (oldAttrs.postInstall or "") + ''
        for file in $out/bin/*; do
          sed -i 's|distrobox_path="$(dirname "$(realpath "$0")")"|distrobox_path="/run/current-system/sw/bin"|g' "$file"
          sed -i 's|distrobox_path="$(dirname "$(readlink -f "$0")")"|distrobox_path="/run/current-system/sw/bin"|g' "$file"
        done
      '';
    }))
    

  ];

  virtualisation.docker.enable = true;

  virtualisation = {
    oci-containers.backend = "podman";
    containers = {
      registries.search = [
        "docker.io"
        "ghcr.io"
         ];
      enable = true;
    };
    
    podman = {
      enable = true;
      defaultNetwork.settings.dns_enabled = true;
    };
  };
  #boot.binfmt = {
  #emulatedSystems = [
  #  "x86_64-amd"
  #  "aarch64-linux"
  #   ];
 # preferStaticEmulators = true; # required to work with podman
#};

  #GIT
  programs.git = {
    enable = true;
  };

  programs.ssh.askPassword = "${pkgs.kdePackages.ksshaskpass.out}/bin/ksshaskpass";

}

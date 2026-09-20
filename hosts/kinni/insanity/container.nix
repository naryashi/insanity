{
  pkgs,
  ...
}:
{
  #CONTAINER
  environment.systemPackages = with pkgs; [
    docker
    docker-compose
    distroshelf
    distrobox
    podman
    podman-compose
    podman-desktop
    buildah
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

  virtualisation = {
    oci-containers.backend = "podman";
    containers = {
      registries.search = [
        "docker.io"
        "ghcr.io"
      ];
      enable = true;
    };

    docker = {
      enable = true;
      rootless = {
        enable = true;
        setSocketVariable = true;
      };
    };

    podman = {
      enable = true;
      defaultNetwork.settings.dns_enabled = true;
      autoPrune.enable = true;
      autoPrune.flags = [
        "--all"
      ];
    };
  };
  #boot.binfmt = {
  #emulatedSystems = [
  #  "x86_64-amd"
  #  "aarch64-linux"
  #   ];
  # preferStaticEmulators = true; # required to work with podman
  #};

}

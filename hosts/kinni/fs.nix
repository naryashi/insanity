{...}: {
  fileSystems = {
    "/".options = [
      "compress=zstd"
      "noatime"
      "ssd"
    ];

    "/home".options = [
      "compress=zstd"
      "noatime"
      "ssd"
      "nodatacow"
    ];
    "/var".options = [
      "compress=zstd"
      "noatime"
      "ssd"
      "nodatacow"
    ];
    "/nix".options = [
      "compress=zstd"
      "noatime"
      "ssd"
    ];
  };
}

{
  ...
}:
{
  fileSystems = {
    "/".options = [
      "compress=zstd"
      "noatime"
      "nodatacow"
      "ssd"
    ];
    "/home".options = [
      "compress=zstd"
      "noatime"
      "nodatacow"
      "ssd"
    ];

  };

}

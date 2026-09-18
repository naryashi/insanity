{
  ...
}:
{
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
    ];

  };

}

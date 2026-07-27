{
  ...
}:
{
  fileSystems = {
    "/".options = [
      "compress=lzo"
      "noatime"
      "nodatacow"
    ];
    "/home".options = [
      "compress=lzo"
      "noatime"
      "nodatacow"
    ];

  };

}

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
      "nodatacow"
    ]; 
      "/var".option = [
      "compress=zstd"
      "noatime"
      "ssd"
      "nodatacow"
    ];
      "/nix".option = [
      "compress=zstd"
      "noatime"
      "ssd"
    ];
    
  };

}

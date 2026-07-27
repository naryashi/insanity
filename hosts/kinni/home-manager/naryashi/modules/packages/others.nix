{
  pkgs,
  ...
}:
{

  home.packages = with pkgs; [

    #dev
    #zed-editor
    helix
  ];

}

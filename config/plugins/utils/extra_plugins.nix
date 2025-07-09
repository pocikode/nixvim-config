{ pkgs, ... }:
{
  extraPlugins = with pkgs.vimPlugins; [
    pkgs.vimPlugins."nui-nvim"
    (pkgs.vimUtils.buildVimPlugin {
      name = "fine-cmdline";
      src = pkgs.fetchFromGitHub {
        owner = "VonHeikemen";
        repo = "fine-cmdline.nvim";
        rev = "7db181d1cb294581b12a036eadffffde762a118f";
        hash = "sha256-Cx1KzSXOAMuCRx5/mt1DwGqRKs+FDU5vYXef4cagISU=";
      };
    })
  ];
}

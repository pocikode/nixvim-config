{ pkgs, ... }:
{
  extraPlugins = with pkgs.vimPlugins; [
    (pkgs.vimUtils.buildVimPlugin {
      name = "cmdpalette";
      src = pkgs.fetchFromGitHub {
        owner = "hachy";
        repo = "cmdpalette.nvim";
        rev = "2656f481d08d6526847ade70670ffe3fa5020330";
        hash = "sha256-iNi6JMS2ZutgSAygpYqkTTk2uG9lwm75dNhIsNNUlcU=";
      };
    })
  ];
}

{ config, pkgs, ...}:
{

  home.username = "iaquobe";
  home.homeDirectory = "/home/iaquobe/";
  #programs.zsh = {
  #   enable = true;
  #   oh-my-zsh = {
  #     enable = true;
  #     plugins = [ "git" ];
  #   };
  #};


  home.packages = with pkgs; [
    hyprland
    eww-wayland
    swww
    wofi

    firefox
    kitty

    neovim
    tmux 

    fzf
    ripgrep
    lsd
    bottom

  ];


  home.stateVersion = "23.05";
  programs.home-manager.enable = true;
}

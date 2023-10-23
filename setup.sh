SCRIPTPATH=$(dirname "$(realpath "$0")")
sudo rm /etc/nixos
rm ~/.config/{nvim,tmux,waybar,hypr,kitty,zsh,eww,home-manager/home.nix}


mkdir ~/.config/home-manager/
sudo ln -s $SCRIPTPATH/nixos/ /etc/nixos
sudo nixos-rebuild switch

ln -s $SCRIPTPATH/nixos/home.nix ~/.config/home-manager/home.nix
home-manager switch

# nvchad
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim
rm -r ~/.config/nvim/lua/custom/
ln -s $SCRIPTPATH/config/nvim/custom ~/.config/nvim/lua/custom

#tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
ln -s $SCRIPTPATH/config/tmux ~/.config

ln -s $SCRIPTPATH/config/eww ~/.config
ln -s $SCRIPTPATH/config/waybar ~/.config
ln -s $SCRIPTPATH/config/hypr ~/.config
ln -s $SCRIPTPATH/config/kitty ~/.config
ln -s $SCRIPTPATH/config/zsh ~/.config

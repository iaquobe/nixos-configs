SCRIPTPATH=$(dirname "$(realpath "$0")")
sudo rm /etc/nixos
rm ~/.config/nvim
rm ~/.config/tmux
rm ~/.config/waybar
rm ~/.config/hypr
rm ~/.config/kitty
rm ~/.config/zsh
rm ~/.config/eww


sudo ln -s $SCRIPTPATH/nixos/ /etc/nixos

ln -s $SCRIPTPATH/config/nvim ~/.config
ln -s $SCRIPTPATH/config/eww ~/.config
ln -s $SCRIPTPATH/config/tmux ~/.config
ln -s $SCRIPTPATH/config/waybar ~/.config
ln -s $SCRIPTPATH/config/hypr ~/.config
ln -s $SCRIPTPATH/config/kitty ~/.config
ln -s $SCRIPTPATH/config/zsh ~/.config

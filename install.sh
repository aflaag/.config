# install for:
#   - base-devel
#   - kernel headers
#   - ALSA
#   - Xorg
#   - xinit    
#   - XRandR
#   - Git
sudo pacman -S base-devel linux-headers alsa-utils xf86-video-amdgpu xorg-server xorg-xinit xorg-xrandr git

# install for:
#   - paru
git clone https://aur.archlinux.org/paru.git
cd paru
pakepkg -si

# install for:
#   - Firefox
#   - kitty
#   - zsh
#   - bat
#   - man
#   - SDDM
#   - ripgrep
#   - sct
#   - htop
#   - picom
#   - unzip
#   - unrar
paru -S firefox neovim kitty zsh bat man sddm ripgrep sct htop picom unzip unrar

# install for:
#   - Oh My Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# enable for:
#    - SDDM
sudo systemctl enable sddm.service

# install for:
#     - CaskaydiaCove Nerd font (https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/CascadiaCode.zip)
#     - NotoColorEmoji font ()
#     - NotoSansJP font
fc-cache -fv

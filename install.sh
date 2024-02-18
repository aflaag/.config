# fix for:
#   - keyboard layout
localectl set-x11-keymap it

# install for:
#   - base-devel
#   - kernel headers
#   - ALSA
#   - Xorg
#   - xinit    
#   - XRandR
#   - Git
#   - curl
#   - sudo
#   - wget
sudo pacman -S base-devel linux-headers alsa-utils xf86-video-amdgpu xorg-server xorg-xinit xorg-xrandr git curl sudo wget

# install for:
#   - paru
git clone https://aur.archlinux.org/paru.git
cd paru
pakepkg -si

# install for:
#   - archlinux-keyring
#   - ark
#   - bat
#   - betterlockscreen
#   - BlueZ
#   - bspwm
#   - btop
#   - droidcam (and dependencies)
#   - dunst
#   - Firefox
#   - GIMP
#   - htop
#   - icu69-bin (fix for Visual Studio Code)
#   - Java
#   - kitty
#   - nitrogen
#   - Neovim
#   - PipeWire
#   - Polybar
#   - Python (and libraries)
#   - ripgrep
#   - Ristretto
#   - Rofi
#   - rustup
#   - SDDM
#   - Spectacle
#   - SpeedCrunch
#   - sxhkd
#   - Telegram
#   - TeX Live
#   - Thunar
#   - Timeshift
#   - unrar
#   - unzip
#   - VLC
#   - xclip
#   - xcolor
#   - zathura (and dependencies)
paru -S archlinux-keyring ark bat betterlockscreen bluez bluez-utils bspwm btop droidcam dunst firefox gimp gnome-keyring htop icu69-bin jre-openjdk kitty nitrogen neovim pipewire-alsa pipewire-cli pipewire-media-session pipewire-pulse polybar python python-aiohttp python-pillow python-pip python-wheel ripgrep ristretto rofi rustup sddm spectacle speedcrunch sxhkd telegram-desktop texlive-basic texlive-bibtexextra texlive-fontsrecommended texlive-fontsextra texlive-latex texlive-langitalian texlive-mathscience texlive-meta thunar timeshift unrar unzip v4l2loopback-dkms vlc xclip xcolor zathura zathura-pdf-mupdf

# install for:
#   - Oh My Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install for:
#   - Zsh Autosuggestions for Zsh
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# enable for:
#    - SDDM
sudo systemctl enable sddm.service

# install for:
#     - CaskaydiaCove Nerd font (https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/CascadiaCode.zip)
#     - NotoColorEmoji font (https://fonts.google.com/noto/specimen/Noto+Color+Emoji)
#     - NotoSansJP font (https://fonts.google.com/noto/specimen/Noto+Sans+JP)
fc-cache -fv

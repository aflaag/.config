########## INSTALLATION PROCESS ##########

# TODO: add installation process

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

########## GIT ##########

# setup for:
#   - git
git config --global user.name "aflaag"
git config --global user.email "alessio.bandiera02@gmail.com"

########## PARU ##########

# install for:
#   - paru
git clone https://aur.archlinux.org/paru.git
cd paru
pakepkg -si

########## PACKAGES ##########

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
#   - dust
#   - fd
#   - Firefox
#   - GIMP
#   - github-cli
#   - gnome-keyring
#   - htop
#   - GVfs
#   - icu69-bin (fix for Visual Studio Code)
#   - Java
#   - kitty
#   - MPV
#   - nitrogen
#   - Neovim
#   - nodejs
#   - PulseAudio Volume Control
#   - PipeWire
#   - Polkit Gnome
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
#   - Thunar Volman
#   - Timeshift
#   - tldr
#   - unrar
#   - unzip
#   - Visual Studio Code
#   - VLC
#   - Xbox drivers
#   - xclip
#   - xcolor
#   - zathura (and dependencies)
#   - zoxide
paru -S archlinux-keyring ark bat betterlockscreen bluez bluez-utils bspwm btop code droidcam dunst dust fd firefox gimp github-cli gnome-keyring htop gvfs gvfs-afc gvfs-gphoto2 gvfs-mtp icu69-bin jre-openjdk kitty mpv nitrogen neovim nodejs pavucontrol pipewire-alsa pipewire-cli pipewire-media-session pipewire-pulse polkit-gnome polybar python python-pip python-wheel ripgrep ristretto rofi rustup sddm spectacle speedcrunch sxhkd telegram-desktop texlive-basic texlive-bibtexextra texlive-fontsrecommended texlive-fontsextra texlive-latex texlive-langitalian texlive-mathscience texlive-meta thunar thunar-volman timeshift tldr unrar unzip v4l2loopback-dkms vlc xboxdrv xclip xcolor xpad zathura zathura-pdf-mupdf zoxide

########## SYSTEMCTL ##########

# TODO: consider removing SDDM
# setup for:
#   - SDDM
sudo systemctl enable sddm.service

# setup for:
#   - bluetooth
systemctl enable bluetooth.service

########## CONFIG ##########

# install for:
#   - .config
cd ~
rm -rf .config
git clone https://github.com/aflaag/.config

########## GITHUB ##########

# setup for:
#   - github-cli
cd ~
gh auth login
# MANUAL: complete the setup

########## ZSH ##########

# install for:
#   - Oh My Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install for:
#   - zsh-autosuggestions for Zsh
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# install for
#   - zsh-syntax-highlighting for Zsh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# setup for:
#   - Zsh
cd ~
ln -s .config/.zshrc .

########## FONTS ##########

# install for:
#   - CaskaydiaCove Nerd font (https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/CascadiaCode.zip)
#   - NotoColorEmoji font (https://fonts.google.com/noto/specimen/Noto+Color+Emoji)
#   - NotoSansJP font (https://fonts.google.com/noto/specimen/Noto+Sans+JP)
# 
#   (folder: /usr/local/share/fonts)
fc-cache -fv

########## TEX ##########

# fix for:
#   - Tex Live
sudo fmtutil-sys --all

########## NITROGEN ##########

# fix for:
#   - nitrogen
mkdir -p /usr/share/wallpapers
cd /usr/share/wallpapers
ln -s ~/.config/wallpaper.png

# manual fix for:
#   - nitrogen
nitrogen /usr/share/wallpapers
# MANUAL: choose the correct wallpaper

########## OTHERS ##########

# install for:
#   - pokemon-icat
git clone https://github.com/aflaag/pokemon-icat && cd pokemon-icat && sh ./install.sh

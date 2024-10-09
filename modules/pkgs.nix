{ config, pkgs, ... }: {

    environment.systemPackages = with pkgs; [

    # System related
      pkgs.kitty
      pkgs.kitty-themes
      pkgs.hyprpaper
      pkgs.hyprlock
      pkgs.waybar
      pkgs.wofi
      pkgs.pamixer
      pkgs.swappy
      pkgs.pavucontrol
      pkgs.libnotify

    # Dayly driving
      pkgs.firefox
      pkgs.keepassxc
      pkgs.zathura
      pkgs.telegram-desktop
      pkgs.tor-browser
      pkgs.ttyper
      pkgs.zoxide
      pkgs.gimp
      pkgs.fastfetch
      pkgs.libreoffice
      pkgs.fortune
      pkgs.cowsay
      pkgs.wl-clipboard

    # Misc
      pkgs.eza
      pkgs.trash-cli
      pkgs.unzip
      pkgs.upower
      pkgs.lf
      pkgs.ncdu
      pkgs.htop
      pkgs.xdragon
      pkgs.acpi
      pkgs.fzf
      pkgs.translate-shell

    # Dev
      pkgs.neovim
      pkgs.nodejs_22
      pkgs.starship
      pkgs.stow
      pkgs.tmux
      pkgs.virtualbox
      pkgs.chromium
      pkgs.pistol
      pkgs.git
      pkgs.gh
      pkgs.openvpn
      pkgs.sl
      
    # Dep
      pkgs.sof-firmware
      pkgs.python3
      pkgs.slurp
      pkgs.grim
      pkgs.python312Packages.ipython
      pkgs.gcc
      pkgs.openssl_legacy
      pkgs.jdk
    ];

}

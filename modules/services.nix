{ config, pkgs, ... }: {

  # configura keyboard
  services.xserver.xkb = {
    layout = "latam";
    variant = "deadtilde";
  };

  # i have no idea tf this is
  services.avahi = {
    enable = true;
    nssmdns4 = true;
    openFirewall = true;
  };

  # so the laptop does not enter suspend mode when the lid is closed
  services.logind.lidSwitch = "ignore";

  # turn on ssh
  services.openssh = {
    enable = true;
    ports = [ 1764 ]; # 42**2
    settings = {
      PasswordAuthentication = true;
      AllowUsers = null;
      UseDns = true;
      X11Forwarding = false;
      PermitRootLogin = "prohibit-password";
    };
  };

  # mortality check
  services.cron = {
    enable = true;
    systemCronJobs = [
      "DISPLAY=:0"
      "XDG_SESSION_ID=1"
      "XDG_SESSION_CLASS=user"
      "XDG_SESSION_TYPE=wayland"
      "WAYLAND_DISPLAY=wayland-1"
      "HL_INITIAL_WORKSPACE_TOKEN=e81d7831-1c00-4a42-9efd-d5f0ee50f7a4"
      "NO_AT_BRIDGE=1"
      "DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus"
      "*/10 * * * *      valencia    [[ \"$(${pkgs.coreutils}/bin/shuf -i 0-10 -n 1)\" -lt 5 ]] && notify-send \"$(echo $(( (3370568400 - $(date +\\%s)) / 604800  )) weeks before  )\";"
    ];
  };


}

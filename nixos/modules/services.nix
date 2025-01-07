{ pkgs, ... }: {
  services.displayManager = {
    sddm.enable = true;
    sddm.wayland.enable = true;
    sddm.theme = "catppuccin-macchiato";
    sddm.package = pkgs.kdePackages.sddm;
  };

  services.tlp = {
    enable = false;
    settings = {
      CPU_SCALING_GOVERNOR_ON_BAT = "ondemand";
    #  CPU_SCALING_GOVERNOR_ON_BAT="powersave";
    #  CPU_ENERGY_PERF_POLICY_ON_AC="balance_performance";
    #  CPU_ENERGY_PERF_POLICY_ON_BAT="balance_power";
    #  CPU_BOOST_ON_AC=1;
    #  CPU_BOOST_ON_BAT=0;
    #  CPU_HWP_DYN_BOOST_ON_AC=1;
    #  CPU_HWP_DYN_BOOST_ON_BAT=0;
    };
  };
  services.power-profiles-daemon.enable = true;
  services.upower.enable = true;
  virtualisation.docker.enable = true;
}

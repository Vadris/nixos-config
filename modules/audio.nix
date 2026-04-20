{ pkgs, ... }:

{
  # Enable sound with pipewire.
  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    
    wireplumber.enable = true;
    jack.enable = true;

    # media-session.enable = true;
  };

  # TODO: Create Virtual devices: 
  #   Communication Audio Input   (Source) <- Comm Mic
  #   Game Audio Input            (Source) <- Comm Mic
  #   Communication Audio Output  (Sink)   -> CH 6 (Mono Sum) ; DEFUALT_SINK
  #   Game Audio Output           (Sink)   -> CH7/8 ; DEFAULT_SINK
  #   Media Audio Output          (Sink)   -> CH9/10 ; DEFAULT_SINK
  #   System Audio Output         (Sink)   -> CH 9/10 ; DEFAULT_SINK
  
  # TODO: Hide unnused devices


  environment.systemPackages = with pkgs; [
    qpwgraph
    pavucontrolqt
  ];
}
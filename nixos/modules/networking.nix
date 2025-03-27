{
  networking.networkmanager.enable = true;
   # Open ports in the firewall.
  networking.firewall.allowedTCPPorts = [ 22 80 443 53 ];
  networking.firewall.allowedUDPPorts = [ 53 ];
  # Or disable the firewall altogether.
  networking.firewall.enable = true;
}
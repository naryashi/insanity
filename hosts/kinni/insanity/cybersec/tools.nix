{
  pkgs,
  ...
}:
{

  environment.systemPackages = with pkgs; [
  nmap
  masscan
  wireshark
  tshark
  socat
  netcat-openbsd
  aircrack-ng
  burpsuite
  zap
  ffuf
  gobuster
  sqlmap
  nikto
  ghidra
  radare2
  binwalk
  volatility3
  gdb
  metasploit
  john
  hashcat
  ];
  programs.wireshark.enable = true;
}
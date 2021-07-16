alias vpc="globalprotect connect"
alias vpd="globalprotect disconnect"
alias vps="globalprotect show --status"
alias ovpc="openvpn3 session-start --config /ovpn/OpenVPN-Config.ovpn"
alias ovps="openvpn3 sessions-list"
alias ovpd="openvpn3 session-manage --config /ovpn/OpenVPN-Config.ovpn --disconnect"
alias tmux="tmux -u $@"

export PATH=$PATH:/usr/local/go/bin


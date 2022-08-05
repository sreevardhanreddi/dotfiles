# vpn aliases
alias vpc="globalprotect connect"
alias vpd="globalprotect disconnect"
alias vps="globalprotect show --status"

# ovpn aliases
alias ovpc="openvpn3 session-start --config /ovpn/OpenVPN-Config.ovpn"
alias ovps="openvpn3 sessions-list"
alias ovpd="openvpn3 session-manage --config /ovpn/OpenVPN-Config.ovpn --disconnect"

# tmux alias with utf8 support
alias tmux="tmux -u $@"

# lsd and bat aliases
alias ls="lsd"
alias cat="bat"
alias drdi="docker rmi $(sudo docker images -f "dangling=true" -q)"


export PATH=$PATH:/usr/local/go/bin


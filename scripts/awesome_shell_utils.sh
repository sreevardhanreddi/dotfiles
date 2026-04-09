#!/bin/bash

# import utils.sh file
source ./scripts/utils.sh

log "installing lsd, bat, ripgrep"

apt install -y lsd bat ripgrep

echo_separator

#!/bin/bash
set -e # exiting if any cmd fails

echo "Running post-build steps. It may take a while...."
 
${UTILS_SCRIPTPATH}/create_mamba_env.sh 
${UTILS_SCRIPTPATH}/setup_ws.sh

# Byobu Fix for launching BASH instead of SH
echo "Fixing Byobu to launch BASH"
echo 'set -g default-shell /bin/bash' >> ${HOME}/.byobu/.tmux.conf
echo 'set -g default-command /bin/bash' >> ${HOME}/.byobu/.tmux.conf

# Launch a shell session
# /bin/bash
# Load Powerline
if [ -f $(which powerline-daemon) ]; then
    powerline-daemon -q
    POWERLINE_BASH_CONTINUATION=1
    POWERLINE_BASH_SELECT=1
fi
# For Ubuntu
if [ -f /usr/share/powerline/bindings/bash/powerline.sh ]; then
    source /usr/share/powerline/bindings/bash/powerline.sh
fi
# For Fedora
if [ -f /usr/share/powerline/bash/powerline.sh ]; then
    source /usr/share/powerline/bash/powerline.sh
fi

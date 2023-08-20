#
# ~/.bash_profile
#

# Source ~/.bashrc if it exists
[[ -f ~/.bashrc ]] && . ~/.bashrc

# Start the X server
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec startx
fi

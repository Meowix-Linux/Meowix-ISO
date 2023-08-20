#
# ~/.bashrc
#

# Set default/preferred applications
export EDITOR='micro'
export VISUAL='micro'

# Set application settings
export "MICRO_TRUECOLOR=1"
export "SHELLCHECK_OPTS='--shell=bash --exclude=SC1090'"

# If not running interactively, don't do anything else
[[ $- != *i* ]] && return

# Set the shell prompt (shown if Starship is not initialized)
PS1='[\u@\h \W]\$ '

# Source the aliases file
if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi

# Run the smartfetch wrapper for neofetch
smartfetch

# Initialize Starship
eval "$(starship init bash)"

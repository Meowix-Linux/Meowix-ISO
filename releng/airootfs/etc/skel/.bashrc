#
# ~/.bashrc
#

# Set default/preferred applications
# NOTE: Micro is installed and configured, so if you would like to use it instead, change EDITOR and VISUAL to 'micro'
export EDITOR='nvim'
export VISUAL='nvim'

# Set application settings
export "MICRO_TRUECOLOR=1"

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

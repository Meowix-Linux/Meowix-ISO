#
# ~/.bashrc
#

# shellcheck shell=bash

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Set the shell prompt (shown if Starship is not initialized)
PS1='[\u@\h \W]\$ '

# Initialize Starship
eval "$(starship init bash)"

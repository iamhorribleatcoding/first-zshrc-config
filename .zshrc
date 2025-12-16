# ---- OH MY ZSH CONFIG ----
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git)

# ======================================
# STARTUP ANIMATIONS
# --------------------------------------
# Kitty terminal startup animation (optional)
if [[ "$TERM" == "xterm-kitty" ]] && [[ -o interactive ]]; then
    if [[ -f "$HOME/.config/kitty/startup-animation.sh" ]]; then
        ~/.config/kitty/startup-animation.sh
    fi
fi

# ======================================
# EXECUTIONS
# --------------------------------------
# FASTFETCH - Display system info on startup
if command -v fastfetch &> /dev/null; then
    fastfetch
fi

# Example custom fastfetch configs (uncomment to use):
# fastfetch --config $HOME/.config/fastfetch/boxes_logo_text_bloody.jsonc
# fastfetch --config $HOME/.config/fastfetch/boxes_logo_text_blurvision-ascii.jsonc
# ======================================

# ---- COMMAND CORRECTION ----
# thefuck - corrects your previous console command
if command -v thefuck &> /dev/null; then
    eval $(thefuck --alias)
fi

# ---- ALIASES ----
# Uncomment these if you want quick access to edit configs
# alias zshconfig="vim ~/.zshrc"
# alias ohmyzsh="vim ~/.oh-my-zsh"

# ======================================
# Source Oh My Zsh
source $ZSH/oh-my-zsh.sh

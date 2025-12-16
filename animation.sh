#!/bin/zsh

# ASCII Animation Script for Kitty Startup with Balanced Red
FRAMES_DIR="$HOME/.config/kitty/frames"

# Play animation with auto-close
animate_startup() {
    # Hide cursor to reduce flicker
    tput civis
    
    # Clear screen once at start
    clear
    
    # Play animation twice
    for loop in {1..2}; do
        for frame in "$FRAMES_DIR"/frame_*.txt; do
            # Move cursor to top-left instead of clearing
            tput cup 0 0
            
            # Muted red - visible but low contrast
            echo -e "\e[38;5;131m$(cat "$frame")\e[0m"
            
            # Slower speed - increase this number for even slower
            sleep 0.15
        done
    done
    
    # Show cursor again
    tput cnorm
    clear
    
    # Exit automatically
    exit 0
}

animate_startup

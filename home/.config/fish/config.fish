if status is-interactive
    # Commands to run in interactive sessions can go here
end

#variables
set -U fish_greeting

# Add paths using fish_add_path
fish_add_path -U "$HOME/.local/bin"
set -Ux fish_user_paths $fish_user_paths ~/.local/bin

# Set environment variables using set -x
set -x FZF_DEFAULT_OPTS "--bind 'enter:become(vim {})'"

# Map Home key to beginning of line
bind \e\[1~ beginning-of-line
bind \e\[H beginning-of-line

# Map End key to end of line
bind \e\[4~ end-of-line
bind \e\[F end-of-line

# GTK stuff for pavucontrol
set -Ux GDK_BACKEND wayland
set -Ux QT_QPA_PLATFORM wayland
set -Ux XDG_CURRENT_DESKTOP sway

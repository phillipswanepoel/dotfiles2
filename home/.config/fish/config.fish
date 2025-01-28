if status is-interactive
    # Commands to run in interactive sessions can go here
end

# source secrets
if test -f ~/.config/fish/secret_env.fish
    source ~/.config/fish/secret_env.fish
end

#variables
set -U fish_greeting

# Add paths using fish_add_path
fish_add_path -U "$HOME/.local/bin"
set -Ux fish_user_paths $fish_user_paths ~/.local/bin
set -Ux fish_user_paths $HOME/go/bin $fish_user_paths

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
set -Ux MOZ_ENABLE_WAYLAND 1


# BEGIN opam configuration
# This is useful if you're using opam as it adds:
#   - the correct directories to the PATH
#   - auto-completion for the opam binary
# This section can be safely removed at any time if needed.
#test -r '/home/phillips/.opam/opam-init/init.fish' && source '/home/phillips/.opam/opam-init/init.fish' > /dev/null 2> /dev/null; or true
test -r '/home/phillips/.opam/opam-init/init.fish'; and source '/home/phillips/.opam/opam-init/init.fish' >/dev/null 2>/dev/null
# END opam configuration

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/phillips/Downloads/google-cloud-sdk/path.fish.inc' ]; . '/home/phillips/Downloads/google-cloud-sdk/path.fish.inc'; end



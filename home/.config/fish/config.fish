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

# WAYLAND x ELECTRON STUFF
set -Ux GDK_BACKEND wayland
set -Ux QT_QPA_PLATFORM wayland
set -Ux XDG_CURRENT_DESKTOP sway
set -Ux MOZ_ENABLE_WAYLAND 1
set -Ux ELECTRON_OZONE_PLATFORM_HINT wayland

# STMweb dev
set -Ux STMWEB_DIR /home/phillips/Busii/stmweb/stmweb_python_2/
set -Ux STMWEB_PORT 8080

# GTK
set -Ux GTK_THEME Arc-Dark

# Set PYENV_ROOT
set -Ux PYENV_ROOT $HOME/.pyenv

# Add pyenv to PATH
fish_add_path $PYENV_ROOT/bin

# Initialize pyenv
status --is-interactive; and source (pyenv init --path | psub)
status --is-interactive; and source (pyenv init - | psub)

# Initialize pyenv-virtualenv
status --is-interactive; and source (pyenv virtualenv-init - | psub)

# The next line updates PATH for the Google Cloud SDK.
# if [ -f '/home/phillips/Downloads/google-cloud-sdk/path.fish.inc' ]
#     . '/home/phillips/Downloads/google-cloud-sdk/path.fish.inc'
# end

# Direnv hook
direnv hook fish | source

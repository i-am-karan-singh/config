switch (uname)
    case Darwin
        eval "$(/opt/homebrew/bin/brew shellenv)"
        export HOMEBREW_NO_INSTALL_CLEANUP=TRUE
        export HOMEBREW_NO_ENV_HINTS=TRUE

        alias tailscale="/Applications/Tailscale.app/Contents/MacOS/Tailscale"

        set -gx PATH $PATH /Users/karan/.lmstudio/bin
    case Linux
        set -gx PATH $PATH /home/karan/.lmstudio/bin

        set -gx DOCKER_HOST unix:///run/user/1000/podman/podman.sock
    case '*'
        # do things for other OSs
end

set -U fish_greeting

fzf --fish | source
bind -M insert "ç" fzf-cd-widget

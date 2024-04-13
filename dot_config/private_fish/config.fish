if status is-interactive
    # Commands to run in interactive sessions can go here
end

# remove the welcome message
set fish_greeting ""


# starship prompt
starship init fish | source
enable_transience

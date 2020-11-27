# emc - Edit My Config.
# https://github.com/demartini/emc.fish

complete --command $EMC_CMD --no-files --description "Oh My Fish"
complete --command $EMC_CMD --no-files --arguments bash --condition "__fish_use_subcommand" --description "Opens the Bash config file."
complete --command $EMC_CMD --no-files --arguments fish --condition "__fish_use_subcommand" --description "Opens the Fish config file."
complete --command $EMC_CMD --no-files --arguments git --condition "__fish_use_subcommand" --description "Opens the Git config file."
complete --command $EMC_CMD --no-files --arguments gpg --condition "__fish_use_subcommand" --description "Opens the GPG config file."
complete --command $EMC_CMD --no-files --arguments gpga --condition "__fish_use_subcommand" --description "Opens the GPG agent config file."
complete --command $EMC_CMD --no-files --arguments nvim --condition "__fish_use_subcommand" --description "Opens the Neovim config file."
complete --command $EMC_CMD --no-files --arguments starship --condition "__fish_use_subcommand" --description "Opens the starship config file."
complete --command $EMC_CMD --no-files --arguments tmux --condition "__fish_use_subcommand" --description "Opens the tmux config file."
complete --command $EMC_CMD --no-files --arguments vim --condition "__fish_use_subcommand" --description "Opens the Vim config file."
complete --command $EMC_CMD --no-files --arguments zsh --condition "__fish_use_subcommand" --description "Opens the Zsh config file."
complete --command $EMC_CMD --no-files --arguments version --condition "__fish_use_subcommand" --description "Show the current version."
complete --command $EMC_CMD --no-files --arguments help --condition "__fish_use_subcommand" --description "Print help."

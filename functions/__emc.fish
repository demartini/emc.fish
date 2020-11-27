# emc - Edit My Config.
# https://github.com/demartini/emc.fish

set -g _emc_version 1.0.0

function __emc -d "Edit My Config"
    set option $argv[1]
    switch "$option"
        case 'help'
            _emc_help

        case 'version'
            echo -e "$EMC_CMD, version $_emc_version"

        case 'bash'
            _emc_bash

        case 'fish'
            _emc_fish

        case 'git'
            _emc_git

        case 'gpg'
            _emc_gpg

        case 'gpga'
            _emc_gpga

        case 'nvim'
            _emc_nvim

        case 'starship'
            _emc_starship

        case 'tmux'
            _emc_tmux

        case 'vim'
            _emc_vim

        case 'zsh'
            _emc_zsh

        case ''
            _emc_help >&2
            return 1

        case '*'
            echo -e (set_color red --bold)"✗ Unknown option: $option"(set_color normal) >&2
            return 1
    end
end

function _emc_help
    echo -e "emc - Edit My Config\n"
    echo -e "USAGE"
    echo -e "   $EMC_CMD [option]\n"
    echo -e "OPTIONS"
    echo -e "   bash       Opens the Bash config file."
    echo -e "   fish       Opens the Fish config file."
    echo -e "   git        Opens the Git config file."
    echo -e "   gpg        Opens the GPG config file."
    echo -e "   gpga       Opens the GPG agent config file."
    echo -e "   nvim       Opens the Neovim config file."
    echo -e "   starship   Opens the starship config file."
    echo -e "   tmux       Opens the tmux config file."
    echo -e "   vim        Opens the Vim config file."
    echo -e "   zsh        Opens the Zsh config file."
    echo -e "   version    Show the current version."
    echo -e "   help       Print this help.\n"
    echo -e "For more information visit → https://git.io/emc.fish"
end

function _emc_bash
    set file $HOME/.bashrc
    if test -f $file
        echo -e (set_color cyan)"→ Opening" (set_color --underline)"~/.bashrc"(set_color normal) (set_color cyan)"file."(set_color normal)
        command $EMC_EDITOR $file
    else
        echo -e (set_color red --bold)"✗ The" (set_color --underline)"~/.bashrc"(set_color normal) (set_color red --bold)"file does not exist."(set_color normal)
    end
end

function _emc_fish
    set file $HOME/.config/fish/config.fish
    if test -f $file
        echo -e (set_color cyan)"→ Opening" (set_color --underline)"~/.config/fish/config.fish"(set_color normal) (set_color cyan)"file."(set_color normal)
        command $EMC_EDITOR $file
    else
        echo -e (set_color red --bold)"✗ The" (set_color --underline)"~/.config/fish/config.fish"(set_color normal) (set_color red --bold)"file does not exist."(set_color normal)
    end
end

function _emc_git
    set file $HOME/.gitconfig
    if test -f $file
        echo -e (set_color cyan)"→ Opening" (set_color --underline)"~/.gitconfig"(set_color normal) (set_color cyan)"file."(set_color normal)
        command $EMC_EDITOR $file
    else
        echo -e (set_color red --bold)"✗ The" (set_color --underline)"~/.gitconfig"(set_color normal) (set_color red --bold)"file does not exist."(set_color normal)
    end
end

function _emc_gpg
    set file $HOME/.gnupg/gpg.conf
    if test -f $file
        echo -e (set_color cyan)"→ Opening" (set_color --underline)"~/.gnupg/gpg.conf"(set_color normal) (set_color cyan)"file."(set_color normal)
        command $EMC_EDITOR $file
    else
        echo -e (set_color red --bold)"✗ The" (set_color --underline)"~/.gnupg/gpg.conf"(set_color normal) (set_color red --bold)"file does not exist."(set_color normal)
    end
end

function _emc_gpga
    set file $HOME/.gnupg/gpg-agent.conf
    if test -f $file
        echo -e (set_color cyan)"→ Opening" (set_color --underline)"~/.gnupg/gpg-agent.conf"(set_color normal) (set_color cyan)"file."(set_color normal)
        command $EMC_EDITOR $file
    else
        echo -e (set_color red --bold)"✗ The" (set_color --underline)"~/.gnupg/gpg-agent.conf"(set_color normal) (set_color red --bold)"file does not exist."(set_color normal)
    end
end

function _emc_nvim
    set file $HOME/.config/nvim/init.vim
    if test -f $file
        echo -e (set_color cyan)"→ Opening" (set_color --underline)"~/.config/nvim/init.vim"(set_color normal) (set_color cyan)"file."(set_color normal)
        command $EMC_EDITOR $file
    else
        echo -e (set_color red --bold)"✗ The" (set_color --underline)"~/.config/nvim/init.vim"(set_color normal) (set_color red --bold)"file does not exist."(set_color normal)
    end
end

function _emc_starship
    set file $HOME/.config/starship.toml
    if test -f $file
        echo -e (set_color cyan)"→ Opening" (set_color --underline)"~/.config/starship.toml"(set_color normal) (set_color cyan)"file."(set_color normal)
        command $EMC_EDITOR $file
    else
        echo -e (set_color red --bold)"✗ The" (set_color --underline)"~/.config/starship.toml"(set_color normal) (set_color red --bold)"file does not exist."(set_color normal)
    end
end

function _emc_tmux
    set file $HOME/.tmux.conf
    if test -f $file
        echo -e (set_color cyan)"→ Opening" (set_color --underline)"~/.tmux.conf"(set_color normal) (set_color cyan)"file."(set_color normal)
        command $EMC_EDITOR $file
    else
        echo -e (set_color red --bold)"✗ The" (set_color --underline)"~/.tmux.conf"(set_color normal) (set_color red --bold)"file does not exist."(set_color normal)
    end
end

function _emc_vim
    set file $HOME/.vimrc
    if test -f $file
        echo -e (set_color cyan)"→ Opening" (set_color --underline)"~/.vimrc"(set_color normal) (set_color cyan)"file."(set_color normal)
        command $EMC_EDITOR $file
    else
        echo -e (set_color red --bold)"✗ The" (set_color --underline)"~/.vimrc"(set_color normal) (set_color red --bold)"file does not exist."(set_color normal)
    end
end

function _emc_zsh
    set file $HOME/.zshrc
    if test -f $file
        echo -e (set_color cyan)"→ Opening" (set_color --underline)"~/.zshrc"(set_color normal) (set_color cyan)"file."(set_color normal)
        command $EMC_EDITOR $file
    else
        echo -e (set_color red --bold)"✗ The" (set_color --underline)"~/.zshrc"(set_color normal) (set_color red --bold)"file does not exist."(set_color normal)
    end
end

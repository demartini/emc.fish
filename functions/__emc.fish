# emc - Edit My Config.
# https://github.com/demartini/emc.fish

set -g _emc_version 1.0.0
set -g _options_path "$HOME/.config/fish/conf.d/emc_options.txt"
set -g _pretty_path "~/"(string trim --chars=$HOME /$_options_path)

function __emc -d "Edit My Config"
    set options
    set files

    set option $argv[1]
    switch "$option"
        case 'help'
            _emc_help
            return

        case 'version'
            echo -e "$EMC_CMD, version $_emc_version"
            return

        case 'add'
            _add_option $argv[2] $argv[3]
            return
            
        case 'remove'
            _remove_option $argv[2]
            return

        case 'list'
            _list_options
            return

        case ''
            _emc_help >&2
            return 1
     end

     
    set lines (string split \n (string trim  < $_options_path))    
    # Read all options and file locations
    for line in $lines
        set l  (string split "," $line)
        set -a options (string trim $l[1])
        set -a files (string trim $l[2])
    end
    # Checks the input matches alias
    set index 1
    for alias in $options
        if test "$alias" = "$option"
            _open_file $files[$index]
            return
        end
        set index (math $index + 1)
    end
    echo -e (set_color red --bold)"✗ Unknown option: $option"(set_color normal) >&2
end


# Based on input, opends the associated config file
function _open_file
    set file $argv[1]
    if test -f $HOME/$file
        echo -e (set_color cyan)"→ Opening" (set_color --underline)"~/$file"(set_color normal)
        command $EMC_EDITOR $HOME/$file
    else
        echo -e (set_color red --bold)"✗ The" (set_color --underline)"~/$file"(set_color normal) (set_color red --bold)"file does not exist."(set_color normal)
    end
end

# Lets user add their own options
function _add_option
    set name $argv[1]
    set file $argv[2]
    
    # Check if both name and file are provided
    # Should maybe add more checks for valid names and paths names
    if test -z "$name" -o -z "$file"
        echo "Error: Both name and file must be provided. You gave: "
        echo "Name: '$name'"
        echo "File: '$file'"
        return 1
    end

    # Read all options
    set options
    set lines (string split \n (string trim  < $_options_path))    
    for line in $lines 
        set l  (string split "," $line)
        set -a options (string trim $l[1])
    end

    if string match -q "$name" $options        
        echo "Option '$name' already exists in '$_pretty_path'"
        return
    else
        echo "Adding '$name' at '$file' to '$_pretty_path'"
        echo "$name, $file" >> $_options_path
        return
    end
end

function _remove_option
    set name $argv[1]

    # Check if  name is provided
    # Should maybe add more checks for valid names and paths names
    if test -z "$name"
        echo "Error: Both name must be provided. You gave: "
        echo "Name: '$name'"
        return 1
    end

    # Read the current options from the file
    set lines (string split \n (string trim  < $_options_path))    
    # Create a temporary file to store modified content
    set temp_file (mktemp)
    
    for line in $lines
        set l (string split "," $line)
        set alias (string trim $l[1])

        set found_option false
        if test "$alias" != "$name"
            # Write the line to the temporary file (exclude the line to be removed)
            echo $line >> $temp_file

        else 
            set found_option true
        end
        
    end
    
    if $found_option
        echo "'$name' was removed from options in '$_pretty_path'"
    else
        echo "Found no command '$name'"
    end  
    
    # Replace the original file with the modified content
    mv $temp_file $_options_path 
end

function _list_options
    # Read the current options from the file
    set lines (string split \n (string trim  < $_options_path))    
    # Create a temporary file to store modified content
    set temp_file (mktemp)

    for line in $lines
        set l (string split "," $line)
        set alias (string trim $l[1])
        set file (string trim $l[2])
        echo "Option: $alias"
        echo "Config location: ~/$file"\n
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
    echo -e "   ssh        Opens the SSH config file."
    echo -e "   nvim       Opens the Neovim config file."
    echo -e "   starship   Opens the starship config file."
    echo -e "   tmux       Opens the tmux config file."
    echo -e "   vim        Opens the Vim config file."
    echo -e "   zsh        Opens the Zsh config file."
    echo -e "   version    Show the current version."
    echo -e "   add        Adds new option.
              Format should be: emc add <name> <path/to/file/from/home"
    echo -e "   remove     Removes an option.
              Format should be emc remove <name>"
    echo -e "   list       List all options, including user added."
    echo -e "   help       Print this help.\n"
    echo -e "For more information visit → https://git.io/emc.fish"
end



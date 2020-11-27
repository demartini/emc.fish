# emc - Edit My Config.
# https://github.com/demartini/emc.fish

if test -z "$EMC_CMD"
    set -U EMC_CMD "emc"
end

if test -z "$EMC_EDITOR"
    set -U EMC_EDITOR "code"
end

if test ! -z $EMC_CMD
    function $EMC_CMD --description "Edit My Config"
        __emc $argv
    end
end

function __emc_uninstall --on-event emc_uninstall
    functions --erase $EMC_CMD
    functions --erase $EMC_EDITOR
    set --erase EMC_CMD
    set --erase EMC_EDITOR

    echo -e (set_color --italics cyan)"→ emc.fish uninstalled."(set_color normal)
end

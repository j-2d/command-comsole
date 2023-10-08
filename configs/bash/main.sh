#        │ File: ~/.bash_profile
# ───────┼────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
#    1   │ test -f ~/.profile && . $_
#    2   │ test -f ~/.bashrc && . $_
#    3   │
#    4   │ test -f /c/dev/command-console/configs/bash/main.sh && . $_


function load()
{
  OIFS="$IFS"
  IFS=$'\n'
  for file in `find "$COMMAND_CONSOLE_DIR" -type f -name "$1"`
  do
    source "$file" && echo -e "${Green}Loaded${Color_Off} $(basename $file)"
  done
  IFS="$OIFS"
}

COMMAND_CONSOLE_MAIN=${BASH_SOURCE[0]}
COMMAND_CONSOLE_DIR=$( dirname "$COMMAND_CONSOLE_MAIN" )

load 'colors.sh'
load 'settings.sh'
load 'functions.sh'
echo -e ''
load 'alias.*'
echo -e ''
load 'env.*'
echo -e ''

# echo -e "
# ${Purple}The Wheel of Time turns, and Ages come and pass,${Color_Off}
# ${Purple}    leaving memories that become legend.${Color_Off}
# ${Purple}    Legend fades to myth, and even myth is long forgotten${Color_Off}
# ${Purple}    when the Age that gave it birth comes again.${Color_Off}

# ${Purple}In one Age, called the Third Age by some,${Color_Off}
# ${Purple}    an Age yet to come,${Color_Off}
# ${Purple}    an Age long past,${Color_Off}
# ${Purple}    a wind rose in the Mountains of Mist.${Color_Off}


# ${Purple}The wind was not the beginning.${Color_Off}
# ${Purple}    There are neither beginnings nor endings to the Wheel of Time.${Color_Off}

# ${Purple}But it was a beginning.${Color_Off}

# - Robert Jordan, The Eye of the World
# "



# echo -e "
#                   /\ 
#                  / |\ 
#                 / /\ \ 
#                / /  \ \ 
#               / /    \ \ 
#              /_/      \_\ 
#              \    '\`    /
#               )   ||   ( 
#               |   ||   | 
#               |   ||   | 
#               |   ||   |
#               |   ||   | 
#               |   ||   |  
#               |   ||   | 
#               |   ||   | 
#   /           |   ||   |           \ 
#  /(           |   ||   |           )\ 
#  |\`\_         |   ||   |         _/'| 
#  |\`. \`-._     |   ||   |     _,-' ,'|
#  (   \` . \`-._ |  _--_  | _,-' , '   )
#   \`.._   \` . \`-./.__.\.-' , '   _,-'
#       \`-._   \` | /  \ | '   _,-'
#           \`-._/ |_()_| \_,-'
#          _.-'   ______   \`-,       ${Purple}The Wheel of Time turns, and Ages come and pass,${Color_Off}
#         '---.  |______|   /         ${Purple}    leaving memories that become legend.${Color_Off}
#              \  ______   /          ${Purple}    Legend fades to myth, and even myth is long forgotten${Color_Off}
#              |  \>  </  /           ${Purple}    when the Age that gave it birth comes again.${Color_Off}
#               \________/ 
#               _]______[_            ${Purple}In one Age, called the Third Age by some,${Color_Off}
#               |        |            ${Purple}    an Age yet to come,${Color_Off}
#               |________|            ${Purple}    an Age long past,${Color_Off}
#                ]______[             ${Purple}    a wind rose in the Mountains of Mist.${Color_Off}
#               |        |
#               |________|
#                 ]____[              ${Purple}The wind was not the beginning.${Color_Off}
#               .'      \`.           ${Purple}    There are neither beginnings nor endings to the Wheel of Time.${Color_Off}
#               | <   >  |>
#              <|   <   >|            ${Purple}But it was a beginning.${Color_Off}
#                \`.____.'
#                  V   V              - Robert Jordan, The Eye of the World
# "

eval "$(starship init bash)"
alias br='. /c/Users/e371975/.bash_profile'
alias be='code $COMMAND_CONSOLE_DIR'

echo -e "      ${BBlue}Command Console Booted Up${Color_Off}"

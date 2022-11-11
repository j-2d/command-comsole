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

load 'colors.sh'
load 'settings.sh'
load 'functions.sh'
echo -e ''
load 'alias.*'
echo -e ''
load 'env.*'
echo -e ''

# echo -e "
# ${Purple}
# The Wheel of Time turns, and Ages come and pass, leaving memories that become legend.
#       Legend fades to myth, and even myth is long forgotten when the Age that gave it birth comes again.

#       In one Age, called the Third Age by some, 
#       an Age yet to come, 
#       an Age long past, 
#       a wind rose in the Mountains of Mist.

#       The wind was not the beginning.

#       There are neither beginnings nor endings to the Wheel of Time.

#       But it was a beginning.${Color_Off}

#             - Robert Jordan, The Eye of the World
# "
echo -e "
                  /\       ${Purple}The Wheel of Time turns, and Ages come and pass,${Color_Off}
                 / |\      ${Purple}    leaving memories that become legend.${Color_Off}
                / /\ \     ${Purple}    Legend fades to myth,${Color_Off}
               / /  \ \    ${Purple}    and even myth is long forgotten${Color_Off}
              / /    \ \   ${Purple}    when the Age that gave it birth comes again.${Color_Off}
             /_/      \_\ 
             \    '\`    /
              )   ||   ( 
              |   ||   | 
              |   ||   | 
              |   ||   | 
              |   ||   | 
              |   ||   |   ${Purple}In one Age, called the Third Age by some,${Color_Off}
              |   ||   |   ${Purple}    an Age yet to come,${Color_Off}
              |   ||   |   ${Purple}    an Age long past,${Color_Off}
              |   ||   |   ${Purple}    a wind rose in the Mountains of Mist.${Color_Off}
              |   ||   | 
  /           |   ||   |           \ 
 /(           |   ||   |           )\ 
 |\`\_         |   ||   |         _/'| 
 |\`. \`-._     |   ||   |     _,-' ,'|
 (   \` . \`-._ |  _--_  | _,-' , '   )
  \`.._   \` . \`-./.__.\.-' , '   _,-'
      \`-._   \` | /  \ | '   _,-'
          \`-._/ |_()_| \_,-'
       ___.-'   ______   \`-,
      '-----.  |______|   / 
             \  ______   /  
             |  \>  </  / 
              \________/   
              _]______[_   
              |        |    
              |________|   ${Purple}The wind was not the beginning.${Color_Off}
               ]______[    ${Purple}There are neither beginnings nor endings to the Wheel of Time.${Color_Off}
              |        |
              |________|  
              _]______[_   
              |        |   
              |________|   
              _]______[_
              |        |
              |________|
                ]____[     ${Purple}But it was a beginning.${Color_Off}
              .'      \`.
              | <   >  |>
             <|   <   >|            - Robert Jordan, The Eye of the World
               \`.____.'
                 V   V
"

COMMAND_CONSOLE_MAIN=${BASH_SOURCE[0]}
COMMAND_CONSOLE_DIR=$( dirname "$COMMAND_CONSOLE_MAIN" )

eval "$(starship init bash)"
alias br='source /c/Users/e371975/.bash_profile'
alias goprofile='cd /c/Users/e371975/tools/bash_profile/'
alias be='code $COMMAND_CONSOLE_DIR'

echo -e ".\n..\n... ${BBlue}Command Console Booted Up${Color_Off}"

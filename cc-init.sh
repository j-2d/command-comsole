#!/bin/bash -eu

SCRIPTS_FOLDER=~/.scripts # Change this to wherever you keep custom scripts, this should be in you $PATH variable
VIM_ROOT=~/.vim # The user vim directory for bundle managed plugins
IPYTHON_ROOT=~/.ipython # full IPython customizations needs it own directory ...


# Above the fold
######################################################################################################################
# below the fold

# Determine platform first
export platform='unknown'
uname=$(uname)
if [[ "x${uname}" == "xDarwin" ]]; then
    export platform='mac'
elif [[ "x${uname}" == "xLinux" ]]; then
    export platform='linux'
fi


# install main config files
for dotfile in bashrc #vimrc gitconfig xmodmap inputrc hgrc curlrc tmux.conf plan caffrc pypirc sblrc screenrc
do
    if [ -L ~/.${dotfile} ]
    then
        rm ~/.${dotfile}
    fi
    ln -sv $(pwd)/${dotfile} ~/.${dotfile}
done

# install .vim/vim for vim vundle
if [ -L ${VIM_ROOT}/vim ]
then
    rm ${VIM_ROOT}/vim
fi
ln -sv $(pwd)/vim ${VIM_ROOT}

mkdir -p ${IPYTHON_ROOT}/profile_default

# install ipython config dir
if [ -L ${IPYTHON_ROOT}/profile_default/ipython_config.py ]
then
    rm ${IPYTHON_ROOT}/profile_default/ipython_config.py
fi
ln -sv $(pwd)/ipython_config.py ${IPYTHON_ROOT}/profile_default/ipython_config.py

# install scripts folder
if [ ! -d ${SCRIPTS_FOLDER} ]
then
    mkdir -p ${SCRIPTS_FOLDER}
fi

# put scripts in scripts folder
for script in scripts/*
do
    if [ ! -e ${SCRIPTS_FOLDER}/$(basename ${script}) ]
    then
        if [[ ${platform} == 'mac' ]]; then
            ln -sv $(greadlink -f ${script}) ${SCRIPTS_FOLDER}/$(basename ${script})
        else
            ln -sv $(readlink -f ${script}) ${SCRIPTS_FOLDER}/$(basename ${script})
        fi
    fi
done

echo -e "\n\nIf vim shows attitude, run:"
echo -e "git clone https://github.com/gmarik/Vundle.vim.git ${VIM_ROOT}/bundle/Vundle.vim"
echo -e "vim +PluginInstall +qall"

if [ ! -d ${VIM_ROOT}/bundle ]
    then
    echo "Ok, ok, I am already trying to do that"
    git clone https://github.com/gmarik/Vundle.vim.git ${VIM_ROOT}/bundle/Vundle.vim
    echo "And now let's try to install all those pesky plugins ..."
    vim +PluginInstall +qall
    echo "Done!"
fi

#!/usr/bin/env bash
###########################################################################
##                     Copyright (C) 2017 wystan
##
##       filename: install.sh
##    description:
##        created: 2017-07-04 22:55:53
##         author: wystan
##
###########################################################################

function check_os() {
    os=`uname -s`
    [ $os != "Linux" ] && {
        echo "only work on linux, EXIT!"
        exit 0
    }
}

function install_font() {
    sudo cp ./*.ttf /usr/share/fonts/
    sudo mkfontscale
    sudo mkfontdir
    sudo fc-cache -fv
}

check_os
install_font
###########################################################################

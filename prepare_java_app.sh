#!/bin/bash

create_link(){
    dir_name=$1
    if test ! -e "${SERVER_DIR}/${dir_name}" ; then
	echo "Creating link ${SERVER_DIR}/${dir_name}"
	ln -s "${INSTALL_DIR}/${dir_name}"  "${SERVER_DIR}/${dir_name}"
    fi
}

create_link 'mods'
create_link 'fontfiles'
create_link 'oresources'
create_link 'resources'
create_link 'scripts'

if [[ ! ( -e "${SERVER_DIR}/server-icon.png" || -L "${SERVER_DIR}/server-icon.png" ) ]] ; then
    ln -s ${INSTALL_DIR}/server-icon.png  "${SERVER_DIR}/server-icon.png"
fi


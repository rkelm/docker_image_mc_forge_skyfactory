#!/bin/bash
# Delete any existing symbolic links created in prepare_java_app.sh

remove_link() {
    link_file=$1
    echo "unprepare_java_app.sh: Testing for link ${link_file}."
    if test -L "${link_file}" ; then
	echo "unprepare_java_app.sh: Removing link ${link_file}."
	rm "${link_file}"
    fi
}

remove_link "${SERVER_DIR}/mods"
remove_link "${SERVER_DIR}/fontfiles"
remove_link "${SERVER_DIR}/oresources"
remove_link "${SERVER_DIR}/resources"
remove_link "${SERVER_DIR}/scripts"


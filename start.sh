#! /usr/bin/env bash

set -e

project_dir=$(dirname $(readlink -f "$0"))

export MARKDOWN_FILENAME=$(readlink -f "$1")

shift

if echo $@ | grep bind > /dev/null
then
    args=$@
else
    args="$@ --bind 127.0.0.1"
    echo only visible locally - to make visible on lan add --bind 0.0.0.0
fi

cd "$project_dir"
cd web

echo check the following address for a nicer version of $MARKDOWN_FILENAME
exec python3 -m http.server --cgi $args

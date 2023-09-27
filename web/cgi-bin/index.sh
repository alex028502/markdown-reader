#! /usr/bin/env bash

echo content-type: text/html
echo
cd $(dirname $0)
cd ../..

exec venv/bin/markdown_py $MARKDOWN_FILENAME

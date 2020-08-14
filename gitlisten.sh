#!/bin/sh
cd $1
echo listening $1
while inotifywait -q -r -e create,move,modify,delete --exclude "\.git" .; do git add . && git commit -m auto && git push; done

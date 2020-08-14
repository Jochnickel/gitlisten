!#/bin/sh
while inotifywait -q -r -e create,move,modify,delete --exclude "\.git" .; do git add . && git commit -m auto && git push; done

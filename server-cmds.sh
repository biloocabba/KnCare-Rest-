#!/usr/bin/env bash
for id in $(docker ps -q)
do
    if [[ $(docker port "${id}") == *"${1}"* ]]; then
        echo "stopping container ${id}"
        docker stop "${id}"
    fi
done

docker run -p 8080:8080 -d  biloocabba/kncare-app:4.0

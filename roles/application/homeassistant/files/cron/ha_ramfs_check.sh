#!/bin/bash

# Redirect both standard output and standard error to the journal
exec &> >(systemd-cat -t my_script)

if [[ $(docker exec homeassistant stat -f -c "%T" "/config/www/temp") != "ramfs" ]]; then
  echo "Making /config/www/temp into a ramfs symbolic link folder"
  docker exec homeassistant mount ramfs -t ramfs -o file=100M /config/www/temp
  exit 0
fi

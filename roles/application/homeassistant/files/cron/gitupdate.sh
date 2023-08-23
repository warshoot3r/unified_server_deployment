#!/bin/bash

cd /usr/share/hassio/homeassistant 
git remote set-url origin https://warshoot3r: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@github.com/warshoot3r/HomeAssistant.git
git add .
git status
git commit -m "auto push script "
git push -u origin master
exit 0
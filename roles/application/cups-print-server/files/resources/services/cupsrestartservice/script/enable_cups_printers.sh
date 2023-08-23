#!/bin/sh
for printer in $(lpstat -p|awk '{print $2}')
do
    echo "Forcibly enabling: $printer"
    # PrinterId:-p  Enable:-E
    lpadmin -p "$printer" -E
done
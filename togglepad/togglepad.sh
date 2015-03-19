#!/bin/bash
ID="$(xinput | egrep -i ".*touchpad" | egrep -o "id=[[:digit:]]+" | egrep -o "[[:digit:]]+")"
S="$(xinput --list-props $ID | egrep 'Device Enabled' | egrep -o "[[:digit:]]+$")"
if [ $S -eq 1 ]
then
    xinput disable $ID
    echo "Touchpad disabled!"
else
    xinput enable $ID
    echo "Touchpad enabled!"
fi


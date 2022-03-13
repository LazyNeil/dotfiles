#!/bin/bash
temp=$(
    sensors | grep -A 0 'CPU T' | cut -c22-23
)

if [ "$temp" -lt 40 ]; then
    echo -n "%{F33B750}"
elif [ "$temp" -ge 55 ]; then
    echo -n "%{FE40C28}"
elif [ "$temp" -ge 40 ]; then
    echo -n "%{FEEBF13}"
fi

printf ' %s°C' $temp

#!/bin/sh

options=$(pactl -f json list sinks | jq -r '.[] | .description')
echo "$options"

echo "-----"

test=$(echo "$options" | sed -nre '/$Easy $/d')

echo "$test"

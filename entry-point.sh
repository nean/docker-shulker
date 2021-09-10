#!/bin/sh
set -e

false | cp -i /opt/shulker/config.example.json /shulker-config/config.json 2>/dev/null

node /opt/shulker/build/index.js /shulker-config/config.json

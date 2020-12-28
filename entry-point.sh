#!/bin/sh
set -e

cp -n /opt/shulker/config.json /shulker-config/config.json

node /opt/shulker/build/index.js /shulker-config/config.json
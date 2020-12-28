#!/bin/sh
set -e

cp /opt/shulker/config.json /shulker-config/config.json

node /opt/shulker/build/index.js /shulker-config/config.json
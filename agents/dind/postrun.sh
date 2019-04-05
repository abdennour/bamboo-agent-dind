#!/bin/bash

# $1: path of the build dir
sed -i 's@'"${HOME}"'/bamboo-agent-home/xml-data/build-dir@'"${1}"'@g' \
     ${HOME}/bamboo-agent-home/bamboo-agent.cfg.xml
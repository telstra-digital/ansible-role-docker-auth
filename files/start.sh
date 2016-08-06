#!/bin/sh

CONF_PATH=/config/auth_config.yml

# Start docker authentication server with debug enable.
# /auth_server -v=5 -alsologtostderr=true -log_dir=/logs $CONF_PATH

# Start docker authentication server
/auth_server -log_dir=/logs $CONF_PATH

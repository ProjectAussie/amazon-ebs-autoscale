#!/bin/bash

# install systemd service
# location was updated for ubuntu, centos uses /usr/lib/systemd/system
cp ebs-autoscale.service /lib/systemd/system/ebs-autoscale.service

# enable the service and start
systemctl daemon-reload
systemctl enable ebs-autoscale.service
systemctl start ebs-autoscale.service

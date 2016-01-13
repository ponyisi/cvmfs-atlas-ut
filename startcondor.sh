#!/bin/bash

echo "TCP_FORWARDING_HOST = $(curl -s http://utatlas.its.utexas.edu/ip)" >> /etc/condor/config.d/00-networking
echo 'PRIVATE_NETWORK_INTERFACE = $(IP_ADDRESS)' >> /etc/condor/config.d/00-networking
echo "PRIVATE_NETWORK_NAME = nova" >> /etc/condor/config.d/00-networking
service condor start

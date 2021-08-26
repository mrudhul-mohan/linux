#!/bin/bash

SSHPASS="value"

## Server login details

SERVER_IP="ip"
USERNAME="user_name"
SSHPORT="port_number"
PASSWORD="passwd"
KEY=""
EXTRA_OPT="-o LogLevel=ERROR -o StrictHostKeyChecking=no -o ControlMaster=auto -o ControlPath="~/.ssh/%r@%h-%p" -o ControlPersist=300"

if [ $SSHPASS = yes ]

then
        sshpass -p ${PASSWORD} ssh ${EXTRA_OPT} ${USERNAME}@${SERVER_IP} -p${SSHPORT}

else


        ssh ${EXTRA_OPT} -i ${KEY} ${USERNAME}@${SERVER_IP} -p${SSHPORT}


fi

#!/bin/bash
SERVIP=10.10.14.26                   #xx : ubuntu host ip
if ! df | grep ubuntu_nfs > /dev/null ; then
        ping -c 1 $SERVIP > /dev/null
        if [ $? -eq 0 ] ; then
                sudo mount -t nfs $SERVIP:/srv/nfs /mnt/ubuntu_nfs
                df | grep ubuntu_nfs
        fi
fi

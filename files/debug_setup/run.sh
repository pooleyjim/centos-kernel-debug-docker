#!/bin/bash

if [ -z $DEBUG_KERNEL ] ; then
  echo "No kernel version defined, using host"
  DEBUG_KERNEL="$(uname -r)"
fi

yum install crash -y
debuginfo-install kernel-$DEBUG_KERNEL -y
crash /usr/lib/debug/lib/modules/$DEBUG_KERNEL/vmlinux /var/crash/vmcore

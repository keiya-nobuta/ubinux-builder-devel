#!/bin/bash

MACHINE=$1
TARGET=$2
SITE_CONF=$3

./meta-ubinux/scripts/checkoutmetas.py
mkdir ubinux
chown ubinux:ubinux ubinux

su ubinux
source ./oe-init-build-env ubinux/${MACHINE}
[ -f "${SITE_CONF}" ] && ln -sf ${SITE_CONF} conf/

bitbake ${TARGET}

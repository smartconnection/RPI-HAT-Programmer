#!/bin/bash

CURRENT_DIR=$(cd $(dirname $0); pwd)

CONFIG=${CURRENT_DIR}/tcl/target/stm32.cfg

sudo openocd  -c "set _CHIPNAME ${CHIPNAME}" -f ${CONFIG} -c \
"   init;
    halt;
    reset halt;
    stm32f1x lock 0
    reset halt;
    shutdown;
"

#!/bin/bash

#load the universal BBB cape using capemgr, so we have access to ADC device.
echo cape-universaln > /sys/devices/platform/bone_capemgr/slots

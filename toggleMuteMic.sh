#!/bin/sh

SAFE_MIC_LEVEL="25%"

# check mic level
if [ "$(amixer sget Capture | grep -E "\w[0-9]{0,3}%" -o -m1)" = $SAFE_MIC_LEVEL ] ;then

    echo Muting mic
	# set volume to 0 by subtracting 100%
	amixer set Capture 100%- -q
	amixer set Capture toggle
else
    echo raising to safe level
	# set volume to 0 by subtracing 100%
	# then, set to 25% by increasing it by 25% from 0
	amixer set Capture toggle
	amixer set Capture 100%- -q
	amixer set Capture $SAFE_MIC_LEVEL -q
fi
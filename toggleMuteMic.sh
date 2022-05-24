#!/bin/sh

# On my laptop, this is the best volume level. Change to fit needs
SAFE_MIC_LEVEL="25%"

# check mic level
if [ "$(amixer sget Capture | grep "\w[0-9]%" -o -m1)" = $SAFE_MIC_LEVEL ] ;then

    # echo Muting mic
	# set volume to 0 by subtracting 100%
	amixer set Capture 100%- -q
else
    # echo raising to safe level
	# set volume to 0 by subtracing 100%
	# then, set to 25% by increasing it by 25% from 0
	amixer set Capture 100%- -q
	amixer set Capture $SAFE_MIC_LEVEL -q
fi
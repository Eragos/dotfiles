#!/bin/sh
# GPL (c) 2025 by Michael Förster <mfo1009@googlemail.com>

PERCENT=`pmset -g batt | grep -Eo "\d+%" | cut -d% -f1`
RESULT=0

if [ $PERCENT -lt 21 ]; then
	RESULT=1
fi

if [ $PERCENT -gt 79 ]; then
	RESULT=1
fi

echo $RESULT
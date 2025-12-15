#!/bin/sh
# GPL (c) 2025 by Michael Förster <mfo1009@googlemail.com>

CPU=`/opt/homebrew/bin/tmux-mem-cpu-load -g 5 | cut -d '%' -f 1 | cut -d ']' -f 2 | cut -d '.' -f 1`
RESULT=0

if [ $CPU -gt 50 ]; then
	RESULT=1
fi

echo $RESULT
#!/bin/bash

source core/utils.sh
source core/init.sh
source core/scan.sh
source core/exploit.sh
source core/trace.sh

COMMAND="$1"

case "$COMMAND" in
	init)
		init_network
		;;
	scan)
		scan_target "$2"
		;;
	exploit)
		exploit_target "$2"
		;;
	trace)
		show_trace "$2"
		;;
	*)
		echo "Usage:"
		echo "./game.sh init"
		echo "./game.sh scan <ip>"
		echo "./game.sh exploit <ip>"
		echo "./game.sh trace"
		;;
esac

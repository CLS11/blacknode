#!/bin/bash

scan_target(){
	TARGET="$1"
	NODE="$NETWORK_DIR/$TARGET"

	if [ ! -d "$NODE" ]; then
		echo "Target not found"
		return
	fi
	echo "Scanning $TARGET..."
	ls "$NODE/ports"
	log_action "Scanned $TARGET"
}

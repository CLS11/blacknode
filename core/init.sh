#!/bin/bash

init_network(){
	ensure_directories
	echo 0 > "$TRACE_FILE"

	for i in {2..5}; do
		NODE="$NETWORK_DIR/192.168.1.$i"
		mkdir -p "$NODE/ports"

		for port in 22 80 443 3306 21; do
			if [ $((RANDOM % 2)) -eq 1 ]; then
				touch "$NODE/ports/$port"
			fi
		done
		echo $((RANDOM % 5 + 1)) > "$NODE/security_level"
		echo "locked" > "$NODE/status"
	done
	log_action "Network initialised"
	echo "Network ready."
}	

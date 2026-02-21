#!/bin/bash

NETWORK_DIR="network"
STATE_DIR="state"
LOG_DIR="logs"
TRACE_FILE="$STATE_DIR/trace"

log_action(){
	echo "$(date '+%H:%M:%S') - $1" >> "$LOG_DIR/actions.log"
}

ensure_directories(){
	mkdir -p "$NETWORK_DIR"
	mkdir -p "$STATE_DIR"
	mkdir -p "$LOG_DIR"
}
	

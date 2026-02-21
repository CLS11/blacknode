#!/bin/bash

increase_trace(){
	TRACE=$(cat "$TRACE_FILE")
	TRACE=$((TRACE + 1))
	echo "$TRACE" > "$TRACE_FILE"

	if [ "$TRACE" -ge 5 ]; then
		echo "TRACE LIMIT EXCEEDED. SYSTEM LOCKED."
		exit 1
	fi
}

show_trace(){
	echo "Trace level: $(cat "$TRACE_FILE")"
}

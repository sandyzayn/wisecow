#!/bin/bash
PORT=4499

echo "🐮 WiseCow server starting on port $PORT..."
echo "PID: $$"
echo "Date: $(date)"

# Test if required commands exist
command -v fortune >/dev/null 2>&1 || { echo "fortune not found"; exit 1; }
command -v cowsay >/dev/null 2>&1 || { echo "cowsay not found"; exit 1; }
command -v nc >/dev/null 2>&1 || { echo "nc not found"; exit 1; }

echo "All required commands are available"

# Simple netcat server with error handling
while true; do
    echo "Waiting for connection on port $PORT..."
    MSG=$(fortune | cowsay 2>/dev/null)
    if [ $? -ne 0 ]; then
        MSG="Error: fortune or cowsay failed"
    fi
    
    echo -e "HTTP/1.1 200 OK\r\nContent-Type: text/plain\r\n\r\n$MSG" | nc -l -p $PORT -q 1 -w 30
    echo "Request processed at: $(date)"
done

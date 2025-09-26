#!/bin/bash

echo "Starting WiseCow server on port 4499..."

while true; do
    echo -e "HTTP/1.1 200 OK\nContent-Type: text/plain\n\n$(fortune | cowsay)" | nc -l -p 4499 -q 1
done
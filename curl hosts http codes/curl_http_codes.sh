#!/bin/bash
while read LINE; do
	curl -L -o /dev/null --silent --progress-bar --head --write-out '%{http_code} %{url_effective}\n' "$LINE" >> results.txt
done < hosts

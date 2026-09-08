#!/usr/bin/env bash
set -euo pipefail

URL="${1:-https://example.com}"

echo "Checking: $URL"

HTTP_CODE=$(curl -L -s -o /dev/null -w "%{http_code}" --max-time 10 "$URL" || true)

if [[ "$HTTP_CODE" =~ ^2|^3 ]]; then
  echo "OK: HTTP $HTTP_CODE"
  exit 0
else
  echo "ERROR: HTTP $HTTP_CODE"
  exit 1
fi

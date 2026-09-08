#!/usr/bin/env bash
set -euo pipefail

LOG_FILE="${1:-sample_logs/app.log}"

if [[ ! -f "$LOG_FILE" ]]; then
  echo "File not found: $LOG_FILE"
  exit 1
fi

echo "=== ERROR count ==="
grep -c "ERROR" "$LOG_FILE" || true

echo
echo "=== WARN count ==="
grep -c "WARN" "$LOG_FILE" || true

echo
echo "=== HTTP 5xx ==="
grep -E "status=5[0-9]{2}" "$LOG_FILE" || true

echo
echo "=== Timeouts ==="
grep -i "timeout" "$LOG_FILE" || true

echo
echo "=== Unique request_id values with ERROR ==="
grep "ERROR" "$LOG_FILE" | grep -oE 'request_id=[A-Za-z0-9_-]+' | sort -u || true

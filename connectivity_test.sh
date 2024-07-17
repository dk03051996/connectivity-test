#!/bin/sh

# Domain to test
DOMAIN="db-api-server-5frg6aevha-uc.a.run.app"

# Infinite loop to keep the container running and perform connectivity tests
while true; do
  # Print a message indicating the URL being hit
  echo "Hitting URL: https://${DOMAIN}"

  # Perform the connectivity test
  HTTP_RESPONSE=$(curl -s -o /dev/null -w "%{http_code}" "https://${DOMAIN}")

  # Check the HTTP response code
  if [ "$HTTP_RESPONSE" -eq 200 ]; then
    echo "Success: Received HTTP 200"
  else
    echo "Failure: Received HTTP ${HTTP_RESPONSE}"
  fi

  # Wait for 60 seconds before the next test
  sleep 15
done

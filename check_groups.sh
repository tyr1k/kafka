#!/bin/bash

BROKER="address:port"

for group in $(kafka-consumer-groups.sh --bootstrap-server $BROKER --list); do
  echo "Group: $group"
  kafka-consumer-groups.sh --bootstrap-server $BROKER --describe --group $group
  echo "---------------------------------------------"
done

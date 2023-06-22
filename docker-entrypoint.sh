#!/bin/bash

if [[ -z "${CRON_CONFIG_LINE}" ]]; then
  echo "CRON_CONFIG_LINE is not set."
else
  echo "CRON_CONFIG_LINE is set to: '${CRON_CONFIG_LINE}'"
  echo "${CRON_CONFIG_LINE}" > /var/spool/cron/crontabs/root
fi

echo "Starting cron daemon..."
/usr/sbin/crond -f

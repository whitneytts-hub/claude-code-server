#!/bin/sh
# Installed as /usr/bin/railway; the real CLI is /usr/bin/railway-real.
# This container is itself a Railway service, so RAILWAY_PROJECT_ID, RAILWAY_ENVIRONMENT_ID and
# RAILWAY_SERVICE_ID point at this server. The CLI treats them as overrides and ignores
# `railway link` in project folders, so drop them and let the folder link decide.
exec env -u RAILWAY_PROJECT_ID -u RAILWAY_ENVIRONMENT_ID -u RAILWAY_SERVICE_ID /usr/bin/railway-real "$@"

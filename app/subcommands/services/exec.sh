#!/bin/sh
# Description: Run a command in the running instance of the given service
# Usage: <TOOL_NAME> <CMD>...
# vim: ft=sh ts=4 sw=4 sts=4 noet
set -euf

# shellcheck disable=SC1091
. ./lib/compose.sh
# shellcheck disable=SC1091
. ./lib/output.sh

[ -n "${1:-}" ] || fatality 'must provide a service name'
service="$1"
shift

servicepose exec "$service" "$@"
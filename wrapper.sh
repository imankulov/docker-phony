#!/bin/sh
set -e
message_format="$1"
shift 1
echo "$message_format" | phony "$@"

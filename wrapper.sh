#!/bin/sh
set -e
message_format="$1"
if [ "$message_format" = "verbose" ]; then
    message_format='{"created":"{{now.utc}}","event_id":"{{uuid}}","user_email":"{{email}}","message":"{{event.action}} {{product.name}} from {{product.category}}","user_avatar":"{{avatar}}","remote_addr":"{{ipv4}}","country":"{{country}}","country_code":"{{country.code}}"}'
fi
shift 1
echo "$message_format" | phony "$@"

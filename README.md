# docker-phony

Docker wrapper around https://github.com/yields/phony/

## Usage example

Send random messages to stdout with a one-second-long interval.

```
docker run --rm -i -t imankulov/phony '{"user_email": "{{email}}", "action": "{{event.action}} {{product.name}} from {{product.category}}"}' --tick=1s

{"user_email": "ivanfilipovbg@test.name", "action": "Viewed Statis from Outdoors"}
{"user_email": "Skyhartman@example.info", "action": "Purchased Lat Lex from Automotive"}
{"user_email": "jmillspaysbills@test.org", "action": "Purchased Daltfan from Garden"}
{"user_email": "ademilter@test.info", "action": "Watched Damlight from Jewelery"}
{"user_email": "derekebradley@test.us", "action": "Watched Gold Qvocore from Beauty"}
```

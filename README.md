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

There is a hardcoded template for a "verbose JSON":

```
docker run --rm -i -t imankulov/phony verbose --tick=1s

{"created":"2020-07-14T12:16:28Z","event_id":"c9da8c39-687d-4cba-b0f0-fdbc3510ba7e","user_email":"yigitpinarbasi@test.name","message":"Purchased Namstock from Jewelery","user_avatar":"https://s3.amazonaws.com
/uifaces/faces/twitter/jamiebrittain/128.jpg","remote_addr":"203.227.41.27","country":"","country_code":"NA"}
{"created":"2020-07-14T12:16:29Z","event_id":"9dddcbf2-09f8-4d89-9e9b-ec83b52c9688","user_email":"erwanhesry@example.com","message":"Clicked Key Lamsoft from Kids","user_avatar":"https://s3.amazonaws.com/uifa
ces/faces/twitter/anoff/128.jpg","remote_addr":"54.247.106.246","country":"","country_code":"AI"}
{"created":"2020-07-14T12:16:30Z","event_id":"b47a9b9b-6060-4ed2-b67f-68add9df0fbe","user_email":"angelceballos@test.us","message":"Clicked Namdax from Health","user_avatar":"https://s3.amazonaws.com/uifaces/
faces/twitter/joreira/128.jpg","remote_addr":"104.50.12.39","country":"","country_code":"RW"}
```

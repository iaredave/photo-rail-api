#!/bin/bash

curl "http://localhost:4741/pictures" \
  --include \
  --request POST \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "picture": {
      "name": "'"${NAME}"'",
      "url": "'"${URL}"'"
    }
  }'

echo
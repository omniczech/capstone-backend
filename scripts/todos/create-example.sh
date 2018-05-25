#!/bin/bash

curl "http://localhost:4741/todos" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "todo": {
      "title": "'"${TITLE}"'",
      "details": "'"${DETAILS}"'",
      "done": false,
      "list_id": 1
    }
  }'

echo

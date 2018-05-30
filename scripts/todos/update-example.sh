#!/bin/bash

curl "http://localhost:4741/todos/${ID}" \
  --include \
  --request PUT \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "todo": {
      "title": "'"${TITLE}"'",
      "details": "'"${DETAILS}"'",
      "done": true,
      "list_id": '${LISTID}'
    }
  }'

echo

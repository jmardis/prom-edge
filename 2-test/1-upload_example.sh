#!/bin/bash

curl -L -H "Content-Type: application/json" \
  localhost:8080/api/v1/namespaces/default/services/hello:http-function-port/proxy/ \
  -d @FILENAME 
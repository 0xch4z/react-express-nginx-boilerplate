#!/usr/bin/env bash

# build api
( cd api; npm run build )

# build client
( cd client; npm run build )

echo "Built api and client"

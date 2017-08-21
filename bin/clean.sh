#!/usr/bin/env bash

# clean api
( cd api; npm run clean )

# clean client
( cd client; npm run clean )

echo "Cleaned api and client"

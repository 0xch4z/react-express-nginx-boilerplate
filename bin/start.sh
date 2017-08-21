#!/usr/bin/env bash

# scripts
api="( cd api; npm start )"
client="( cd client; npm start )"

# run both
./node_modules/.bin/concurrently --kill-others "$api" "$client"
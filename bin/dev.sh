#!/usr/bin/env bash

# scripts
api="( cd api; npm run dev )"
client="( cd client; npm run dev )"

# run both
./node_modules/.bin/concurrently --kill-others "$api" "$client"

#!/usr/bin/env bash

# run each
( cd api; npm run build ) & 
( cd client; npm run build ) &

#!/usr/bin/env bash

# run each
( cd api; npm start ) & 
( cd client; npm start ) &

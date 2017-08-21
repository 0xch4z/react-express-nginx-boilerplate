#!/usr/bin/env bash

# install root dependencies
npm install

# install api dependencies
( cd api; npm install )

# install react dependencies
( cd client; npm install )

echo "Installed all dependencies"

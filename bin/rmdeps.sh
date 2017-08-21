#!/usr/bin/env bash

# delete api deps
( cd api; rm -rf node_modules )

# delete client deps
( cd client; rm -rf node_modules )

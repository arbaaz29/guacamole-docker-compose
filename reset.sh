#!/bin/bash
echo "This will delete your existing database (./initdb/)"
echo ""
read -p "Are you sure? " -n 1 -r
echo ""   # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]; then # do dangerous stuff
 chmod -R +x -- ./initdb
 sudo rm -r -f ./data/ ./drive/ ./record/ ./nginx/ssl/ ./initdb/
fi


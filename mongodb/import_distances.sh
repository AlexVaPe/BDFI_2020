#!/bin/bash

# Get absolute path of the script
ABSOLUTE_PATH="$(cd "$(dirname "$BASH_SOURCE[0]}")" && pwd)/$(basename "${BASH_SOURCE[0]}")"
ABSOLUTE_DIR=$(dirname "${ABSOLUTE_PATH}")


# Import our enriched airline data as the 'airlines' collection
mongoimport -d agile_data_science -c origin_dest_distances --file $ABSOLUTE_DIR/data/origin_dest_distances.jsonl --host localhost:27017
mongo agile_data_science --eval 'db.origin_dest_distances.ensureIndex({Origin: 1, Dest: 1})' --host localhost:27017

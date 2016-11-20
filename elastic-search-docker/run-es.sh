#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
ES_DIR="$DIR/data"

echo "running es - data stored in: $ES_DIR"
docker run --name elasticsearch -p 9200:9200 -v "$ES_DIR" bitnami/elasticsearch:latest

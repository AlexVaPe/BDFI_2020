#!/bin/bash

# Create kafka topic
bin/kafka-topics.sh \
        --create \
        --zookeeper localhost:2181 \
        --replication-factor 1 \
        --partitions 1 \
        --topic flight_delay_classification_request

# Check if the topic was created correctly
#bin/kafka-topics.sh --list --zookeeper localhost:2181
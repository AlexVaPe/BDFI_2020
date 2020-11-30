#!/bin/bash

# Start the ZooKeeper service
bin/zookeeper-server-start.sh config/zookeeper.properties &
sleep 5
# Start the Kafka broker service
bin/kafka-server-start.sh config/server.properties
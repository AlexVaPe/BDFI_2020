# Kafka and Zookeeper

FROM java:openjdk-8-jre

# Install Kafka and Zookeeper
RUN cd /opt && \
 curl -OL https://archive.apache.org/dist/kafka/2.3.0/kafka_2.12-2.3.0.tgz && \
 tar -zxvf kafka_2.12-2.3.0.tgz && \
 rm kafka_2.12-2.3.0.tgz

WORKDIR /opt/kafka_2.12-2.3.0/
COPY start-kafka.sh /opt/kafka_2.12-2.3.0/
COPY create-topic.sh /opt/kafka_2.12-2.3.0/

# 2181 is zookeeper, 9092 is kafka
EXPOSE 2181 9092

# Create kafka topics
RUN chmod 755 create-topic.sh 
RUN chmod 755 start-kafka.sh

CMD ["./start-kafka.sh"]
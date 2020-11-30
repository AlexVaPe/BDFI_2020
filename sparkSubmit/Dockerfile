FROM bde2020/spark-base:2.4.0-hadoop2.7

ENV SPARK_MASTER_NAME spark-master
ENV SPARK_MASTER_PORT 7077
ENV SPARK_APPLICATION_JAR_LOCATION /app/practica_big_data_2019/flight_prediction/target/scala-2.11/flight_prediction_2.11-0.1.jar
ENV SPARK_APPLICATION_MAIN_CLASS es.upm.dit.ging.predictor.MakePrediction
ENV SPARK_APPLICATION_ARGS "--packages org.mongodb.spark:mongo-spark-connector_2.11:2.3.2,org.apache.spark:spark-sql-kafka-0-10_2.11:2.4.0"

RUN apk update && apk add --no-cache libc6-compat

COPY submit.sh .
RUN chmod 755 submit.sh

CMD ["/bin/bash", "/submit.sh"]
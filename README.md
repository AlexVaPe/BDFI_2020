<!-- # Instructions for building the images

## Kafka

1. Build the docker image within the directory /kafka:

```sh
$ docker build . -t kafka:2.3.0
```

2. Run docker image:

```sh
$ docker run -d --name kafka-broker kafka:2.3.0
``` -->

<!-- 3. Create kafka topic

```sh
$ docker exec -it kafka-broker ./create-topic.sh
``` -->

<!-- We export ports: 2181 for zookeeper and 9092 for kafka -->

<!-- ## MongoDB

1. Build the docker image within the directory /mongodb:

```sh
$ docker build . -t mongodb:4.4
``` -->

<!-- 2. Run docker image:

```sh
$ docker run --name mongod -d mongodb:4.4
``` -->

<!-- 3. Import data to mongo database

```sh
$ docker exec -it mongod ./import_distances.sh
``` -->

<!-- We expose the port: 27017 -->

<!-- ## Flask

1. Execute bash script within the directory /flask:

```sh
$ bash start.sh
``` -->

<!-- We expose the port: 5000 -->

## Spark Submit

1. Build the docker image within the directory /sparkSubmit:

```sh
$ docker build . -t sparksubmit:2.4.0-hadoop2.7
```

## Flask

1. Build the docker image within the directory /flask:

```sh
$ docker build . -t dockerflask
```

# Docker compose

## Composing all the images

1. Execute the following commando within de root directory of the project (where the file docker-compose.yml is located):

```sh
$ docker-compose up
```

<!-- 2. Create kafka topic

```sh
$ docker exec -it kafka-broker ./create-topic.sh
``` -->

3. Importing distances to mongodb container

In other terminal at the root of the project, execute the following:

```sh
./mongodb/import_distances.sh
```

<!-- 4. Submit the job

```sh
$ docker exec -it spark-submit ./submit.sh
``` -->


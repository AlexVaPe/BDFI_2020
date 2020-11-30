#!/bin/bash
app="dockerflask"
docker build -t ${app} .
docker run -d -p 5000:5000 \
  --name=${app} \
  -v $PWD/practica_big_data_2019/resources/web:/app ${app}

# Run the web app
docker exec -it dockerflask python3 predict_flask.py
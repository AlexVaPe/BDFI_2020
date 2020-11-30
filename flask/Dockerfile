FROM tiangolo/uwsgi-nginx-flask:python3.7

COPY . /opt/flask
RUN pip install --upgrade pip
RUN pip install -r /opt/flask/practica_big_data_2019/requirements.txt
ENV PROJECT_HOME /opt/flask/practica_big_data_2019
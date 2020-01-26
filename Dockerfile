From ubuntu:16.04

RUN apt-get update && apt-get install -y python python-pip

RUN pip install flask

COPY demo-python /opt/

ENTRYPOINT FLASK_APP=/opt/demo-python flask run --host=0.0.0.0 --port=8080

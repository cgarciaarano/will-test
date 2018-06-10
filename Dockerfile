FROM python:2.7-slim

WORKDIR /opt

ADD will-data/requirements.txt .

RUN apt-get update &&\
	apt-get install -y gcc &&\
	pip install will &&\
	pip install -r requirements.txt

ADD will-data/ .

CMD ./run_will.py
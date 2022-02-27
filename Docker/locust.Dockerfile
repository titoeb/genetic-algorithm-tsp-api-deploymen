FROM docker.io/locustio/locust:2.8.3
COPY src/locustfile.py  /home/locust/locustfile.py
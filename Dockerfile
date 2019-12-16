FROM python:3

RUN pip install locustio

EXPOSE 8089

WORKDIR /app
COPY . /app

ENTRYPOINT ["locust","--host=http://localhost"]


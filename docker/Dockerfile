FROM python:alpine

RUN mkdir /www

COPY ./www/* /www
COPY server.py /www

WORKDIR /www

CMD ["python", "server.py"]
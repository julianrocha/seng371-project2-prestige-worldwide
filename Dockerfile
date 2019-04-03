FROM python:3
MAINTAINER Prestige Worldwide

ENV PYTHONUNBUFFERED 1

COPY ./app/image_algorithm.py /app/image_algorithm.py

COPY ./requirements.txt /requirements.txt

RUN pip install -r /requirements.txt

CMD [ "python", "/app/image_algorithm.py"]

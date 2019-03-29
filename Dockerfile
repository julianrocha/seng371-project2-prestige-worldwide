FROM python:3
MAINTAINER Prestige Worldwide

ENV PYTHONUNBUFFERED 1

ADD app/samply.py /

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

CMD [ "python", "./sample.py"]

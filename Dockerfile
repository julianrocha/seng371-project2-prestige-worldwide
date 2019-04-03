FROM python:3
MAINTAINER Prestige Worldwide

ENV PYTHONUNBUFFERED 1

ADD app/sample.py /

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

CMD [ "cd", "app"]
CMD [ "python", "sample.py"]

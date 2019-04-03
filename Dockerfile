FROM python:3
MAINTAINER Prestige Worldwide

ENV PYTHONUNBUFFERED 1

COPY ./app/image_algorithm.py /app/image_algorithm.py

COPY ./requirements.txt /requirements.txt

RUN pip install -r /requirements.txt

RUN sudo apt-get build-dep python-imaging
RUN sudo apt-get install libjpeg62 libjpeg62-dev
RUN pip install PIL

CMD [ "python", "/app/image_algorithm.py"]

FROM python:3
MAINTAINER Prestige Worldwide

ENV PYTHONUNBUFFERED 1

COPY ./app/image_algorithm.py /app/image_algorithm.py
ADD ./app/china_image.jpg /app/china_image.jpg
ADD ./app/china_image_edited.jpg /app/china_image_edited.jpg

RUN pip install Pillow

CMD [ "python", "/app/image_algorithm.py"]

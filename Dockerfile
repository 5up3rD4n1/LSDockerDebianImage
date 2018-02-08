FROM python:3.6.4-jessie

MAINTAINER LabExperimental <librescan@gmail.com>

ADD ./ /tmp/ls

WORKDIR /tmp/ls

RUN apt-get update && \
    apt-get -y install lua5.2 liblua5.2 libusb-dev \
    libjpeg-dev libssl-dev libffi-dev libturbojpeg1 libturbojpeg1-dev libyaml-dev scantailor \
    make gcc git tesseract-ocr tesseract-ocr-spa ruby ruby-dev ruby-rmagick && \
    pip install cffi && \
    gem install iconv pdfbeads

WORKDIR /

CMD ["bash"]

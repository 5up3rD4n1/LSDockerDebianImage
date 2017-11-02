FROM debian:jessie

MAINTAINER LabExperimental <librescan@gmail.com>

ADD ./ /tmp/ls

WORKDIR /tmp/ls

RUN apt-get update && \
    apt-get -y install python3-pip lua5.2 liblua5.2 libusb-dev python3 python-dev \
    libjpeg-dev libssl-dev libffi-dev libturbojpeg1 libturbojpeg1-dev libyaml-dev scantailor \
    make gcc git tesseract-ocr tesseract-ocr-spa ruby ruby-dev ruby-rmagick && \
    pip3 install cffi && \
    gem install iconv pdfbeads && \
    sh misc/chdkptp.sh

WORKDIR /

CMD ["bash"]
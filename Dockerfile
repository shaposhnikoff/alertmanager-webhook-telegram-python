FROM alpine:3.7

LABEL maintainer="Carlos Augusto Malucelli <camalucelli@gmail.com>"

WORKDIR /alertmanager-webhook-telegram

ADD . /alertmanager-webhook-telegram

RUN apk add --update \
    make \
    git \
    g++ \
    tini \
    linux-headers \
    py3-pip \
    bash gcc python3-dev musl-dev libffi-dev openssl-dev unzip 

RUN rm -rf /var/cache/apk/* 
                
RUN pip3 install -r requirements.txt \
                && chmod +x run.sh

EXPOSE 9119

ENTRYPOINT ["./run.sh"]

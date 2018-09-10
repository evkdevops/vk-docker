FROM alpine

ENV PATH=/root/.local/bin/:$PATH
RUN apk add --update \
    python \
    python-dev \
    py-pip \
    openssh \
    && pip install --upgrade pip \
    && pip install  awscli --upgrade --user \
    && rm -rf /var/cache/apk/*

WORKDIR /

CMD ["aws","--version"]


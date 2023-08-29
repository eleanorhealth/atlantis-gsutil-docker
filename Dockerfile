FROM ghcr.io/runatlantis/atlantis:v0.25.0

RUN apk --no-cache --update add \
    python3 \
    py-pip \
  && pip install --upgrade pip \
  && apk add --virtual build-deps \
    gcc \
    libffi-dev \
    python3-dev \
    linux-headers \
    musl-dev \
    openssl-dev \
  && pip install gsutil \
  && apk del build-deps \
  && rm -rf /var/cache/apk/*

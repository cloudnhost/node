FROM node:22-bookworm-slim

WORKDIR /mnt/server

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        curl \
        wget \
        git \
        unzip \
        ca-certificates \
    && rm -rf /var/lib/apt/lists/*

USER node

CMD ["sh"]

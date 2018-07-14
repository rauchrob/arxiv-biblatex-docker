FROM debian:stretch
LABEL maintainer "Robert Rauch <mail@robertrauch.de>"

RUN apt-get update && apt-get install -y \
    texlive-full \
    biber \
    --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*

RUN apt-get update && apt-get install -y rubber && rm -rf /var/lib/apt/lists/*

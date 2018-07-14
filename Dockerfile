# TeX Live and biber
#
# Example usage:
# docker run -it -w '/mnt' -v `pwd`:/mnt texlive /bin/bash -c './compile.sh'
#
# Example use case:
# https://github.com/andygrunwald/FOM-LaTeX-Template

FROM debian:stretch
LABEL maintainer "Robert Rauch <mail@robertrauch.de>"

RUN apt-get update && apt-get install -y \
    texlive-full \
    biber \
    --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*

RUN apt-get update && apt-get install -y rubber && rm -rf /var/lib/apt/lists/*

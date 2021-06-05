FROM ubuntu:20.04

USER root

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y gettext librsvg2-bin mingw-w64 latexmk texlive-fonts-recommended texlive-latex-recommended texlive-latex-extra gcc-aarch64-linux-gnu wget
RUN wget https://raw.githubusercontent.com/adafruit/circuitpython/main/requirements-dev.txt && pip install -r requirements-dev.txt

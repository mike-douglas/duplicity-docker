FROM ubuntu:latest

RUN apt-get update \
    && apt install -y python3 python3-dev python3-venv gettext build-essential librsync-dev \
    && python3 -mvenv /env \
    && /env/bin/pip3 install duplicity b2sdk

ENTRYPOINT ["/env/bin/duplicity"]
FROM docker.io/postgres:latest

# Install pgjwt extension
# https://github.com/michelp/pgjwt#install
RUN apt-get update \
    && apt-get install \
      build-essential \
      git \
      postgresql-server-dev

RUN git clone https://github.com/michelp/pgjwt.git /src \
    && cd /src \
    && make install

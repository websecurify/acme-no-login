FROM ubuntu:16.04

# ---

RUN apt-get update

# ---

RUN apt-get install -y -q build-essential
RUN apt-get install -y -q mongodb
RUN apt-get install -y -q nodejs
RUN apt-get install -y -q npm

# ---

ADD package.json /tmp/package.json
RUN cd /tmp && npm install

# ---

ADD . /app
RUN rm -rf /app/node_modules
RUN cp -a /tmp/node_modules /app/
# ---

EXPOSE 49090

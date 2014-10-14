# Dockerfile

FROM ubuntu
RUN apt-get update && apt-get install -y curl

RUN curl http://nodejs.org/dist/v0.11.13/node-v0.11.13-linux-x64.tar.gz | \
    tar -C /usr/local -zxf - && \
    ln -s /usr/local/node-v0.11.13-linux-x64/bin/node /usr/local/bin/node && \
    ln -s /usr/local/node-v0.11.13-linux-x64/bin/npm /usr/local/bin/npm
RUN npm install -g mocha

ADD / /app
RUN cd /app && npm install request should # install third-party packages
RUN cd /app && mocha # make sure tests pass

COMMAND nodejs /app/app.js # how to run the app

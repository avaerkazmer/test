# Dockerfile
FROM ubuntu
RUN apt-get update && apt-get install nodejs && npm install -g mocha # install node + mocha
ADD / /app # add repository source
RUN cd /app && npm install request should # install third-party packages
RUN cd /app && mocha # make sure tests pass
COMMAND nodejs /app/app.js # how to run the app


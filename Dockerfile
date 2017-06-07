FROM resin/beaglebone-black-node:6

WORKDIR /usr/src/app

# package.json is copied separately to enable better docker build caching
COPY package.json /usr/src/app/package.json
RUN DEBIAN_FRONTEND=noninteractive JOBS=MAX npm install --unsafe-perm --loglevel error

COPY . /usr/src/app

CMD [ "npm", "start" ]

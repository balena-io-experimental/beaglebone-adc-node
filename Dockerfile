FROM resin/beaglebone-node:0.10.41-20160218

# Use apt-get to install any dependencies
RUN apt-get update && apt-get install -yq \
    cowsay && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

WORKDIR /usr/src/app

# package.json is copied separately to enable better docker build caching
COPY package.json /usr/src/app/package.json
RUN DEBIAN_FRONTEND=noninteractive JOBS=MAX npm install --unsafe-perm

COPY . /usr/src/app
CMD [ "npm", "start" ]

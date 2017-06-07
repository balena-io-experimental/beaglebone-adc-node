FROM resin/beaglebone-black-node:6

WORKDIR /usr/src/app

# package.json is copied separately to enable better docker build caching
COPY package.json package.json
RUN DEBIAN_FRONTEND=noninteractive JOBS=MAX npm install --unsafe-perm

# Copy the rest of our source code into the docker container context
COPY . .

# Launch our script when the container starts using npm
CMD [ "npm", "start" ]

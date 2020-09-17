# use a node base image
FROM node:latest

# set maintainer
LABEL maintainer "test@gmail.com"

WORKDIR /usr/src/app

COPY main.js .
COPY test.js .
COPY package.json .
COPY package-lock.json .

RUN ["npm", "install"]
CMD ["node", "./main.js"]



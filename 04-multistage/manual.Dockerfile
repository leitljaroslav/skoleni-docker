FROM node:16 AS build
WORKDIR /usr/src/app
COPY my-app ./
RUN npm install
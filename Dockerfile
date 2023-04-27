FROM node:8-alpine
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY package.json /usr/src/app
RUN npm install
RUN npm install express
COPY . /usr/src/app
EXPOSE 7780
CMD [ "node", "server.js" ]

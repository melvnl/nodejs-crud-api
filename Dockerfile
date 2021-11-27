FROM node:16-alpine

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY package*.json ./   

COPY . /usr/src/app

RUN npm install

EXPOSE 3000

CMD [ "node", "app.js" ]
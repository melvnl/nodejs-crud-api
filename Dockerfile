FROM node:16-alpine

WORKDIR /home/node/app  

COPY package*.json ./   

RUN npm install

EXPOSE 8080

CMD [ "node", "app.js" ]